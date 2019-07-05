#parses a directory of files and sends the filenames to a song class to create a library of music with artists that are unique.
class MP3Importer

  attr_accessor :path             #Path attribute

  def initialize(path)        #Whenever we create new instance of MP3Importer
    @path = path              #Set attribute path = to filename we initialize with
  end
   #Had to google for Dir method
  def files                                                         #only wants mp3 files
    Dir.entries(path).select {|entry| entry.include?(".mp3")}       #select returns an array itself
  end

  def import                                                     #imports files(in array form) its received from #files method
    files.each {|filename| Song.new_by_filename(filename)}       #Iterates the array, creates new instance in Song Class method

  end
end
