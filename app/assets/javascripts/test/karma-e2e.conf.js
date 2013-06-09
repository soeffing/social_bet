basePath = '../';

files = [
  // ANGULAR_SCENARIO,
  // ANGULAR_SCENARIO_ADAPTER,
  '../../../vendor/assets/javascripts/angular.js',
  '../../../vendor/assets/javascripts/angular-mocks.js',
  '../../../vendor/assets/javascripts/angular-scenario.js',
  // 'test/lib/angular/angular-mocks.js',
  // '*.js',
  'app/*.js',
  'test/**/*.js',
  // '../*.js'
  'test/e2e/indexSpec.js'
]

frameworks = ["requirejs"];;

autoWatch = false;

browsers = ['Chrome'];

singleRun = true;

// port = 3000;
// runnerPort = 3000;


proxies = {
  '/': 'http://localhost:3000/'
};

urlRoot = 'e2e';

junitReporter = {
  outputFile: 'test_out/e2e.xml',
  suite: 'e2e'
};
