const gulp = require('gulp');
const coffee = require('gulp-coffee');
const sourcemaps = require('gulp-sourcemaps');

gulp.task('build', () => {
	gulp.src('./lib/*.coffee')
	.pipe(sourcemaps.init())
	.pipe(coffee())
	.pipe(sourcemaps.write())
	.pipe(gulp.dest('./build/'));
});
gulp.task('default', ['build']);
