class MusicImporter
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end
  
  def import()
    self.files.each do |file| 
      #binding.pry
      Song.create_from_filename(file)
    end
  end
end