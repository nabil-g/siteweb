const gulp = require('gulp');
const plugins = require('gulp-load-plugins')();
const del = require('del');
const runSequence = require('run-sequence');
const replace = require('gulp-replace');

console.dir(plugins); // pour récuperer le nom des plugins dans l'objet plugins

const formEndpoint = process.env.FORM_ENDPOINT || '';


// vider le dossier dist sauf le sous-dossier assets
gulp.task('clean:dist', function () {
  del(['dist/**/*', 'dist/*','!dist/assets', '!dist/assets/*']);
});

// concatener les fichiers sources dans l'index.html
gulp.task('useref', function () {
  return gulp.src('src/index.html')
    .pipe(plugins.useref())
    .pipe(plugins.if('*.js',plugins.uglify())) // minifier seulement les scripts js
    .pipe(plugins.if('*.js',plugins.replace('FORM_ENDPOINT', formEndpoint)))
    .pipe(plugins.if('*.css',plugins.cleanCss({compatibility: 'ie8'}))) // minifier seulement les scripts css
    .pipe(gulp.dest('dist'));
});

// copier les fichiers qui n'ont pas besoin de changement
gulp.task('noChange', function () {
  return gulp.src(['src/+(assets|error|php|lib)/**','!src/assets/*.jpg','src/*.css'])
  .pipe(gulp.dest('dist'));
});

// compresser les jpeg
gulp.task('compressJpg', function () {
  return gulp.src('src/assets/*.jpg')
    .pipe(plugins.cache(plugins.imagemin([
      plugins.imagemin.jpegtran({progressive:true})
    ])))
    .pipe(gulp.dest('dist/assets/'));
});


// exécuter des taches, d'abord clean:dist puis useref et noChange en meme temps
gulp.task('default', ['clean:dist'] ,function () {
  runSequence(['useref','compressJpg','noChange']);
});
