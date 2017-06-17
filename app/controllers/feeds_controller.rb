class FeedsController < ApplicationController
  def index
    @feed = Feed.new
    @feeds = Feed.includes(:user).order('created_at DESC')
  end

  def create
    @feed = Feed.create(feed_params.merge(user: current_user))
    if @feed.valid?
      redirect_to feeds_path
    else
      @feeds = Feed.includes(:user).order('created_at DESC')
      render 'index'
    end
  end

  private
  def feed_params
    params.require(:feed).permit(:body)
  end
end
