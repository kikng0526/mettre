class Age < ActiveHash::Base
  self.data = [
      {id: 0, name: '---' },
      {id: 1, name: '~15'}, 
      {id: 2, name: '16~20'}, 
      {id: 3, name: '20~24'},
      {id: 4, name: '25~29'}, 
      {id: 5, name: '30~34'}, 
      {id: 6, name: '35~39'},
      {id: 7, name: '40~44'}, 
      {id: 8, name: '45~49'}, 
      {id: 9, name: '50~'}  
  ]
end