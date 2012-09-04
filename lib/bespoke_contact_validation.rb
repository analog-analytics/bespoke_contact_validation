require "bespoke_contact_validation/version"

module Bespoke
  module Contact
    TITLES = %w(Mr Mrs Miss Ms Dr Sir Lord Lady Dame)

    module Validation
      def self.included(base)
        base.class_eval do
          validates_inclusion_of :title, :in => TITLES
        end
      end
    end
  end
end
