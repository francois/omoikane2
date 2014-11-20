import Ember from 'ember';

export default Ember.ObjectController.extend({
  actions: {
    submit: function() {
      this.model.save();
      this.transitionToRoute('queries');
    }
  }
});
