// snaplist.js
// collective noun for group of crocs is a 'snaplist' :)

var Backbone = require('backbone');
var Snap = require('../models/snap.js');
var CONF = require('../config.js');

module.exports = Backbone.Collection.extend({
  url: CONF.PACKAGES,
  model: Snap,
  comparator: function(model) {
    return model.get('name');
  }
});
