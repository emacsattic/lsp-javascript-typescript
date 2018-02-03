lsp-javascript
==============

Javascript, Typescript and Flow support for lsp-mode using one of:
- [javascript-typescript-langserver](https://github.com/sourcegraph/javascript-typescript-langserver)
- [flow-language-server](https://github.com/flowtype/flow-language-server)
- [typescript-language-server](https://github.com/theia-ide/typescript-language-server)

## Installation

### From source

Clone this repository and [lsp-mode](https://github.com/emacs-lsp/lsp-mode) to
suitable paths, and add them to your load path:

```emacs-lisp
(add-to-list 'load-path "<path to lsp-mode>")
(add-to-list 'load-path "<path to lsp-javascript>")
```

### From MELPA

Install one of the available packages:
- `lsp-javascript-typescript`
- `lsp-javascript-flow`

## Usage
### Enabling `lsp-javascript-typescript`

```emacs-lisp
(require 'lsp-javascript-typescript)
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

### Enabling `lsp-javascript-flow`

```emacs-lisp
(require 'lsp-javascript-flow)
(add-hook 'js-mode-hook #'lsp-javascript-flow-enable)
(add-hook 'js2-mode-hook #'lsp-javascript-flow-enable) ;; for js2-mode support
(add-hook 'rjsx-mode #'lsp-javascript-flow-enable) ;; for rjsx-mode support
```

You also need [flow-language-server](https://github.com/flowtype/flow-language-server) installed and on your PATH.

```bash
npm i -g flow-language-server
```

(`sudo` may be necessary depending on how you have
[npm](https://www.npmjs.com/) setup)

### Enabling `typescript-language-server`

```emacs-lisp
(require 'lsp-typescript)
(add-hook 'js-mode-hook #'lsp-javascript-flow-enable)
(add-hook 'js2-mode-hook #'lsp-javascript-flow-enable) ;; for js2-mode support
(add-hook 'rjsx-mode #'lsp-javascript-flow-enable) ;; for rjsx-mode support
```

You also need [typescript-language-server](https://github.com/theia-ide/typescript-language-server) installed and on your PATH.

```bash
npm i -g typescript-language-server
```

(`sudo` may be necessary depending on how you have
[npm](https://www.npmjs.com/) setup)
