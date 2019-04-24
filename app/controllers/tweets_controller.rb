class TweetsController < ApplicationController
  def index
    @tweets = Tweet.includes(:user).page(params[:page]).per(3).order("created_at DESC")
  end

  def new
  end

  def create
    Tweet.create(name: tweet_params[:name], tweet: tweet_params[:text], user_id: current_user.id)
  end

  private
  def tweet_params
  params.permit(:name, :text)
  end
end
