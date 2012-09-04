require "bespoke_contact_validation/version"

module Bespoke
  module Contact
    TITLES = %w(Mr Mrs Miss Ms Dr Sir Lord Lady Dame)

    module Validation
      def self.included(base)
        base.send(:extend, ClassMethods)
      end

      module ClassMethods
        def validate_as_bespoke_contact_title(attribute)
          validates_inclusion_of attribute, :in => TITLES
        end
      end
    end
  end
end
