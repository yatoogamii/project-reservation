const { Router } = require('express');

const router = Router();

const indexRouter = require('./controllers/index');

/* GET index page. */
router.get('/', indexRouter);

module.exports = router;
