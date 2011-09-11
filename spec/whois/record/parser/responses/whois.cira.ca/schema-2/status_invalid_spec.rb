# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.cira.ca/schema-2/status_invalid.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.cira.ca.rb'

describe Whois::Record::Parser::WhoisCiraCa, "status_invalid.expected" do

  before(:each) do
    file = fixture("responses", "whois.cira.ca/schema-2/status_invalid.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#status" do
    it do
      @parser.status.should == :invalid
    end
  end
  describe "#valid?" do
    it do
      @parser.valid?.should == false
    end
  end
  describe "#invalid?" do
    it do
      @parser.invalid?.should == true
    end
  end
end
