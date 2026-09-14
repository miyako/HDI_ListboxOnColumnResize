# HDI_ListboxOnColumnResize

A 4D v16 **HDI** (How Do I) binary database demonstrating "Listbox - columns AUTO resizing !", converted to a 4D project using 4D 21 and modernized with the help of **GitHub Copilot**.

## Overview

This example shows how to react *live* to a listbox's `On Column Resize` form event while the user is still dragging a column border, instead of waiting for the resize gesture to finish. Two pages of the `HDI2` form illustrate the technique:

- **Page 1** (`LB0`) - each column's current width is displayed and its text colour changes as it approaches its minimum or maximum width.
- **Page 2** (`LB1`) - each column's date, time, number, and phone-number formats are redefined on the fly based on how much space is available, so narrow columns fall back to more compact formats.

## Features

- Live width tracking and colour feedback during column resize
- Width-driven date / time / number / phone-number reformatting per column
- `resizingMode: "legacy"` (last-column-grows) and `truncateMode: "none"` listbox defaults
- Modern startup pattern: `CALL WORKER`, non-blocking `DIALOG(...;*)`, window-reuse detection, `Form`-scoped state
- Dark mode support via `"automatic"` / `"automaticAlternate"` colors and `prefers-color-scheme` CSS
- macOS Tahoe Liquid Glass-aware button sizing via `form-theme` CSS media queries
- Full XLIFF localisation (English + Japanese) for menus, forms, and messages
- Modern `#DECLARE` / `var` syntax throughout (no deprecated `C_*` directives)

## Points of Interest

Highlights worth reading if you're studying the source:

| Topic | Where |
|---|---|
| Live `On Column Resize` handling | `Project/Sources/Forms/HDI2/ObjectMethods/LB0.4dm`, `ColDate.4dm`, `ColTime.4dm`, `ColValue.4dm`, `ColPhone.4dm` |
| Per-column display format switching by width | same object methods, via `OBJECT SET FORMAT` |
| Meta-colouring a listbox column by width threshold | `LB0.4dm`, via `OBJECT GET RGB COLORS` / `OBJECT SET RGB COLORS` |
| Startup splash + window-reuse pattern | `Project/Sources/Methods/00_Start.4dm`, `Forms/HDI/method.4dm`, `Forms/HDI/ObjectMethods/BtnDemo.4dm` |
| Dark mode & Liquid Glass CSS | `Project/Sources/styleSheets.css`, `styleSheets_mac.css` |
| XLIFF localisation | `Resources/en.lproj`, `Resources/ja.lproj` |

## Requirements

- 4D 21.1 or later (project `compatibilityVersion: 2101`)

## Project Structure

```
Project/Sources/
  Forms/HDI/           splash / startup form
  Forms/HDI2/          demo form (listbox pages)
  Methods/             project methods (00_Start, compiler declarations)
  menus.json, folders.json, ...
Resources/
  en.lproj/, ja.lproj/ XLIFF localisation
```

## Origin

This project started as a binary `.4DB` example database originally distributed with 4D v16. It was converted to the modern project architecture (`.4DProject`) using 4D 21's built-in binary-to-project conversion tool.

- **Blog post:** https://blog.4d.com/execute-action-upon-listbox-column-resizing/
- **Original download:** https://download.4d.com/Demos/4D_v16/HDI_ListboxOnColumnResize.zip

## References

- [`On Column Resize` form event](https://developer.4d.com/docs/Events/onColumnResize)
- [`LISTBOX Get column width`](https://developer.4d.com/docs/commands/listbox-get-column-width)
- [`OBJECT SET FORMAT`](https://developer.4d.com/docs/commands/object-set-format)
- [4D CSS stylesheets](https://developer.4d.com/docs/FormEditor/stylesheets)
- [Liquid Glass in 4D applications](https://blog.4d.com/the-new-macos-tahoe-design-comes-to-your-4d-applications/)

## License

MIT - see [LICENSE](LICENSE).
