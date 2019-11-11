class UserSerializer 
  def initialize(user)
    @user = user
  end

  def to_serialized_json
    @user.to_json(:include => {
      :bets => {:only => [:result, :amount]},
      :comments => {:only => [:comment, :user_id ]}
    }, :except => [:updated_at])
  end
end


