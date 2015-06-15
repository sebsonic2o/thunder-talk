# thunder-talk

A simple experiment with background processing...

This repository includes the following:

1. A simple Rails web application that sends an email to the user upon signup without any background process

2. The same Rails web application with a background process to perform the email delivery

Background processing is implemented as follows:

* Leverage the Sidekiq gem for background processing
  * Add it to the Gemfile, and run 'bundle exec'
  * Drop 'deliver', and add 'delay' for the email notification in the users controller

* Add Redis to run the background process delegated by Sidekiq
  * Install it with 'brew install redis'
  * Start it with 'redis-server'
  * Monitor it with 'redis-cli monitor'

Here we have a side by side network comparison of the app running with and without the background process:

![Network Comparison](./SideBySideComparison.png)
