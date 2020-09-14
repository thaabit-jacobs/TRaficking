# Spark Java Postgres setup

## Fork & clone this app

Fork and clone this app locally.

Run the app in IntelliJ after running this command:

```
mvn clean install
```

### Database setup

Setup a local database using the instructions below.


Create  the database like this:

```
createdb spark_hbs_jdbi;
```

Or like this:

```
sudo -u postgres createdb spark_hbs_jdbi;
```

Ensure your local user is a postgres user and have access to the database.

Create a postgres user for your local user.

```
sudo -u postgres createuser coder -P;
```

Ensure this user has access to the database you are using the postgres user:


```
sudo -u postgres psql;
```

Grant access like this:

```
grant all privileges on database spark_hbs_jdbi to coder;
```

Connect to the database like this:

```
psql spark_hbs_jdbi;
```

Create the users table like this:

```
CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY NOT NULL,
  first_name TEXT,
  last_name TEXT,
  email TEXT
);
```



## Heroku deployment

Deploy your application using Heroku.

Create a Heroku app for your web application

```
heroku create
```

Rename your Heroku application

```
heroku apps:rename <your-app-name-here>
```

Deploy your application to Heroku using this command:

```
mvn clean heroku:deploy
```

> **Note:**  ensure you setup the Heroku database as per the instructions below.

## Database setup

Create the database on Heroku using this command:

```
heroku addons:create heroku-postgresql:hobby-dev
```

Connect to the Heroku database using this command:

```
heroku pg:psql
```

Run the [database script](./sql/database_script) on the Heroku database.