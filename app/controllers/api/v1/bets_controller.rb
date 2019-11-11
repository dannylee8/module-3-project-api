class Api::V1::BetsController < ApplicationController
    def index
        bets = Bet.all
        render json: bets
    end
end
