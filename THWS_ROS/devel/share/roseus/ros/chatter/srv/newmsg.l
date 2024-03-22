;; Auto-generated. Do not edit!


(when (boundp 'chatter::newmsg)
  (if (not (find-package "CHATTER"))
    (make-package "CHATTER"))
  (shadow 'newmsg (find-package "CHATTER")))
(unless (find-package "CHATTER::NEWMSG")
  (make-package "CHATTER::NEWMSG"))
(unless (find-package "CHATTER::NEWMSGREQUEST")
  (make-package "CHATTER::NEWMSGREQUEST"))
(unless (find-package "CHATTER::NEWMSGRESPONSE")
  (make-package "CHATTER::NEWMSGRESPONSE"))

(in-package "ROS")





(defclass chatter::newmsgRequest
  :super ros::object
  :slots (_msg ))

(defmethod chatter::newmsgRequest
  (:init
   (&key
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _msg (string __msg))
   self)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass chatter::newmsgResponse
  :super ros::object
  :slots ())

(defmethod chatter::newmsgResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass chatter::newmsg
  :super ros::object
  :slots ())

(setf (get chatter::newmsg :md5sum-) "7d96ed730776804754140b85e64c862e")
(setf (get chatter::newmsg :datatype-) "chatter/newmsg")
(setf (get chatter::newmsg :request) chatter::newmsgRequest)
(setf (get chatter::newmsg :response) chatter::newmsgResponse)

(defmethod chatter::newmsgRequest
  (:response () (instance chatter::newmsgResponse :init)))

(setf (get chatter::newmsgRequest :md5sum-) "7d96ed730776804754140b85e64c862e")
(setf (get chatter::newmsgRequest :datatype-) "chatter/newmsgRequest")
(setf (get chatter::newmsgRequest :definition-)
      "string msg

---
")

(setf (get chatter::newmsgResponse :md5sum-) "7d96ed730776804754140b85e64c862e")
(setf (get chatter::newmsgResponse :datatype-) "chatter/newmsgResponse")
(setf (get chatter::newmsgResponse :definition-)
      "string msg

---
")



(provide :chatter/newmsg "7d96ed730776804754140b85e64c862e")


