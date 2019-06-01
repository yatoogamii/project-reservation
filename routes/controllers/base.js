const table = require('../../models/index');

module.exports = allTable = {
  drinks: {
    id: [],
    name: [],
    description: [],
    price: []
  },
  ingredients: {
    id: [],
    name: [],
    description: [],
    price: []
  },
  taglieris: {
    id: [],
    name: [],
    description: [],
    price: []
  }
};

table.drinks.findAll().then(function(tableDrinks) {
  for (const value of tableDrinks) {
    allTable.drinks.name.push(value.name);
  }
});

table.ingredients.findAll().then(function(tableIngredients) {
  for (const value of tableIngredients) {
    allTable.ingredients.name.push(value.name);
  }
});

table.taglieris.findAll().then(function(tableTaglieris) {
  for (const value of tableTaglieris) {
    allTable.taglieris.name.push(value.name);
  }
});
