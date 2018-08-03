class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @storage_spaces = StorageSpace.all
  end
end
