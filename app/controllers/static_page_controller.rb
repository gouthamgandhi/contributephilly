class StaticPageController < ApplicationController
  before_filter :admin, :except => ["index"]
  def index
  end
end
