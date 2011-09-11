# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.tcinet.ru/ru/property_nameservers_with_ip.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.tcinet.ru.rb'

describe Whois::Record::Parser::WhoisTcinetRu, "property_nameservers_with_ip.expected" do

  before(:each) do
    file = fixture("responses", "whois.tcinet.ru/ru/property_nameservers_with_ip.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(3).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].should == _nameserver.new(:name => "ns.masterhost.ru", :ipv4 => "217.16.20.30")
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].should == _nameserver.new(:name => "ns1.masterhost.ru", :ipv4 => "217.16.16.30")
      @parser.nameservers[2].should be_a(_nameserver)
      @parser.nameservers[2].should == _nameserver.new(:name => "ns2.masterhost.ru", :ipv4 => "217.16.22.30")
    end
  end
end
