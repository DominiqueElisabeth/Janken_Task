class Player
  def hand
    puts "Please enter a number."
    puts "0: Goo, 1: Choki, 2: Par"
    input_hand = gets.to_i
      while true
        if input_hand == 0
          return 0
        elsif input_hand == 1
          return 1
        elsif input_hand ==2
          return 2
        else
          puts "Choose another number."
          puts "0: Goo, 1: Choki, 2: Par"
          input_hand == gets.to_i
          return true
        end
      end
    end
end
class Enemy
  def hand
    return rand(0..2)
  end
end
class Janken
  def pon(player_hand, enemy_hand)
    janken = ["Goo", "Choki", "Par"]
    puts "The opponent's hand is #{janken[enemy_hand]}."
      if player_hand == enemy_hand
        puts "Aiko"
        return true
      elsif player_hand == 0 && enemy_hand == 1 || player_hand == 1 && enemy_hand == 2 || player_hand == 2 && enemy_hand == 0
        puts "You win"
        return false
      else
        puts "You lose"
        return false
      end
  end
end
player = Player.new
enemy = Enemy.new
janken = Janken.new
next_game = true
while next_game
  next_game = janken.pon(player.hand, enemy.hand)
end
