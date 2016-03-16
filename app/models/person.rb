class Person < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  before_save :sanitize_email
  before_save :generate_domain_name

  def self.all_email_domains
    all_email_domains = self.all.map{|person| person.domain_name}.uniq.sort
  end

  def self.find_all_with_email_domain(domain)
    if domain
      domain == "All" ? self.all : self.where(domain_name: domain)
    else
      []
    end
  end

  # Method to run before a model is saved to generate a domain name
  def generate_domain_name
    self.domain_name = self.email.split("@").last
  end

  # Method to run before a model is saved to control for case sensitivity
  def sanitize_email
    self.email = self.email.downcase
  end
end
