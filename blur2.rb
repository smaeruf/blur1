class Image
  attr_accessor :image

  def initialize(image)
    @image = image
  end

  def blur
  end
  
  def output_image
    @image.each do |array|
      puts array.join
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image