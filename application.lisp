
(in-package :ucw-sandbox)

;;; server configuration

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defparameter *sandbox-server-port* 8001))

(defun make-sandbox-backend ()
  (make-backend
   :httpd
   :host "127.0.0.1"
   :port *sandbox-server-port*))

(defun make-sandbox-server ()
  (make-instance
   'standard-server
   :backend (make-sandbox-backend)))

(defvar *sandbox-server* (make-sandbox-server))

(defun startup-sandbox-server ()
  (startup-server *sandbox-server*))

(defun shutdown-sandbox-server ()
 (shutdown-server *sandbox-server*))

(defclass sandbox-application (standard-application)
  ()
  (:default-initargs
   :url-prefix "/"
    :debug-on-error nil))

(defvar *sandbox-application* (make-instance 'sandbox-application))

(register-application *sandbox-server* *sandbox-application*)

;;; application.lisp ends here