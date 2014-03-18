class PagesController < ApplicationController
  def home
	@bargains = Bargain.all.limit(10)
  end

  def about
  end

  def contact
  end
end
