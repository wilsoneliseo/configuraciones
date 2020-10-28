
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (deeper-blue)))
 '(custom-safe-themes
   (quote
    ("e52718d4b950106873fed00c469941ad8db20f02392d2c7ac184c6defe37ad2c" "ed91d4e59412defda16b551eb705213773531f30eb95b69319ecd142fab118ca" default)))
 '(display-time-mode t)
 '(electric-pair-mode t)
 '(fci-rule-color "#3C3D37")
 '(fringe-mode 10 nil (fringe))
 '(gud-pdb-command-name "pdb3")
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100))))
 '(linum-format " %6d ")
 '(magit-diff-use-overlays nil)
 '(main-line-color1 "#222232")
 '(main-line-color2 "#333343")
 '(make-backup-files nil)
 '(org-agenda-files (quote ("~/dc/Dropbox/excompi.txt" "~/dc/config/pass.org")))
 '(package-selected-packages
   (quote
    (markdown-preview-mode typescript-mode projectile elpy format-all go-rename go-imenu go-mode markdown-mode auctex)))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(powerline-color1 "#222232")
 '(powerline-color2 "#333343")
 '(python-shell-interpreter "python3")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 102 :width normal)))))

;; ============================================================
;;   $c CONFIGURACIONES
;; ============================================================

