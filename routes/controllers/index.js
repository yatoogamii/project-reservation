module.exports = (req, res) => {
  res.render('index', {
    title: 'Reservation',
    ingredients: [],
    drinks: [],
    taglieri: []
  });
};
