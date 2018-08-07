class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :storer]

  def home
    @storage_spaces = StorageSpace.all
  end

  def storer
  end
end
