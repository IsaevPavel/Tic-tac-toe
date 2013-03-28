class Template
  attr_reader :array, :winner_name
  def initialize
    @array=["1","2","3","4","5","6","7","8","9"]
    @winner=false
    @winner_name=false
  end
  def structure
    "_#{@array[0]}_|_#{@array[1]}_|_#{@array[2]}_\n_#{@array[3]}_|_#{@array[4]}_|_#{@array[5]}_\n #{@array[6]} | #{@array[7]} | #{@array[8]} "
  end
  def winner?
    if @array[0]=="X"&&@array[1]=="X"&&@array[2]=="X"||@array[3]=="X"&&@array[4]=="X"&&@array[5]=="X"||@array[6]=="X"&&@array[7]=="X"&&@array[7]=="X"||@array[0]=="X"&&@array[3]=="X"&&@array[6]=="X"||@array[1]=="X"&&@array[4]=="X"&&@array[7]=="X"||@array[2]=="X"&&@array[5]=="X"&&@array[8]=="X"||@array[0]=="X"&&@array[4]=="X"&&@array[8]=="X"||@array[2]=="X"&&@array[4]=="X"&&@array[6]=="X"
      @winner=true
      @winner_name=true
    elsif @array[0]=="O"&&@array[1]=="O"&&@array[2]=="O"||@array[3]=="O"&&@array[4]=="O"&&@array[5]=="O"||@array[6]=="O"&&@array[7]=="O"&&@array[7]=="O"||@array[0]=="O"&&@array[3]=="O"&&@array[6]=="O"||@array[1]=="O"&&@array[4]=="O"&&@array[7]=="O"||@array[2]=="O"&&@array[5]=="O"&&@array[8]=="O"||@array[0]=="O"&&@array[4]=="O"&&@array[8]=="O"||@array[2]=="O"&&@array[4]=="O"&&@array[6]=="O"
      @winner=true
    end
  end
end
