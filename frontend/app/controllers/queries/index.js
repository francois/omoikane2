import Ember from 'ember';

export default Ember.ArrayController.extend({
    sortProperties: ['createdAt', 'title']
  , sortAscending: false
});
