# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
    def initialize (string)
        @email = string
    end
    def parse
            new_email = @email.split(/[[,\s][\s]]/)
            answer = new_email.filter do |str|
                if str.chars.length < 3
                    nil
                else
                    str
                end
                return answer
            end
        answer = holy_moly.uniq
        answer
    end
end
r1 = EmailAddressParser.new("avi@test.com, avi@test.com arel@test")
binding.pry