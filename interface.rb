require './lib/player'
require './lib/template'

puts "Welcome to Tic tac toe"
puts "\nPress Enter to game"
gets

template=Template.new
players=Player.new("Player 1"), Player.new("Player 2")
  until template.winner?
    players.each do |player|
    puts "#{player.name} you turn"
    puts template.structure
    choice=player.choice
    until template.array[choice-1]!="O" && template.array[choice-1]!="X"
      puts 'invalid'
      puts template.structure
      choice=player.choice
    end
    if player.name=="Player 1"
    template.array[choice-1]='X'
    else
    template.array[choice-1]='O'
  end
  end
end
if template.winner_name==1
  puts template.structure
  puts "Congratulation Player 1 win"
else
  puts template.structure
  puts "Congratulation Player 2 win"
end

