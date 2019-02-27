class Game
  def janken
    puts "最初はグー、じゃんけん...."
    puts "[0]:グー\n[1]:チョキ\n[2]:パー"
    player_hand = gets.to_i

    program_hand = rand(3)
    jankens = ["グー", "チョキ", "パー"]
    puts "あなたの手: #{jankens[player_hand]}, プログラムの手: #{jankens[program_hand]}"

    if player_hand == program_hand
      next_game = true

      puts "あいこで"

      #じゃんけんを繰り返す
      while next_game do
        next_game = janken
      end
    elsif ( program_hand - player_hand == 1 || program_hand - player_hand == -2 )
      puts "あなたの勝ちです"
      janken = false #返り値を返す
    else
      puts "あなたの負けです"
      janken = false #返り値を返す
    end
  end
end

Game.new.janken