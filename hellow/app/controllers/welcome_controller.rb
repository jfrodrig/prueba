class WelcomeController < ApplicationController
  layout 'ejemplo'
  def index
   @tutor='jhon rodriguez' 
   @productora='Codigo facilito'
   @limite=2
   @mensaje= 'Curso inicio de rails ejemplo de utilizacion de times con lavariable  '
  end
  def index2
    render( { :text => ( 'Action "index2" :<br />Jhon : ' + params[ :jhon ].to_s ) } )
  end
  def index3
    render( { :text => ( 'Action "index3" :<br />Jhon : ' + params[ :jhon ].to_s + "\n<br />Fredy : " + params[ :fredy ].to_s ) } )
  end
end
