class Robot

  attr_reader :name

  @@used_names = []

  def initialize
    reset
  end

  def reset
    @name = make_name
    while @@used_names.include? @name
      @name = make_name
    end
    @@used_names << @name
  end

  private
    def make_name
      rand('A'..'Z')
    end

end
