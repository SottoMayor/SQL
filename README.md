# Database

## 1. Connectivity:
### a) Local: 
   - When working alone or in tests where database failure is expected.
   - It needs to be configured from scratch.

### b) Remote:
   - When working in a team and needing the data to be synchronized.
   - Just connect and use.

### c) Observations:
   - Ideally, both options (local and remote) should be available.
   - Credentials must be connected with the code.

## 2. Databases in Different Environments:
### a) Environments:
   - Test
   - Dev
   - Prod: should be the most protected, with constant backups.

### b) Environment Variables:
   - Database association with the environment being used.
   - Avoid passing variables via command line or through the code editor. Use configuration files (`.env`, `.yml`, or `.json`).

## 3. Database Types:

Although we are working with SQL in this project, there are other types of databases.

### a) Key-Value - Redis:
   - Very fast.
   - Limited storage, not suitable as a primary database.
   - Good for: cache, messaging, Kubernetes cluster configuration.

### b) Wide Column - Cassandra:
   - Scalable.
   - Data normalization is not possible.
   - Limited compared to SQL, not suitable as a primary database.
   - Schema-less .
   - Good for: time series, historical records, IoT records.

### c) Document - MongoDB:
   - Fast for reading, can be used as the main database. Used for handling semi-structured data or where schema flexibility is an advantage.
   - Not so good for updates or data writing. Avoid using for highly interconnected data (like graph structures).
   - Schema-less and data normalization is not possible.
   - Good for: applications or CMS.

### d) Relational - Postgres:
   - One of the most popular databases.
   - Structured (has schema) and can be normalized.
   - SQL (Structured Query Language) and ACID (Atomicity, Consistency, Isolation, Durability).
   - Can be hard to scale and handle unstructured data.

### e) Graph - Neo4J:
   - Entities directly connected.
   - Easy to query.
   - Good for: social networks or solutions involving recommendations.

### f) Search - ElasticSearch:
   - Ideal for searching through massive data sets. Quickly searches text.
   - Similar to document-type databases.
   - Creates indexes based on tokens.
