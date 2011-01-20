require 'ipaddr'
class Change < ActiveRecord::Base
    attr_accessible :person_id, :ip, :points
    belongs_to :person
    
    def nice_ip
      IPAddr.new(ip,Socket::AF_INET).to_s
    end
end
