var gulp = require('gulp');
var sass = require('gulp-ruby-sass');
var connect = require('gulp-connect');


gulp.task('webserver', function() {
  connect.server({
    livereload: true
  });
});

gulp.task('sass', function() {
  gulp.src('sass/style.scss')
    .pipe(sass())
    .pipe(gulp.dest('css'))
    .pipe(connect.reload());
});

gulp.task('html', function() {
  gulp.src('*.html')
    .pipe(connect.reload());
  // connect.reload();
})

gulp.task('watch', function() {
  gulp.watch('sass/*.scss', ['sass']);
  gulp.watch('*.html', ['html']);
});

gulp.task('default', ['webserver', 'watch']);