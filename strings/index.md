
# strings

## quotes

Use double quotes for strings.

```js
// bad
var myString = 'this is a single-quoted string';

// good
var myString = "this is a single-quoted string";
```

**Why?**

* Although not directly related to JavaScript, double-quoted strings in most cases have more benefit than single-quoted ones. For example, in Shell, variable substitution occurs in double-quoted strings and not single-quoted strings. Although this may seem far-fetched, we develop in other languages other than JavaScript. Having to switch between single-quotes and double-quotes from language to language is **not** worthwhile, specfically in JavaScript.

