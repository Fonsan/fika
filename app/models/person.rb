class Person < ActiveRecord::Base
    attr_accessible :name
    has_many :changes
    
    def points
      changes.map(&:points).sum
    end
end
