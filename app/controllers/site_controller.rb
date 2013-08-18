class SiteController < ApplicationController
  def index
  	@feeds = Feed.order('created_at desc')
  end
end
