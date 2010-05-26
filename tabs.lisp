
(in-package :dialogues)

(defcomponent dialogue-frontend-about-page ()
  ())

(defmethod render ((self dialogue-frontend-about-page))
  (<:p "this is the about page"))

(defcomponent dialogue-frontend-game-page ()
  ())

(defmethod render ((self dialogue-frontend-game-page))
  (<:p "this is the game page"))

(defentry-point "test3" (:application *dialogue-application*)
    ()
  (call 'dialogue-frontend-window))

(defentry-point "test2" (:application *dialogue-application*)
    ()
  (make-instance 'dialogue-frontend-pane
		 :current-component-key 'about
		 :contents `((about . ,(make-instance 'dialogue-frontend-about-page))
			     (play . ,(make-instance 'dialogue-frontend-game-page)))))

;;; tabs.lisp ends here