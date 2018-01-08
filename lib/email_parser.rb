# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  attr_accessor :email

  @@emails = []

  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails.split(/\,?\s/).each do |email|
      emails = []
      if !(emails.include?(email))
        emails << email
        binding.pry
      end
    end
    emails
  end

end
