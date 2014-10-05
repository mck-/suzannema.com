gulp = require 'gulp'
plgn = require('gulp-load-plugins')()
paths = require './paths'

###
# Deploy Tasks
# Deploys from dist/
###

gulp.task 'CNAME', ->
  gulp.src "#{paths.publicDir}/CNAME"
    .pipe gulp.dest paths.distDir

gulp.task 'deploy', ['CNAME'], ->
  gulp.src paths.deploy
    .pipe plgn.ghPages()
