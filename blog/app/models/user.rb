class User < ActiveRecord::Base
attr_accessible :nombre, :password, :email, :bio, :programa, :birthday, :work_time
end
