
(cl:in-package :asdf)

(defsystem "turtlecontrol-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "circle_service" :depends-on ("_package_circle_service"))
    (:file "_package_circle_service" :depends-on ("_package"))
  ))