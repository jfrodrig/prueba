class Client1sController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_client1, only: [:show, :edit, :update, :destroy]


def index
  @client1s = Client1.search(params[:search])
end

  # GET /client1s
  # GET /client1s.json

 





def upload_file(file)
  # Declaring
  uploader = FileUploader.new
  # Upload it
  uploader.store!(file)

  return uploader.url
end
  # GET /client1s/1
  # GET /client1s/1.json
  def show
  end

  # GET /client1s/new
  def new
    @client1 = Client1.new
  end

  # GET /client1s/1/edit
  def edit
  end

  # POST /client1s
  # POST /client1s.json
  def create
    @client1 = Client1.new(client1_params)

    respond_to do |format|
      if @client1.save
        format.html { redirect_to @client1, notice: 'Client1 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @client1 }
      else
        format.html { render action: 'new' }
        format.json { render json: @client1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client1s/1
  # PATCH/PUT /client1s/1.json
  def update
    respond_to do |format|
      if @client1.update(client1_params)
        format.html { redirect_to @client1, notice: 'Client1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @client1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client1s/1
  # DELETE /client1s/1.json
  def destroy
    @client1.destroy
    respond_to do |format|
      format.html { redirect_to client1s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client1
      @client1 = Client1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client1_params
      params.require(:client1).permit(:name, :birth, :gender, :country, :city, :avatar)
    end
def store_dir
  "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
end

end
