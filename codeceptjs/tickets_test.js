Feature('Tickets path');

Scenario('visiting the index', (I) => {
  I.amOnPage('/tickets');
  I.see('Log in');
  I.see('Email');
});
