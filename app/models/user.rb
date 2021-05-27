class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # 選択関係で「---」のままになっていないか検証
   with_options numericality: { other_than: 0, message: 'Select' } do
   validates :age_id
   validates :gender_id
  end

  # <<アクティブハッシュの設定関連>>
   belongs_to_active_hash :age
   belongs_to_active_hash :gender

end
