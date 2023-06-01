class Provider < ActiveRecord::Base
    has_many :client_providers
    has_many :clients, through: :client_providers
  
    validates :name, presence: true
    validates :email, presence: true

    
end
 
class Client < ActiveRecord::Base
    has_many :client_providers
    has_many :providers, through: :client_providers
    has_many :journal_entries, dependent: :destroy
  
    validates :name, presence: true
    validates :email, presence: true
end

# ClientProvider (Join Table): This table is used to store the many-to-many relationship between clients and providers. It also stores the plan that a client has with a provider.
class ClientProvider < ActiveRecord::Base
    belongs_to :client
    belongs_to :provider
    has_one :plan
  
    validates :client_id, presence: true
    validates :provider_id, presence: true
end

class Plan < ActiveRecord::Base
    belongs_to :client_provider
  
    validates :name, presence: true
end

class JournalEntry < ActiveRecord::Base
    belongs_to :client
  
    validates :content, presence: true
    validates :posted_date, presence: true
end

# For the corresponding migrations:
class CreateClientProviders < ActiveRecord::Migration[7.0]
    def change
      create_table :client_providers do |t|
        t.references :client, null: false, foreign_key: true
        t.references :provider, null: false, foreign_key: true
  
        t.timestamps
      end
      add_index :client_providers_indexes, :client_id
      add_index :client_providers_indexes, :provider_id
    end
  end


class CreateClients < ActiveRecord::Migration[7.0]
    def change
      create_table :clients do |t|
        t.string :name
        t.string :email
  
        t.timestamps
      end
      add_index :clients_indexes, :name
      add_index :clients_indexes, :email
    end
end

class CreateClientProviders < ActiveRecord::Migration[7.0]
    def change
      create_table :client_providers do |t|
        t.references :client, null: false, foreign_key: true
        t.references :provider, null: false, foreign_key: true
  
        t.timestamps
      end
      add_index :client_providers_indexes, :client_id
      add_index :client_providers_indexes, :provider_id
    end
end

class CreatePlans < ActiveRecord::Migration[7.0]
    def change
      create_table :plans do |t|
        t.string :name
        t.references :client_provider, null: false, foreign_key: true
  
        t.timestamps
      end
    end
end

class CreateJournalEntries < ActiveRecord::Migration[7.0]
    def change
      create_table :journal_entries do |t|
        t.text :content
        t.date :posted_date
        t.references :client, null: false, foreign_key: true
  
        t.timestamps
      end
      add_index :journal_entries_indexes, :client_id
      add_index :journal_entries_indexes, :created_at
    end
end
  


### Querying the database

# 1. Find all clients for a particular provider:
provider = Provider.find_by(name: 'Your Provider Name')
clients = provider.clients

# 2. Find all providers for a particular client:
client = Client.find_by(name: 'Your Client Name')
providers = client.providers

# 3. Find all of a particular client's journal entries, sorted by date posted:
client = Client.find_by(name: 'Your Client Name')
journal_entries = client.journal_entries.order(:posted_date)

# 4. Find all of the journal entries of all clients of a particular provider, sorted by date posted:
provider = Provider.find_by(name: 'Your Provider Name')
journal_entries = provider.clients.joins(:journal_entries).order(journal_entries: :posted_date)

