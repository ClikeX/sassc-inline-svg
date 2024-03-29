# Sass-Inline-Svg

This is, at its core, a clone of [franzheidl/sass-inline-svg](https://github.com/franzheidl/sass-inline-svg).

Inline url-encoded SVG with SassC. Optional variable string replacement included!

This is a Ruby Gem to be used with Ruby SassC (libsass)


## Installation

    gem install sassc_inline_svg

Add this line to your application's Gemfile:

    gem 'sassc_inline_svg'



## Usage

SassC-inline-svg adds a `inline_svg` function you can use with SassC. It url-encodes the contents of the specified file and inlines it in your CSS (Url-encoded SVG is about 30% smaller than base64).

### Basic

    .my-thing {
        background-image: inline_svg('my-file.svg');
    }

When working with plain Sass, you'll have to use the full path to the svg file, when using Rails the path will be resolved by the Rails asset pipeline.


###Replacing Variable Strings

Replacing variable strings in SVG when inlining them with Sass makes sense e.g. if you need multiple variants of the same graphic with different fill colors.

With SassC-Inline-Svg you only need __one__ source svg file with a variable string for `fill`:

    …
    <polygon fill="fillcolor" points="[…] "/>
    …

The variants needed can be created during inlinig with Sass. Pass a Sass map of replacements as a second parameter:

    .my-thing {
        background-image: inline_svg('my-file.svg', ( fillcolor: '#fff' ));
    }

This will replace all occurences of `fillcolor` in your SVG with `#fff`:

    …
    <polygon fill="#fff" points="[…]"/>
    …

__Note:__ If you use `$`- or `@`-prefixed variable names in your SVG or if you want to replace an existing hex color, you'll have to quote the keys in your raplement Sass map:

    .my-thing {
        background-image: inline_svg('my-file.svg', ( '$fillcolor': '#fff' ));
    }

or

    .my-thing {
        background-image: inline_svg('my-file.svg', ( '#000': '#fff' ));
    }

