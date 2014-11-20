import Ember from 'ember';

var Router = Ember.Router.extend({
  // TODO: Find out where FrontEndENV is coming from
  // Seems to be coming from config/environment.js, but neither ENV or OmoikaneFrontendENV resolve during startup
  // location: FrontEndENV.locationType
});

Router.map(function() {
  this.resource('queries', function() {
    this.route('new');
    this.resource('query', { path: '/:query_id' });
  });
});

export default Router;
