var gulp = require('gulp');
var connect = require('gulp-connect');
var browserify = require('gulp-browserify');
var concat = require('gulp-concat');


gulp.task('webserver', function() {
  connect.server({
    livereload: true
  });
});

gulp.task('browserify', function() {
  gulp.src('js/app.js')
    .pipe(browserify({ transform: 'reactify' }))
    .pipe(gulp.dest('dist'));
});

gulp.task('watch', function() {
  gulp.watch('js/*.js', ['browserify']);
});

gulp.task('default', ['browserify', 'webserver', 'watch']);