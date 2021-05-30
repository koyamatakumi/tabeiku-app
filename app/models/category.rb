class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '和食' },
    { id: 3, name: '中華' },
    { id: 4, name: '洋食' },
    { id: 5, name: 'フレンチ' },
    { id: 6, name: 'イタリアン' },
    { id: 7, name: 'カフェ 喫茶店' },
    { id: 8, name: 'その他' }
  ]
  end