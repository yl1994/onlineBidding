class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :authentication_keys => [:loginname]
  #非空验证
  validates_presence_of :password,:loginname
  #唯一性验证
  validates_uniqueness_of :loginname,:case_sensitive => false
end
