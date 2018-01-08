# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  attr_accessor :email

  @@emails = []

  def initialize(email)
    @email = email
  end

  def self.all
    @@emails
  end

  def parse
    @email.split(/\,?\s/).each do |email|
      if !(@@emails.include?(email))
        @@emails << email
      end
    end
  end

end
