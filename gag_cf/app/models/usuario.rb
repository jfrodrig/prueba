class Usuario < ActiveRecord::Base
   authenticates_with_sorcery!  
   has_many :posts
   validates_confirmation_of( :password, { :message => "ambos campos deben concidir", :if =>  :password } )
     validates_presence_of :password, :username

end
