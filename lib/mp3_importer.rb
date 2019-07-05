class MP3Importer

  attr_accessor :path             #Path attribute

  def initialize(path)        #Whenever we create new instance of MP3Importer
    @path = path              #Set attribute path = to filename we initialize with
  end
   #Had to google for Dir method
  def files
    Dir.entries(path).select {|entry| entry.include?(".mp3")}       #select returns an array itself
  end

  def import
end
