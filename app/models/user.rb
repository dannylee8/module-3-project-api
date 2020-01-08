class User < ApplicationRecord
    has_many :bets 
    has_many :comments

    def self.get_highest_earner
        self.all.max_by { |user| user.total_profit }
    end
    
end
