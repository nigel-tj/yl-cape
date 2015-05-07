
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [:user, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :admin
  end
  class << self
    def from_omniauth(auth)
      user = User.find_or_initialize_by(uid: auth['uid'])
      user.name = auth['info']['name']
      user.token = auth['credentials']['token']
      user.save!
      user
    end
  end
end
