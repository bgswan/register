class User < ActiveRecord::Base
  validates_uniqueness_of :username
  validates_size_of :username, maximum: 12

  def add_to_mailing_list(list_name)
    update_attributes(email_list_name: list_name)
  end
end
