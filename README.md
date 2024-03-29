# Ponder Heroku Rails Example
This is a very simple example application for using the [Ponder](https://github.com/tbuehlmann/ponder "Ponder") IRC Bot Framework with Rails 3.1 and an [EventMachine](https://github.com/eventmachine/eventmachine "EventMachine") based webserver. Since [Heroku](http://www.heroku.com/ "Heroku") is using EM for serving applications, it will work there, too.

## Installation
Cloning the repository and installing the bundled gems:

    $ git clone git@github.com:tbuehlmann/ponder_heroku_rails_example.git
    $ cd ponder_heroku_rails_example/
    $ bundle install

## Usage
Start the application with an EM based webserver like [Thin](http://code.macournoyer.com/thin/ "Thin"):

    $ thin start

The actual Ponder code lies in config/initializers/ponder.rb and represents a simple echo bot. On connect, it will join #ponder on Freenode and parrot all messages coming in.

Remember that Heroku will set applications asleep after some idle time. You will want to upgrade your plan or use some kind of pinging service to keep it awake.

