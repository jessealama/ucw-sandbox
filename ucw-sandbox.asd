
(in-package :cl-user)

(defpackage :ucw-sandbox-asd
  (:use :cl :asdf))

(in-package :ucw-sandbox-asd)

(defsystem :ucw-sandbox
  :description "A pile of UCW hacks, so I can learn this beast."
  :author "Jesse Alama <jesse.alama@gmail.com>"
  :maintainer "Jesse Alama <jesse.alama@gmail.com>"
  :serial t
  :depends-on (:ucw)
  :components ((:file "packages")
	       (:file "application")
	       (:file "tabs")))
