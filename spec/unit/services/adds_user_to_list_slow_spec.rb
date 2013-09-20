require 'spec_helper'
require "./app/services/adds_user_to_list"

describe AddsUserToList do
  let(:notifies_user) { double('notifies_user') }
  subject(:adds_user_to_list) { AddsUserToList }

  it 'registers a new user' do
    expect(notifies_user).to receive(:call)

    adds_user_to_list.(username: 'username', email_list_name: 'list_name', notifies_user: notifies_user)
  end
end