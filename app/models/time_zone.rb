class TimeZone < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '朝食' },
    { id: 3, name: 'ランチ' },
    { id: 4, name: 'おやつタイム' },
    { id: 5, name: 'ディナー' },
    { id: 6, name: 'その他' }
  ]
  end