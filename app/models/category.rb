class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '和食' },
    { id: 3, name: '中華' },
    { id: 4, name: 'フレンチ' },
    { id: 5, name: 'イタリアン' },
    { id: 6, name: 'カフェ 喫茶店' },
    { id: 7, name: 'その他' }
  ]
  end