class Argument

  attr_reader :tag_name

  def initialize
    @tag_name = ARGV[1]
    arg_valid
  end

  private

  def arg_valid
    tag_valid
  end

  def tag_valid
    unless @tag_name
      puts "Please specify tag name"
      exit 0
    end
  end

end
