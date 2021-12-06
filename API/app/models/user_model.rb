module UsersModel
  def self.load
    JsonHelper.from_yml 'users.yml'
  end

  def generate_new_user
    load
    data = JsonHelper.data_for 'users_default'
    data
  end
end