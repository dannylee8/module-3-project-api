class Api::V1::CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: {comments: comments}
    end

    def create
        comment = Comment.create(name: params[:name], comment: params[:comment], user_id: params[:user_id])
        render json: {comment: comment}
    end
end
