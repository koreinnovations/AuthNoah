class UserSession < ActiveRecord::Base #Authlogic::Session::Base
  def to_key
    [session_key]
  end
end
