module ActiveRecordExtensions
  module NamedScopes
    def self.included(base)
      base.instance_eval do
        include ClassMethods
      end
    end
    
    module ClassMethods
      def named_scope_to_boolean(scope_names)
        scope_names.each do |scope_name|
          unless scopes.include?{|a| a[0] == scope_name.to_sym}
            raise "'#{scope_name}' is not a defined named_scope"
          end
          
          proxy_options = send(scope_name).proxy_options
          
          define_method "#{scope_name}?" do
            
          end
        end
      end
    end
  end
end

ActiveRecord::Base.send(:include, ActiveRecordExtensions::NamedScopes)