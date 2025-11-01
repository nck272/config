# `present.nvim`

This is a feature for presenting markdown files that I copied from teej_dv for learning lua and nvim.

# Features 

Can execute code in lua blocks, when you have them in a slide

```lua
print("Hello World!")
```

# Features: Other Langs

Can execute code in Language blocks, when you have them in a slide

You may need to configure this with `opts.executors`, only have Javascript by default

```javascript
console.log("Hello World!")
```

# Usage

```lua
require("present").start_presentation {}
```

use `<left>`, and `<right>` to navigate through each slide (each heading) 

Or use `PresentStart` Command

# Credits 

teej_dv
