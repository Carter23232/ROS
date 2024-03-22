
(cl:in-package :asdf)

(defsystem "chatter-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "newmsg" :depends-on ("_package_newmsg"))
    (:file "_package_newmsg" :depends-on ("_package"))
  ))