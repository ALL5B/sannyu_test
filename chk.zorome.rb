def zorome
  numbers = []

  puts "３桁の数字をカンマ区切りで入力してください。"

  input_values = gets.chomp

  values_int = input_values.split(",")
  p values_int
  values_int.each do |value|
    first_cha = value.slice(0)
    if value.length == 3
      if value.match(/[0-9]{3}/)
        if value.match(/#{first_cha}{3}/)
          p "zorome: #{value}"
        else
          p "#{value}"
        end
      elsif value.match(/[a-z]/) or value.match(/[A-Z]/) then
        puts "unmatch pattern: #{value}"
      end
    else
      puts "unmach pattern: #{value}"
    end

  end

end



while true do
  puts "入力を開始する場合は１を入力しでください。"
  puts "終了する場合は２を入力してください"
  inp = gets.to_i

  if inp == 1 then
     zorome
  elsif inp == 0 then
    exit
  else
    puts "無効な値です。"
  end

end


