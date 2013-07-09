require 'spec_helper'

describe Group do

  context 'when a group is created' do
    it 'formats the phone number attribute into a clean format' do
      file = File.open('app/assets/images/300.gif')
      Group.create!(name: 'UW Madison Football', description: 'Go Badgers! (UW Madison is the Badgers, right?)', avatar: file, phone_number: '3035551234', address: 'Herp Derp Lane Madison, WI')
      group = Group.find(1)
      expect(group.phone_number).to eq '303-555-1234'
    end
  end

end