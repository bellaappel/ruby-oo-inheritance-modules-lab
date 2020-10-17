module Findable

    module ClassMethods
        def find_by_name(name)
            self.class_variable_get(:@@all).detect{|a| a.name == name}
        end
    end

end