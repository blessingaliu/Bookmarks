# Bookmarks

## User story 

As a user 
So that I can visit my regular web pages faster
I’d like to be shown a list of my bookmarks


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


## Postgres setup: creating Database

postgres=# CREATE DATABASE bookmark_manager;
CREATE DATABASE
postgres=# \l
                                List of databases
       Name       |  Owner   | Encoding | Collate | Ctype |   Access privileges   
------------------+----------+----------+---------+-------+-----------------------
 blessingaliu     | blessing | UTF8     | C       | C     | 
 bookmark_manager | blessing | UTF8     | C       | C     | 
 postgres         | blessing | UTF8     | C       | C     | 
 template0        | blessing | UTF8     | C       | C     | =c/blessing          +
                  |          |          |         |       | blessing=CTc/blessing
 template1        | blessing | UTF8     | C       | C     | =c/blessing          +
                  |          |          |         |       | blessing=CTc/blessing
(5 rows)


## Creating Table 

bookmark_manager=# CREATE TABLE bookmarks (
        id serial PRIMARY KEY,
        url VARCHAR ( 60 )    
);       
CREATE TABLE
bookmark_manager=# \dt
           List of relations
 Schema |   Name    | Type  |  Owner   
--------+-----------+-------+----------
 public | bookmarks | table | blessing
(1 row)

