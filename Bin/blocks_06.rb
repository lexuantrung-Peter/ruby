# Top 10 Nintendo 64 games from Gamerankings

game_rankings = {
  "The Legend of Zelda: Ocarina of Time" => 0.9754, 
  "Super Mario 64" => 0.9641, 
  "GoldenEye 007" => 0.9470, 
  "Perfect Dark" => 0.9455, 
  "The Legend of Zelda: Majora's Mask" => 0.9195, 
  "1080: TenEighty Snowboarding" => 0.8960, 
  "Conker's Bad Fur Day" => 0.8928, 
  "Excitebike 64" => 0.8907, 
  "Turok 2: Seeds of Evil" => 0.8896, 
  "Paper Mario" => 0.8881
}

# Your code goes here
total_scores = game_rankings.map { |k,v| v}.reduce(0, :+)
average_score = total_scores / 10
puts "average score = #{average_score}"

game_rankings.select { |k, v| v > average_score }.each do |k, v|
  puts "#{k} => #{v}"
end
