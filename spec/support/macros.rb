# all .rb files in support are automatically
# "required" in spec_helper

def set_current_user(user = nil)
  user ||= Fabricate(:user)
  session[:user_id] = user.id
end

def current_user
  User.find(session[:user_id])
end