const table = require('../../models/index');

module.exports = allTable = {
  drinks: {
    id: [],
    name: [],
    description: [],
    price: []
  },
  desserts: {
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

table.desserts.findAll().then(function(tableDesserts) {
  for (const value of tableDesserts) {
    allTable.desserts.name.push(value.name);
  }
});

table.taglieris.findAll().then(function(tableTaglieris) {
  for (const value of tableTaglieris) {
    allTable.taglieris.name.push(value.name);
  }
});
