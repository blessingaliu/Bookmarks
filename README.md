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
