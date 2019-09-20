class Image
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def output_name
    @name.each do |array|
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
image.output_name