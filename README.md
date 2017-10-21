lsp-javascript
==============

Javascript and Typescript support for lsp-mode using [javascript-typescript-langserver](https://github.com/sourcegraph/javascript-typescript-langserver).

## Installation

### From source

Clone this repository and [lsp-mode](https://github.com/emacs-lsp/lsp-mode) to
suitable paths, and add them to your load path:

```emacs-lisp
(add-to-list 'load-path "<path to lsp-mode>")
(add-to-list 'load-path "<path to lsp-javascript>")
```

### From MELPA

Install the package `lsp-javascript`

## Enabling `lsp-javascript`

```emacs-lisp
(add-hook 'js-mode-hook #'lsp-javascript-typescript-enable)
(add-hook 'typescript-mode-hook #'lsp-javascript-typescript-enable) ;; for typescript support
(add-hook 'js3-mode-hook #'lsp-javascript-typescript-enable) ;; for js3-mode support
(add-hook 'rjsx-mode #'lsp-javascript-typescript-enable) ;; for rjsx-mode support
```

You also need
[javascript-typescript-langserver](https://github.com/sourcegraph/javascript-typescript-langserver)
installed and on your PATH.

```bash
npm i -g javascript-typescript-langserver
```

(`sudo` may be necessary depending on how you have
[npm](https://www.npmjs.com/) setup)
