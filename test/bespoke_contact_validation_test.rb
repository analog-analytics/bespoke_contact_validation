require 'minitest/autorun'
require 'mocha'
require File.expand_path('../lib/bespoke_contact_validation', File.dirname(__FILE__))

module Bespoke
  module Contact
    class ValidationTest < MiniTest::Unit::TestCase

      def test_validate_as_bespoke_contact_title_rails2
        model_class = Class.new
        model_class.send(:include, Validation)
        model_class.expects(:validates_inclusion_of).with(:contact_title, has_entries({in: Bespoke::Contact::TITLES, if: :some_method}))
        model_class.send(:validate_as_bespoke_contact_title, :contact_title, { if: :some_method })
      end

      def test_validate_as_bespoke_contact_title_rails3
        model_class = Class.new
        model_class.send(:include, Validation)
        options = {inclusion: {in: TITLES, if: :some_method}}
        model_class.expects(:validates).with(:contact_title, options)
        model_class.send(:validate_as_bespoke_contact_title, :contact_title, {if: :some_method})
      end
    end
  end
end