class CommentSerializer < ActiveModel::Serializer
    # include FastJsonapi::ObjectSerializer

    attributes :name, :comment, :user_id, :created_at
    belongs_to :user
  end