class AddsUserToList
  def self.call(args)
    finds_user = args.fetch(:finds_user) { User }
    notifies_user = args.fetch(:notifies_user) { NotifiesUser }

    user = finds_user.find_by_username!(args.fetch(:username))
    notifies_user.(user, args.fetch(:email_list_name))
    user.add_to_mailing_list(args.fetch(:email_list_name))
    user
  end
end