class User < ApplicationRecord
def self.getUserDetail(user_id)
  where(id: user_id)
end

def self.updateUserInfo(user_id,name,age,profile)
  where(id: user_id).update_all(
    :name => name,
    :age => age,
    :profile => profile
  )
end

end
