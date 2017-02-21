'use strict';
var Generator = require('yeoman-generator');
var chalk = require('chalk');
var yosay = require('yosay');

module.exports = Generator.extend({
  prompting: function () {
    // Have Yeoman greet the user.
    this.log(yosay(
      'Welcome to the wonderful ' + chalk.red('genrator-elm-app') + ' generator!'
    ));

    var prompts = [{
      type: 'input',
      name: 'appName',
      message: 'Your project name',
      default: this.appname
    }];

    return this.prompt(prompts).then(function (props) {
      // To access props later use this.props.someAnswer;
      this.props = props;
    }.bind(this));
  },

  writing: function () {
    var appName = this.props.appName;

    this.fs.copyTpl(
      this.templatePath('_package.json'),
      this.destinationPath('package.json'),
      { appName: appName }
    );

    this.fs.copyTpl(
      this.templatePath('_elm-package.json'),
      this.destinationPath('elm-package.json'),
      { appName: appName }
    );

    this.fs.copy(
      this.templatePath('webpack.config.js'),
      this.destinationPath('webpack.config.js')
    );

    this.fs.copyTpl(
      this.templatePath('src'),
      this.destinationPath('src'),
      { appName: appName }
    );
  },

  install: function () {
    this.installDependencies();
  }
});
