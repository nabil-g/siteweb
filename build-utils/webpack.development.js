const path = require("path");
const webpack = require('webpack');

module.exports = () => ({
  module: {
    rules: [
      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        use: [
          { loader: 'elm-hot-webpack-loader' },
          {
            loader: 'elm-webpack-loader',
            options: {
              cwd: path.join(__dirname, '../'),
              debug: true
            }
          }
        ]
      },
        {
            test: /\.s?css$/,
            use: ['style-loader', 'css-loader', 'postcss-loader', 'sass-loader']
        }
    ]
  },

  plugins: [
    new webpack.HotModuleReplacementPlugin(),

  ],

  devServer: {
    contentBase: './src',
    historyApiFallback: true,
    inline: true,
    stats: {
      colors: true,
      entrypoints: true,
      timings: true,
      version: false,
      warnings: true,
    },
    hot: true,
    port: 3001
  }
});
