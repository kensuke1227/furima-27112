class PayForm
  include ActiveModel::Model
  #Active Recordの場合と同様に form_with や render などのヘルパーメソッドが使用できるようになる

 attr_accessor :item_id, :token, :postal_code, :prefecture_id, :city, :addresses, :building, :phone_number, :user_id
  # フォームオブジェクトで使用する値を定義している（読み書きができるようになっている）

  def save
    order = Order.create(
      item_id: item_id,
      user_id: user_id
    )
    Address.create(
      order_id: order.id,
      postal_code: postal_code,
      prefecture_id: prefecture_id,
      city: city,
      addresses: addresses,
      building: building,
      phone_number: phone_number
    )
  end
end