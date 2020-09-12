class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: {all_users: users}
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

    def update
        user = User.find_by(id: params[:id])
        user.update(balance: params[:balance], total_profit: params[:totalProfit])
        user.save()
        render json: {user: user}
    end
end
<<<<<<< HEAD

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
=======
>>>>>>> 1bc4c7f68763978016367c3c3f61ae68b5322f7f
