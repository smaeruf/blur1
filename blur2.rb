class Image
  

  def initialize(pix)
    @pix = pix
  end

  def output_image
    @pix.each do |row|
      puts row.join ("")
    end
  end
    
  def blur 
    box = [ ]
      @pix.each_with_index do |row, a|
        row.each_with_index do |num, b|
          if num == 1
            box << [a, b]
          end 
      end
    end
    box.each do |a,b|
      @pix[a][b - 1] = 1 unless b == 0
      @pix[a][b + 1] = 1 unless b == -1
      @pix[a - 1][b] = 1 unless a == 0
      @pix[a + 1][b] = 1 unless a == -1
    end
  end
end



      
image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])


  image.output_image
  puts "-----"
  image.blur
  image.output_image