# Bookmarks

## User story 

As a user 
So that I can visit my regular web pages faster
I’d like to be shown a list of my bookmarks

As a user
So that I can have a larger option of bookmarks to choose from
I'd like to be able to add to my list of bookmarks

As a user
So that I can clean up my bookmark options
I'd like to be able to delete bookmarks from my list

As a user 
So that I have freedom to change my mind
I'd like to be able to update my bookmark list

## Domain model diagram 

alias user="User"
alias client="client(Browser)"
alias controller="Controller(app.rb)"
alias model="Model(Bookmark class)"
alias view="View(erb file)"

user->client: "clicks on browser /bookmark"
client->controller: "HTTP get request method"
controller->model: "Requests the Bookmark.all"
model->controller: "Sends method back to controller to store as variables(hash/array)"
controller->view: "Pass variable to erb and Sets the bookmark as html"
view->client: "The browser now has the list of bookmarks"
client-> user: "User can see bookmarkers on webpage"

[Imgur](https://i.imgur.com/dp20OZG.jpg)

<img src="https://i.imgur.com/dp20OZG.jpg"/>


### To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.


### To run the Bookmark Manager app:

```
rackup -p 3000
```

To view bookmarks, navigate to `localhost:3000/bookmarks`.

### To run tests:
run db/migrations/01_create_bookmarks_table.sql

