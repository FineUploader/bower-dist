module.exports = function(grunt) {
  'use strict';

  // Force use of Unix newlines
  grunt.util.linefeed = '\n';

  grunt.initConfig({

    submodule: {
      options: {
        gruntfile: 'Gruntfile.coffee'
      },
      'src': {
        options: {
          tasks: [ 'build_stripped' ]
        }
      }
    },

    copy: {
      build: {
        expand: true,
        cwd: './src/_build',
        src: [
          '**/*'
        ],
        dest: 'dist'
      }
    },

    clean: {
      dist: 'dist/',
      src: 'src/_build/'
    }

  });

  require('load-grunt-tasks')(grunt, {scope: 'devDependencies'});

  grunt.registerTask('default', [ 'clean:dist', 'submodule', 'copy', 'clean:src' ]);
}
