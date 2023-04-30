require "csv"

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i

if memo_type==1
    puts "拡張子を除いたファイルを入力してください。"
    file_name = gets.chomp

    p "メモしたい内容を入力してください"
    p "完了したらCtrl+Dを押してください"
    memo = STDIN.read

    CSV.open("#{file_name}.csv", "w") do |file|
        file << [memo]
    end


elsif memo_type==2
    puts "拡張子を除いたファイルを入力してください。"
    file_name = gets.chomp

    p "メモしたい内容を入力してください"
    p "完了したらCtrl+Dを押してください"
    
    memo = STDIN.read

    CSV.open("#{file_name}.csv", "a") do |file|
        file << [memo]
    end

else 
puts "1か2を入力してください。"
end