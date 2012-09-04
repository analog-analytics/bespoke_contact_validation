require 'minitest/autorun'
require 'mocha'
require File.expand_path('../lib/bespoke_contact_validation', File.dirname(__FILE__))

module Bespoke
  module Contact
    class ValidationTest < MiniTest::Unit::TestCase
      def test_validates_bespoke_contact_title
        model_class = Class.new
        model_class.expects(:validates_inclusion_of).with(:title, has_entry(:in, Bespoke::Contact::TITLES))
        model_class.send(:include, Validation)
      end
    end
  end
end