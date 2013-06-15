class ExamplesController < ApplicationController
  def form
  @nombre =params[:nombre_usuario]
  @ejemplo= Example.create({nombre: @nombre})
  @nombres=Example.all
  end
end
