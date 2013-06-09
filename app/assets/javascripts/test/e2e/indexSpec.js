describe('Bettle App', function() {
  it('should show a list of recipes', function() {
    browser().navigateTo('/index.html');
    // Our Default GutHub recipes list has two recipes
    expect(repeater('.bettles div').count()).toEqual(122);
  });
});
