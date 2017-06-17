class AwesomesController < ApplicationController
  def create
    feed = Feed.find(awesome_params[:feed_id])
    current_user.awesomes.create(feed: feed)
    redirect_to feeds_path
  end

  def destroy
    awesome = Awesome.find(params[:id])
    awesome.destroy
    redirect_to feeds_path
  end

  private
  def awesome_params
    params.require(:awesome).permit(:feed_id)
  end
end
