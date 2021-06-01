class Restaurant < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

   belongs_to :user
   has_many   :comments

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

   def self.search(search)
    if search != ""
      Restaurant.where('restaurant LIKE(?)', "%#{search}%").order("created_at DESC")
    else
      # Restaurant.all 
      Restaurant.includes(:user).order("created_at DESC")
    end
  end

end
