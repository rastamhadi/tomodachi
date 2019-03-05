# Tomodachi

This is a barebones Rails application with a Neo4j graph database backend.

## Prerequisites

- rbenv
- bundler

## Installation

1. Install Java 8.

   ```
   $ brew tap homebrew/cask-versions
   $ brew cask install java8
   ```

2. Install Neo4j.

   ```
   $ bundle exec rake neo4j:install[community-3.5.3]
   ```

3. Start the Neo4j server.

   ```
   $ bundle exec rake neo4j:start
   ```

4. Run the migrations.

   ```
   $ bundle exec rails neo4j:migrate
   ```

## Usage

1. Start the Rails server.

   ```
   $ bin/rails server
   ```

2. Create friends and friendships in the [CRUD interface](http://localhost:3000/users).

   ![CRUD Interface](https://user-images.githubusercontent.com/1012322/53785597-66751100-3f5c-11e9-916d-59ea4cea2944.png)

3. View the friendship graph in the [Neo4j Browser](http://localhost:7474/browser/).

   ![Friendship Graph](https://user-images.githubusercontent.com/1012322/53785552-2f066480-3f5c-11e9-9838-28fada24c424.png)
