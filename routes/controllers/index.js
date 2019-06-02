const base = require('./base');

module.exports = (req, res) => {
  res.render('index', {
    title: 'Reservation',
    allDesserts: base.desserts.name,
    allDrinks: base.drinks.name,
    allTaglieri: base.taglieris.name,
    commandDessert: 'test',
    commandDrink: 'test',
    commandTaglieri: 'test'
  });
};
