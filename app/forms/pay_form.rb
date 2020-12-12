class PayForm
  include ActiveModel::Model
  #Active Recordの場合と同様に form_with や render などのヘルパーメソッドが使用できるようになる

 attr_accessor :item_id, :token, :postal_code, :prefecture_id, :city, :addresses, :building, :phone_number, :user_id
  # フォームオブジェクトで使用する値を定義している（読み書きができるようになっている）

end