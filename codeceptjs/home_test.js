Feature('Home path');

Scenario('visiting the root path', (I) => {
  I.amOnPage('/');
  I.see('Simple Code Review Viewer');
});
