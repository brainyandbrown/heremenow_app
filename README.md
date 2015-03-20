[![Build Status](https://travis-ci.org/brainyandbrown/heremenow_app.svg?branch=master)](https://travis-ci.org/brainyandbrown/heremenow_app)

<a href='http://heremenow.herokuapp.com'>HereMeNow</a> is an app made for the die-hard musical fan. Visiting a different city? With "HereMeNow", you can plug in your location (a mapping API) and receive an awesome playlist (via Spotify) based on local artists! Don't want to give your location (or mapping services are unavailable in your area)? Never fear! "HereMeNow" will auto-generate a globe-trotting mix of international pop!

* System dependencies: <a href='http://heremenow.herokuapp.com'>HereMeNow</a> is based on Rails v.4.2.0 framework. It utilizes the EchoNest API, which parses additional artists' data from the Spotify API. HereMeNow also uses the following systems for operation:
  *   

* Configuration: <a href='http://heremenow.herokuapp.com'>HereMeNow</a> uses Rack-based servers to start the application.

* Database creation: A PostgreSQL database was established for <a href='http://heremenow.herokuapp.com'>HereMeNow</a> to capture users' email addresses. These will be used in the future to survey the user's feedback on the app.

* Database initialization: The PostgreSQL database was create using standard Rails <tt>seeds.rb</tt> and <tt>schema.rb</tt> migration files.

* How to run the test suite: Currently, <a href='http://heremenow.herokuapp.com'>HereMeNow</a> is being tested via Travis CI. In the near future, local testing will occur via Jasmine or Cucumber.

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions: <a href='http://heremenow.herokuapp.com'>HereMeNow</a> is currently deployed to a <a href='http://www.heroku.com'>Heroku</a> host server. The app was renamed to the custom domain of <a href='http://heremenow.herokuapp.com'>HereMeNow</a>.

* App planning done via <a href='https://trello.com/b/wUZqeg7T/heremenow-app'>Trello</a>.

