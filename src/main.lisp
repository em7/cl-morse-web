(defpackage cl-morse-web
  (:use :cl))
(in-package :cl-morse-web)

(defvar *hunchentoot-acceptor*)

(defun stop-server ()
  "Stops a currently running server, if any."
  (when *hunchentoot-acceptor*
    (progn (hunchentoot:stop *hunchentoot-acceptor*)
           (setf *hunchentoot-acceptor* nil))))

(defun start-server (port)
  "Starts a new Hunchentoot server (stopping already running one if any).
   Instance is saved to *hunchentoot-acceptor*.
   Port is returned. If port is unset or is 0, a random port is chosen."
  (stop-server)
  (setf *hunchentoot-acceptor* (make-instance 'hunchentoot:easy-acceptor :port port))
  (hunchentoot:start *hunchentoot-acceptor*)
  (hunchentoot:acceptor-port *hunchentoot-acceptor*))


(hunchentoot:define-easy-handler (main-page :uri "/") ()
  (cl-morse-web/templates:main-page))





