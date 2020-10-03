class Sex < ActiveHash::Base
  self.data = [
      {id: 0, name: '---' },
      {id: 1, name: 'MEN'}, 
      {id: 2, name: 'WOMEN'}, 
      {id: 3, name: 'OTHER'}
  ]
end