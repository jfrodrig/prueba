class Post < ActiveRecord::Base
  attr_accessible :photo, :titulo
  belongs_to :usuarios
  validates_presence_of :titulo, :extension
  FOTOS = File.join( Rails.root, 'public', 'photo_store' )
  after_save :guardar_foto

  #=================================
  # photo=
  #=================================
  def photo=( file_data )
    #raise 'Jhon => ' + file_data.inspect.to_s + ' <= Fredy'
    #Rails.logger.debug( 'Jhon => ' + file_data.inspect.to_s + ' <= Fredy' )
      unless ( file_data.blank? )
          @file_data = file_data
          self.extension= file_data.original_filename.split('.').last.downcase      
      end
  end
  
  #=================================
  # photo_filename
  #=================================
  def photo_filename
    return( File.join( FOTOS, "#{self.id}.#{self.extension}" ) )
  end
  
  #=================================
  # photo_path
  #=================================
  def photo_path
    return( "/photo_store/#{id}.#{extension}" )
  end
  
  #=================================
  # has_photo?
  #=================================
  def has_photo?
      return( File.exists?( photo_filename() ) )
  end
  
  #=================================
  # guardar_foto
  #=================================
   def guardar_foto
      if ( @file_data )
          FileUtils.mkdir_p( FOTOS )
          File.open( photo_filename, 'wb' ) do |f|
               f.write( @file_data.read )
          end
          @file_data = nil
       end
   end   
end
