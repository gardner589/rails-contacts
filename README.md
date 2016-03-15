# Rails fat controllers

This app demonstrates the pitfalls of implementing fat controllers.

## Goal

* Move code that belongs in models out of the controller.


## How you'll get there

* You'll get the model spec examples to pass
* Use `ActiveRecord` methods to accomplish this.
* You'll also need to create a couple of migrations! :shipit:

## Before you start

### After you've forked and cloned this repo

* Run `bundle install` and `rake db:migrate` at the terminal
* Run `rake db:seed` at the terminal to populate the db with seed data
	* Take a look at the file `db/seeds.rb` to see how this actually works

## Get the specs to pass for

### Person.all_email_domains

* **Note: You'll want to do this first**

* **Pro-tip**: You'll need to create a migration that will add the `domain_name`field as a `string` to the `people` table

* Populate all instances of `people` with their appropriate `domain_names`
	- **Hint**: What property of `people` could you grab data from?
	- **Hint**: How could you modify that data to only capture the appropriate `domain_name`?

* To get a quick refresher on how to generate a migration, check this out:
[http://guides.rubyonrails.org/migrations.html#creating-a-standalone-migration](http://guides.rubyonrails.org/migrations.html#creating-a-standalone-migration)

* You'll want to select distinct domain names :) Look up how to do it here: [http://guides.rubyonrails.org/active_record_querying.html#selecting-specific-fields](http://guides.rubyonrails.org/active_record_querying.html#selecting-specific-fields)

### Person.find_all_with_email_domain

## Resources used

Thanks [http://www.briandunning.com/sample-data/](http://www.briandunning.com/sample-data/) for the sample data!
