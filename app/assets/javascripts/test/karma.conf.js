basePath = '../';

files = [
  //JASMINE,
  //JASMINE_ADAPTER,
  '../../../vendor/assets/javascripts/angular.js',
  '../../../vendor/assets/javascripts/angular-*.js',
  // 'test/lib/angular/angular-mocks.js',
  // '*.js',
  'app/*.js',
  'test/unit/*.js'
  // '../*.js'
]

frameworks = ["jasmine"];

autoWatch = true;

browsers = ['Chrome'];

junitReporter = {
  outputFile: 'test_out/unit.xml',
  suite: 'unit'
};
