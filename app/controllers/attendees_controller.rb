class AttendeesController < ApplicationController
  def index
    @attendees = Conference.find(
      params[:conference_id]).attendees
    render :update do |page|
      page.replace_html "conference_#{params[:conference_id]}",
        :partial => 'attendee', :collection=>@attendees 
    end
  end
end
