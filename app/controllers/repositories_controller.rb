class RepositoriesController < ApplicationController
  def index
    @repos_array = githubservice.get_repos
  end

  def create
    githubservice.create_repo(params[:name])
    redirect_to '/'
  end
end
