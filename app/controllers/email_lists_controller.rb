class EmailListsController < ApplicationController
  respond_to :json
  def create
    user = AddsUserToList.(username: params[:username], email_list_name: 'blog_list')
    respond_with user
  end
end
