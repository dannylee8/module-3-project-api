class Api::V1::CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: comments
    end

    def create
        comment = Comment.new(name: params[:name], comment: params[:comment], user_id: params[:user_id])
        if comment.save()
            render json: comment
        end
    end
end
