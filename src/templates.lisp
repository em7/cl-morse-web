(defpackage :cl-morse-web/templates
  (:use :cl :cl-who :parenscript)
  (:export :main-page))
(in-package :cl-morse-web/templates)

(setf (html-mode) :html5)

(defmacro standard-page ((&key title) &body body)
  "Renders a standard template page with a title. Body is the body of the page to render.
   Returns a rendered page as string."
  `(with-html-output-to-string (s nil :prologue t :indent t)
     (:html :lang "en"
            (:head
             (:meta :charset "utf-8")
             (:title ,title))
            (:body
             (:p "hello")
             ,@body))))

(defun main-page ()
  "Renders a main page and returns it as string."
  (standard-page (:title "Morse code converter")
    (:p "Welcome to the morse code converter.")))

