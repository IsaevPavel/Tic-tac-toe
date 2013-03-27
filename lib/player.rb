class Player
  attr_reader :name
  def initialize name
    @name=name
  end
  def choice
     gets.chomp.to_i
  end
end