Please see 'Database_and_Model_design.rb' file.

## Approach

We have separate tables for Providers and Clients, each with their own attributes. To connect providers and clients in a many-to-many relationship, we use the ClientProvider join table. For clients' journal entries, we create the JournalEntry table. 

### Pros of the Approach

The pros for this approach is thelexibility since allows for flexible relationships between providers and clients. Clients can have multiple providers, and providers can have multiple clients. Another added benefit is easy querying with the defined associations, it is straightforward to perform queries such as finding all clients for a particular provider or all providers for a particular client.

### Cons of the Approach

As for the cons one could be the increased complexity since it uses a join table that adds some complexity to the database design. It requires managing the relationships and ensuring data integrity. And a related con is it will require more effort to maintain and update, especially if changes are made to the relationships between providers, clients, or plans.
