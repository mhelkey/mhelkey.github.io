require 'exifr/jpeg'


#provide this with path to images.
#example: '/path/to/dir/*.jpg' will convert all the images
def generate(pathname,output_file)

  Dir.glob(pathname) do |filename|
    # Do work on files & directories ending in .jpg
    
    html = "<img src=\"#{filename}\"\
             width=\"#{EXIFR::JPEG.new(filename).width}\"\
             height=\"#{EXIFR::JPEG.new(filename).height}\"> "

    File.open(output_file, 'a') { |file| file.write(html) }

  end
end

  
generate('./images/helkeyphotos/*.jpg', 'all.html')
