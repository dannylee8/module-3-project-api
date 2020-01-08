class Api::V1::BetsController < ApplicationController
    def index
        bets = Bet.all
        render json: {bets: bets}
    end

    def create
        bet = Bet.create(amount: params[:amount], result: params[:result], user_id: params[:user_id])
        render json: {bet: bet}
    end
end
