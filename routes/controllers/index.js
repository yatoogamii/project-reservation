const base = require('./base');

module.exports = (req, res) => {
  res.render('index', {
    title: 'Reservation',
    ingredients: base.ingredients.name,
    drinks: base.drinks.name,
    taglieri: base.taglieris.name
  });
};
