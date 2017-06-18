class UsersController < ApplicationController
  def ranking
    @users = User.includes(:awesomes)
    @users = @users.sort_by {|u| u.awesomes.size }.reverse
  end
end
