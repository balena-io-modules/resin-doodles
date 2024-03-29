const gulp = require('gulp');
const coffee = require('gulp-coffee');
const sourcemaps = require('gulp-sourcemaps');


function build() {
	return gulp.src('./lib/*.coffee')
		.pipe(sourcemaps.init())
		.pipe(coffee())
		.pipe(sourcemaps.write())
		.pipe(gulp.dest('./build/'));
}

gulp.task('build', build);
gulp.task('default', build);
