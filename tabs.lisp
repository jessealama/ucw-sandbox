
(in-package :ucw-sandbox)

;;; tab components

(defcomponent tab-window (standard-window-component)
  ()
  (:default-initargs
      :body (make-instance 'tabbed-pane
			   :current-component-key 'about
			   :contents `((about . ,(make-instance 'about-page))
				       (play . ,(make-instance 'game-page))))))

(defcomponent about-page ()
  ())

(defmethod render ((self about-page))
  (<:p "this is the about page"))

(defcomponent game-page ()
  ())

(defmethod render ((self game-page))
  (<:p "this is the game page"))

(defentry-point "tab-test" (:application *sandbox-application*)
    ()
  (call 'tab-window))

;;; tabs.lisp ends here