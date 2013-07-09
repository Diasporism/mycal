class Group < ActiveRecord::Base
  include ActionView::Helpers::NumberHelper

  belongs_to :user
  has_one    :calendar, as: :owner

  attr_accessible :name, :description, :phone_number, :address, :avatar

  has_attached_file :avatar, :styles => { :medium => '200x200>', :thumb => '100x100>' }, :default_url => 'placehold.it/200/200'

  before_save :format_phone_number
  validates_presence_of :name, :description, :avatar, :phone_number, :address
  validates_attachment_content_type :avatar, :content_type => /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)$/, :message => 'Only jpeg, png, and gif images are allowed.'

  def format_phone_number
    self.phone_number = number_to_phone(self.phone_number)
  end
end