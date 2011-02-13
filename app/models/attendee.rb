class Attendee < ActiveRecord::Base
  belongs_to :conference
  validates_presence_of :conference_id, 
    :name, :email
  validates_uniqueness_of :email, 
    :scope => :conference_id
end