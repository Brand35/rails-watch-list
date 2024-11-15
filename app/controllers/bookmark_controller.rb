class BookmarkController < ApplicationController
  def index
    @list = List.find(params(:list_id))
    @Bookmark = Bookmark.new
  end

  def create
    @list = List.find(params(:list_id))
    @Bookmark = Bookmark.new(Bookmark_params)
    if bookmark.save
      redirect_to list_path(@list)
    else
      render :
    end
  end

end
