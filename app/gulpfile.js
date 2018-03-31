/**
 * Created by ktebo on 6/3/2017.
 */
var elixir = require('laravel-elixir');

elixir(function (mix) {
    mix.sass('app.scss');

    mix.scripts([
        'app.js'
    ], 'public/js/app.js');

    mix.scripts([
        'controllers/*.js'
    ], 'public/js/controllers.js')
});