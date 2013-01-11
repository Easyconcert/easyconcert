# Sinatra boilerplate

Built directly on top of a fork from [elasticdog/hello-sinatra](https://github.com/elasticdog/hello-sinatra).

Sinatra-boilerplate is a barebones, classic-style [Sinatra](http://www.sinatrarb.com/) application that utilizes Ruby 1.9.x, [Bundler](http://gembundler.com/) for managing dependencies, Markdown and Erb for templates, [SASS](http://compass-style.org/) for CSS, Coffeescript for JavaScript (both served through an asset pipeline) and [MiniTest::Spec](http://bfts.rubyforge.org/minitest/) coupled with Webrat for tests.

It is meant to be a blank slate that will give you a head start when developing your own application with this specific technology stack.

Getting Started
---------------

Open up your favorite terminal emulator and...

    $ git clone git://github.com/muellerj/sinatra-boilerplate.git
    $ cd sinatra-boilerplate/
    $ bundle install
    $ ruby myapp.rb

That will launch the app using Thin at [http://localhost.com:9292/](), so open up a browser and bask in all the "Hello world!" glory. You can press `Ctrl-C` in the terminal to shut things down and get back to the command prompt.

To run the included tests:

    $ rake test

Getting Fancy
-------------

Assuming you want add a bit more functionality than "Hello world!", here's how things are organized...

    sinatra-boilerplate/
    ├── spec/
    │   ├── integration/
    |   |   └── hello_world_spec.rb
    │   ├── support/
    |   |   └── custom_matchers.rb
    │   └── spec_helper.rb
    ├── views/
    │   ├── layout/
    │   │   └── application.erb
    │   ├── welcome.md
    │   └── not_found.md
    ├── lib/
    │   ├── config.rb
    │   └── helpers.rb
    ├── assets/
    │   ├── javascripts
    |   │   └── application.js.coffee
    │   └── stylesheets
    |       └── application.css.scss
    ├── .gitignore
    ├── .powenv
    ├── Gemfile
    ├── Gemfile.lock
    ├── Guardfile
    ├── LICENSE
    ├── README.md
    ├── Rakefile
    ├── config.ru
    └── myapp.rb

Make your application changes in `myapp.rb`, template changes under the `views/` directory, stylesheet changes under `assets/stylesheets/`, and test changes under the `spec/` directory. Images and other static files go into the `public/` directory.

Automation
----------

When developing a new Sinatra app, you don't want to be stuck manually reloading WEBrick and running `rake test` every time you make a change. Luckily, there are ways to automate reloading the appropriate services whenever you save your app.

To automatically reload your development server, there are a couple of possibilities...if you're on OS X, the [Pow](http://pow.cx/) project makes this process incredibly straight forward (more so when adding the [`powder` gem](https://github.com/Rodreegez/powder) on top as a command-line wrapper); or you can use the [`shotgun` gem](https://github.com/rtomayko/shotgun) to fork and reload the server on every request.

    $ shotgun config.ru

To automatically run your tests, the [Guard](https://github.com/guard/guard) gem is used. Customize the `Guardfile` to your needs and then run

    $ guard

to automatically run your tests. The test output can be customised in `spec/spec_helper.rb`.

Contribute
----------

Have ideas on how to make this starting point for new apps better? Great! Just [fork the project](http://help.github.com/fork-a-repo/), create a new branch, make your changes, push them back, and [send a pull request](http://help.github.com/send-pull-requests/).

License
-------

Copyright &copy; 2011, Aaron Bull Schaefer. Hello Sinatra is distributed under the [MIT License](http://www.opensource.org/licenses/mit-license.php).
