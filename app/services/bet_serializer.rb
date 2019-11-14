class BetSerializer < ActiveModel::Serializer
    # include FastJsonapi::ObjectSerializer

    attributes :user_id, :result, :amount, :created_at
    belongs_to :user
  end