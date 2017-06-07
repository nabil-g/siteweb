const gulp = require('gulp');
const useref = require('gulp-useref');
const uglify = require('gulp-uglify');
const gulpIf = require('gulp-if');
const cleanCSS = require('gulp-clean-css');
const license = require('gulp-license');
const del = require('del');
const runSequence = require('run-sequence');

// vider le dossier dist sauf le sous-dossier assets
gulp.task('clean:dist', function () {
  del(['dist/**/*', '!dist/assets', '!dist/assets/*']);
});

// concatener les fichiers sources dans l'index.html
gulp.task('useref', function () {
  return gulp.src('src/*.php')
    .pipe(gulpIf('*.js',uglify())) // minifier seulement les scripts js
    .pipe(gulpIf('*.css',cleanCSS({compatibility: 'ie8'}))) // minifier seulement les scripts js
    .pipe(useref())
    .pipe(gulpIf('*.js', license('MIT', {tiny:false})))
    .pipe(gulpIf('*.css', license('MIT', {tiny:false})))
    .pipe(gulp.dest('dist'));
});

// copier les fichiers qui n'ont pas besoin de changement
gulp.task('noChange', function () {
  return gulp.src(['src/+(assets|error|php|lib)/**','src/*.css'])
  .pipe(gulp.dest('dist'));
});

// exécuter des taches, d'abord clean:dist puis useref et noChange en meme temps
gulp.task('default', function () {
  runSequence(['useref','noChange']);
});
