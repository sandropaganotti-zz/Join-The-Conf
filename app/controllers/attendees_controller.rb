class AttendeesController < ApplicationController
  
  before_filter :get_current_conference
  
  def index
    @attendees =  @conference.attendees
    render :update do |page|
      page.replace_html "conference_#{params[:conference_id]}",
        :partial => 'attendee', :collection=>@attendees 
    end
  end
  
  def new
    @attendee = Attendee.new
  end
  
  def create 
    @attendee = @conference.attendees.build(params[:attendee])
    if @attendee.save
      redirect_to conferences_url
    else
      render :action => 'new'
    end
  end
  
  private
  
  def get_current_conference
    @conference = Conference.find(params[:conference_id])
  end
  
end
