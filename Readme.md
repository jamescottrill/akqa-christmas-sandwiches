# AKQA Christmas Sandwiches

For the last two years, the London AKQA office has informally rated the Christmas lunch offerings of the various eateries in the area surrounding the office. The results of these were originally stored in a Google Sheet, however as the rating system developed, a database seemed a more appropriate solution, and Shiny offered a perfect way both for users to enter data and to visualise the results.

## Setup
The code included in this repo should be sufficient to run this app on your own shiny server. A demo SQL database has been included for demonstration purposes. To load this, you'll first need to create a new database in your mysql server:
```sql
CREATE DATABASE sandwiches;
```
Then import the provided sql file imto the database
```bash
mysql -u root -p sandwiches < database.sql
```
You can also create a new user to access the database. Although you can use root, it's best practice to have a dedicated user.
```sql
CREATE USER 'shiny'@'localhost' IDENTIFIED BY 'YOUR_PASSWORD';
GRANT SELECT, INSERT, DELETE, UPDATE ON sandwiches.* TO 'shiny'@'localhost';
FLUSH PRIVILIGES;
````
You will also need to add an .Renviron file to your local environment with your username and password. A template this is found in the repo, just change the username and password settings to match you environment. Depending on your server setup, you might also need to update the various database connections to add:
```r
host='127.0.0.1'
```

Then, either symlink the or copy your folder into your shiny server.

An example of this running is available on [this shiny server](https://r.jamescottrill.co.uk/james/akqa-christmas-sandwiches/).



