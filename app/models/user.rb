class User < ApplicationRecord
  # disp_nameメソッド
  def disp_name
    # ageパラメータに応じて出力する呼び方を分岐させる
    if age > 19
      "#{name}さん"
    elsif age > 10
      "#{name}君"
    elsif age > 0
      "#{name}ちゃん"
    else
      "不正な数値です"      
    end
  end
end
