class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: UserSerializer.new(users).to_serialized_json
    end

    def show
        user = User.find_by(id: params[:id])
        render json: UserSerializer.new(user).to_serialized_json
    end

    def create
        if User.find_by(name: params[:name])
            user = User.find_by(name: params[:name])
            render json: UserSerializer.new(user).to_serialized_json
        else
            user = User.create(name: params[:name])
            render json: UserSerializer.new(user).to_serialized_json
        end
    end
end

# fetch('http://localhost:3000/api/v1/users', {
# 	method: 'POST',
# 	headers: {
#         'content-type': 'application/json',
#         'accept': 'application/json'
#     },
#     body: JSON.stringify({
#         name: 'Garfield'
#     })
# })