class SignTranslate
  def initialize(input)
    split_input_date = input.split("-")
    if split_input_date.length != 3
      print("不正な入力です")
      return
    end

    @target = {
        :year => split_input_date[0],
        :month => split_input_date[1],
        :day => split_input_date[2]
    }

    @sign = {
        "01" => {
            :name => %w[山羊座 水瓶座],
            :split => 20
        },
        "02" => {
            :name => %w[水瓶座 魚座],
            :split => 19
        },
        "03" => {
            :name => %w[魚座 牡羊座],
            :split => 21
        },
        "04" => {
            :name => %w[牡羊座 牡牛座],
            :split => 20
        },
        "05" => {
            :name => %w[牡牛座 双子座],
            :split => 21
        },
        "06" => {
            :name => %w[双子座 かに座],
            :split => 22
        },
        "07" => {
            :name => %w[かに座 獅子座],
            :split => 23
        },
        "08" => {
            :name => %w[獅子座 乙女座],
            :split => 23
        },
        "09" => {
            :name => %w[乙女座 天秤座],
            :split => 23
        },
        "10" => {
            :name => %w[天秤座 蠍座],
            :split => 24
        },
        "11" => {
            :name => %w[蠍座 射手座],
            :split => 23
        },
        "12" => {
            :name => %w[射手座 山羊座],
            :split => 22
        }
    }
  end

  def get_sign
    # その月の :split より値がしたなら前半の星座となる
    sign = (@target[:day].to_i < @sign[@target[:month]][:split].to_i) ? @sign[@target[:month]][:name][0] : @sign[@target[:month]][:name][1]
    "あなたの星座は#{sign}です！"
  end
end

puts "生年月日を入力してください"
print "{yyyy-mm-dd}: "
input = gets.chomp

sign_translate = SignTranslate.new(input)
puts sign_translate.get_sign