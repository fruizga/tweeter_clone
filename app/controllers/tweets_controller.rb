class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  

  def index
    @tweets = Tweet.all.order("created_at DESC")
  end

  def show
    
  end

  def new
    @tweet = Tweet.new
  end

  def edit
  end

  def create
    @tweet = Tweet.new(tweet_params)
    
    if @tweet.save
      flash[:notice] = "Tweet was created successfully."
      redirect_to tweets_path 
    else
      render 'new'
    end
  end

  def update
    if @tweet.update(tweet_params)
      flash[:notice] = "Tweet was updated successfully."
      redirect_to tweets_path
    else
      render 'edit'
    end
  end

  def destroy
    
    @tweet.destroy
    redirect_to atweets_path
  end

  private
    
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweet_params
      params.require(:tweet).permit(:tweeet)
    end

end
