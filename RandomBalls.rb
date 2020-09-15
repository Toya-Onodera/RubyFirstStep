# 「赤玉」「青玉」「黒玉」「緑玉」「黄玉」5 つの玉をランダムに取り出す
# 1000回繰り返したときにそれぞれの玉の出現する確率を調べる

balls = %w[赤玉 青玉 黒玉 緑玉 黄玉]
random_balls = []

(1..1000).each do |i|
  random_balls << balls.sample
end

balls.each do |ball|
  percent = (random_balls.count(ball) / 1000.0) * 100
  print("#{ball}: #{percent}%\n")
end