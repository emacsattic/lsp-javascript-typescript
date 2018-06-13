;;; lsp-typescript.el --- Javascript/Typescript support for lsp-mode  -*- lexical-binding: t; -*-

;; Copyright (C) 2017 George Pittarelli <g@gjp.cc>

;; Author: George Pittarelli <g@gjp.cc>
;; Version: 1.0
;; Package-Requires: ((lsp-mode "3.0") (typescript-mode "0.1") (emacs "25.1"))
;; Keywords: languages tools
;; URL: https://github.com/emacs-lsp/lsp-javascript

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Javascript and Typescript support for lsp-mode using Theia's
;; typescript-language-server server.

;;; Code:

(require 'lsp-mode)
(require 'typescript-mode)

(defconst lsp-typescript--get-root
  (lsp-make-traverser #'(lambda (dir)
                          (directory-files dir nil "package.json"))))

(defun lsp-typescript--render-string (str)
  (ignore-errors
    (with-temp-buffer
      (typescript-mode)
      (insert str)
      (font-lock-ensure)
      (buffer-string))))

(defun lsp-typescript--initialize-client (client)
  (lsp-provide-marked-string-renderer
   client "typescript" 'lsp-typescript--render-string)
  (lsp-provide-marked-string-renderer
   client "javascript" 'lsp-typescript--render-string))

(lsp-define-stdio-client
 lsp-typescript "javascript"
 lsp-typescript--get-root
 '("typescript-language-server" "--stdio")
 :initialize 'lsp-typescript--initialize-client)

(provide 'lsp-typescript)
;;; lsp-typescript.el ends here
