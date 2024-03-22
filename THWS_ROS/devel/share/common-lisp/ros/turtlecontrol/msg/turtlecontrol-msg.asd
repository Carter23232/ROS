
(cl:in-package :asdf)

(defsystem "turtlecontrol-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "kofi" :depends-on ("_package_kofi"))
    (:file "_package_kofi" :depends-on ("_package"))
  ))