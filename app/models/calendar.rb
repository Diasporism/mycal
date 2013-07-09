class Calendar < ActiveRecord::Base
  belongs_to :owner, polymorphic: true

  attr_accessible :owner_id, :owner_type

  validates_presence_of :owner_id, :owner_type
end