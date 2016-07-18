# Emmet Font Awesome

It's a Helper for [Font-Awesome](http://fortawesome.github.com/Font-Awesome/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'emmet_font_awesome', '0.0.3'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install emmet_font_awesome
```

## Usage

In your `application.css`, include the css file:

```css
/*
 *= require emmet/css/font-awesome
 */
```

### Sass & Less Support

If you prefer SCSS, add this to your `application.css.scss` file:

```scss
@import 'emmet/scss/font-awesome';
```

Or LESS, add this to your `application.css.less` file:

```less
@import 'emmet/less/font-awesome';
```

### Helpers

```ruby
fa_icon(:user)
# => <i class="fa fa-user"></i>

fa_icon(:user, class: 'foo-bar')
# => <i class="fa fa-user foo-bar"></i>

fa_icon('refresh spin 2x')
# => <i class="fa fa-refresh fa-spin fa-2x"></i>

fa_fw_icon(:flag)
# => <i class="fa fa-fw fa-flag"></i>

fa_icon_text(:users, 'Usuários')
# => <i class="fa fa-users"></i> Usuários
```