;; Tell emacs where is your personal elisp lib dir
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; ido-mode para control mas facil de archivos y buffers
(require 'ido)
(ido-mode t)

;; Iluminar los parentesis y las llaves por parejas:
(show-paren-mode 1)

;; actualizar archivo cuando se modifica con otro programa
(global-auto-revert-mode t)

;; para que en lineas largas ponga un $ al final
(set-default 'truncate-lines t)

;; separador en registros. (Ver 13.2 Saving Text in Registers)
(setq register-separator ?+)
(set-register register-separator "\n")

;; para paquete projectile 02-Ago-2020
(require 'projectile)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(projectile-mode +1)

; Con autoinsert al abrir un fichero de una determinada extensión
; incluiremos algún texto en dicho fichero
(require 'autoinsert)
    (auto-insert-mode)  ;;; Adds hook to find-files-hook
    (setq auto-insert-directory "~/.emacs.d/mytemplates/")
    (setq auto-insert-query nil) 
    (define-auto-insert "\.sh" "shtemplate")
    (define-auto-insert "\.txt" "txttemplate")

;; configuracion para `15.11 org-crypt.el´
(require 'org-crypt)
(org-crypt-use-before-save-magic)
(setq org-tags-exclude-from-inheritance (quote ("crypt")))
(setq org-crypt-key nil)
;; GPG key to use for encryption
;; Either the Key ID or set to nil to use symmetric encryption.

;; para auctex
(require 'reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-reftex)   ; with Emacs latex mode

;; para activar por defecto auto-fill-mode en LaTeX-moden
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)
(add-hook 'latex-mode-hook 'turn-on-auto-fill)

;; para activar por defecto auto-fill-mode en org-mode
;; (add-hook 'org-mode-hook 'turn-on-auto-fill)


;; ============================================================
;;   $f FUNCIONES
;; ============================================================

;; para cerrar bufferes a partir de regexp
;; https://stackoverflow.com/questions/10929915/how-do-i-answer-y-automatically-kill-matching-buffers-asks-if-i-should-kill-a-m
(require 'cl)
(defun cerrar-buffers (regexp)
  "Kill buffers matching REGEXP without asking for confirmation."
  (interactive "sKill buffers matching this regular expression: ")
  (flet ((kill-buffer-ask (buffer) (kill-buffer buffer)))
	(kill-matching-buffers regexp)))

;; source: http://steve.yegge.googlepages.com/my-dot-emacs-file
(defun renombrar-archivo (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive "sNew name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not filename)
        (message "Buffer '%s' is not visiting a file!" name)
      (if (get-buffer new-name)
          (message "A buffer named '%s' already exists!" new-name)
        (progn
          (rename-file filename new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil))))))

;; https://stackoverflow.com/questions/2416655/file-path-to-clipboard-in-emacs
(defun ruta-para-clipboard ()
  "Put the current file name on the clipboard"
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (buffer-file-name))))
    (when filename
      (with-temp-buffer
        (insert filename)
        (clipboard-kill-region (point-min) (point-max)))
      (message filename))))

;; Función para insertar la fecha:
(defun insertar-fecha ()
  "Inserta dia semana, fecha dd-mm-yyyy y hora, minutos y segundos"
  (interactive)
  (when (use-region-p)
    (delete-region (region-beginning) (region-end) ))
  (insert (format-time-string "%A, %B %d, %Y - %H:%M")))

;; Funcion para copiar una linea al portapapeles:
(defun copiar-linea (arg)
  "Copiar linea al portapapeles"
  (interactive "p")
  (kill-ring-save (line-beginning-position)
		  (line-beginning-position (+ 1 arg)))
  (message "%d line%s copied" arg (if (= 1 arg) "" "s")))

;;; Mostrar un mensaje de bienvenida en el minibuffer
(defun display-startup-echo-area-message ()
  (message "Padre Hijo y Espiritu Santo"))



;; ============================================================
;;   $t TECLADO
;; ============================================================
;; definir combinacion de teclas de Compilar
(global-set-key "\C-cm" 'compile)
 
;; definir combinacion de teclas de Recompilar
(global-set-key "\C-cr" 'recompile)

;; definir combinacion de teclas para matar el proceso de compilacion
(global-set-key "\C-ck" 'kill-compilation)


;; ============================================================
;;   $m MACROS
;; ============================================================

;; esta funcion para cambiar la fecha. Cadena -02 es mes. Cadena -14 es dia.
(fset 'sjf
      (lambda (&optional arg) "Keyboard macro."  (interactive "p") (kmacro-exec-ring-item (quote ("\346\344-10\344-21" 0 "%d")) arg)))
;; esta funcion para copiar el TOTAL hacia saldo. Usa caracter ' p/ubicarse
(fset 'sjs
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([33554451 84 79 84 65 76 tab 3 24 134217847 18 39 tab tab 3 24 25 3 16] 0 "%d")) arg)))
;; convinacion de sjf y sjs
(fset 'sj
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([134217848 115 106 102 return 134217848 115 106 115 return] 0 "%d")) arg)))
;; este inserta linea y se posiciona en cant.
(fset 'nl
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([1 134217830 S-return tab] 0 "%d")) arg)))



(fset 'wmachines
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([25 134217832 3 124 M-right M-right S-iso-lefttab S-iso-lefttab M-S-left] 0 "%d")) arg)))
(fset 'westado
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([4 134217820 134217830 134217820 67108896 19 40 2 backspace 32 61 32 105 114 6 32 19 59 backspace 44 return 4 19 32 return 2 2 32 6 67108896 19 91 2 6 backspace return 5 backspace 134217820 backspace return 14] 0 "%d")) arg)))
(fset 'wdesplazamientos
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([67108896 134217830 134217847 19 40 return 2 67108896 19 41 6 2 21 24 114 115 116 24 111 167772179 94 25 return 5 24 114 105 116 3 16 67108914 24 111 S-iso-lefttab 14 134217830 134217826] 0 "%d")) arg)))
(fset 'wh
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([19 60 116 114 62 return 19 61 return 134217739 34 115 116 105 99 107 121] 0 "%d")) arg)))
(fset 'wreducciones
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([19 46 44 return 5 32 35 82] 0 "%d")) arg)))
(fset 'wcero
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([3 16 3 16 14 4 134217820 6 67108896 19 91 6 2 backspace return return 5 backspace 134217820 backspace backspace 1 5 return 16 134217832 201326629 92 93 59 32 92 91 return 17 49 50 return return 33 3 16 14 14 11] 0 "%d")) arg)))
(fset 'warreglar
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([3 16 134217832 201326629 92 93 17 49 50 return 92 124 92 93 59 32 92 91 return 17 49 50 return return 33] 0 "%d")) arg)))
(fset 'wsin
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([return return 16 16 42 42 32 115 105 110 return 24 114 105 116 3 16 134217832 201326629 17 49 50 return 17 49 50 return return 17 49 50 return return 33] 0 "%d")) arg)))
(fset 'wrd
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([return 16 42 42 32 100 101 108 134217832 201326629 114 92 40 91 48 45 57 5 43 92 41 return 82 92 49 return 33 3 16 134217832 201326629 92 40 115 92 124 32 92 41 92 40 91 48 45 57 5 43 92 41 return 68 92 49 backspace 50 return 33 18 97 99 99 return 3 32 82 48 3 16 11 11] 0 "%d")) arg)))
(fset 'wcero0
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([3 16 3 16 14 4 134217820 return 6 67108896 19 123 6 2 backspace return return 5 backspace 134217820 backspace return 112 24 117 16 67108896 5 201326629 59 32 return 17 49 50 return return 33 3 16 14 14 14 11] 0 "%d")) arg)))
(fset 'westado0
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([4 134217820 134217830 67108896 19 40 2 backspace 32 61 32 6 32 19 44 return 134217820 19 32 2 134217820 2 32 6 67108896 19 123 2 6 backspace return 5 backspace 134217820 backspace return 14] 0 "%d")) arg)))
(fset 'warreglar0
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([3 16 134217832 201326629 59 32 return 17 49 50 return return 33] 0 "%d")) arg)))
(fset 'wreducciones0
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([134217747 92 46 36 return 32 35 82] 0 "%d")) arg)))


;; activar sh para evaluacion de bloques de codigo
     ;; (org-babel-do-load-languages
     ;;  'org-babel-load-languages
     ;;  '((emacs-lisp . nil)
     ;;    (sh . t)))

;; para indicar donde esta sqlplus de oracle
;; (setq sql-oracle-program "/opt/oracle/product/18c/dbhomeXE/bin/sqlplus")
;; (setq sql-oracle-program "/u01/app/oracle/product/11.2.0/xe/bin/sqlplus")

;; cargar el modo mayor
;; (load-library "nasm-mode")
;; para activar modo menor auto-fill-mode cuando se use nasm-mode
;; (add-hook 'nasm-mode-hook 'turn-on-auto-fill)

;; cargar modo mayor jflex-indent-command
;; (load-library "jflex-mode")
;;  (autoload 'jflex-mode "jflex-mode" nil t)
;; (setq auto-mode-alist (cons '("\\(\\.flex\\|\\.jflex\\)\\'" . jflex-mode) auto-mode-alist))

;; agregar a melpa
;; (add-to-list 'package-archives
;;              '("melpa-stable" . "https://stable.melpa.org/packages/") t)
