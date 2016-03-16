class PeopleController < ApplicationController
  def index
     # remember the domain name selected
     @email_domain = params[:email_domain] || 'All'
     # get all people based on domain query
     @people = Person.find_all_with_email_domain(@email_domain)
     # get all the available domain names
     @email_domains = @people.all_email_domains
  end
end
