
# multi-line comments

These are used:

* as part of [function declarations](#func)


<a name="func"></a>
## function declarations

These appear on the lines immediately above function declarations.

```js
/**
* synopsis
*
* @param <requiredParam> -- {Type} description
* @param [optionalParam] -- {Type} description
*/
function someFunction(requiredParam, optionalParam) {
```

* every line after the first line with `/**` and before the last with `*/` should be in the same indentation level, starting with `*`
* one (1) space is placed after the starting `*`
* `synopsis` should be a concise description of what the function achieves
* `@param` denotes parameters for the function
* **required** parameter names are placed between `<` and `>`
* **optional** parameter names are placed between `[` and `]`
* types of the variables are placed between `{` and `}`
* `description` should describe usefulness of a variable from the point of the function caller
* note the two dashes `--`; this is just for beautification
* the parameter names in the comments and those in the function declaration should match

