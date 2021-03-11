class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  

  def index
    @tweets = Tweet.all.order("created_at DESC")
  end

  def show
  end

  def new

  end

  def edit
  end

  def create
  end

  def update
    @tweet = Tweet.new
  end

  def destroy
  end

  private
    #
    def set_article
      @tweet = Twwet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweet_params
      params.require(:tweet).permit(:tweeet)
    end

end
