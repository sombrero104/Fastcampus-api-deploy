var express = require('express');
var router = express.Router();

const album = require('../models/listModel');

/**
 * @api public
 * @method GET
 * @description 앨범 리스트 제공 API
 * @returns {json[array]}
 */
router.get('/', (req, res) => {
  res
    .status(200)
    .json(album.jsonList);
});

module.exports = router;