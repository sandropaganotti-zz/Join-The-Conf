class ConferencesController < ApplicationController
  def index
    @conferences = Conference.all(
      :order=>'start DESC')
  end
end
