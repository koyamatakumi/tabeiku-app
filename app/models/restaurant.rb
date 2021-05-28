class Restaurant < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

   belongs_to :user

    # 選択関係で「---」のままになっていないか検証
    with_options numericality: { other_than: 0, message: 'Select' } do
      validates :category_id
      validates :time_zone_id
      validates :close_time_id
     end
    # <<アクティブハッシュの設定関連>>
   belongs_to_active_hash :category
   belongs_to_active_hash :time_zone
   belongs_to_active_hash :close_time

end
