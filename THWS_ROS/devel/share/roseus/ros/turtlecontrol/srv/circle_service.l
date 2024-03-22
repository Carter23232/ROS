;; Auto-generated. Do not edit!


(when (boundp 'turtlecontrol::circle_service)
  (if (not (find-package "TURTLECONTROL"))
    (make-package "TURTLECONTROL"))
  (shadow 'circle_service (find-package "TURTLECONTROL")))
(unless (find-package "TURTLECONTROL::CIRCLE_SERVICE")
  (make-package "TURTLECONTROL::CIRCLE_SERVICE"))
(unless (find-package "TURTLECONTROL::CIRCLE_SERVICEREQUEST")
  (make-package "TURTLECONTROL::CIRCLE_SERVICEREQUEST"))
(unless (find-package "TURTLECONTROL::CIRCLE_SERVICERESPONSE")
  (make-package "TURTLECONTROL::CIRCLE_SERVICERESPONSE"))

(in-package "ROS")





(defclass turtlecontrol::circle_serviceRequest
  :super ros::object
  :slots (_x _tz ))

(defmethod turtlecontrol::circle_serviceRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:tz __tz) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _tz (float __tz))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:tz
   (&optional __tz)
   (if __tz (setq _tz __tz)) _tz)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _tz
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tz
       (sys::poke _tz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tz
     (setq _tz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass turtlecontrol::circle_serviceResponse
  :super ros::object
  :slots ())

(defmethod turtlecontrol::circle_serviceResponse
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

(defclass turtlecontrol::circle_service
  :super ros::object
  :slots ())

(setf (get turtlecontrol::circle_service :md5sum-) "fc3db95a57294e8a3ce4451857513454")
(setf (get turtlecontrol::circle_service :datatype-) "turtlecontrol/circle_service")
(setf (get turtlecontrol::circle_service :request) turtlecontrol::circle_serviceRequest)
(setf (get turtlecontrol::circle_service :response) turtlecontrol::circle_serviceResponse)

(defmethod turtlecontrol::circle_serviceRequest
  (:response () (instance turtlecontrol::circle_serviceResponse :init)))

(setf (get turtlecontrol::circle_serviceRequest :md5sum-) "fc3db95a57294e8a3ce4451857513454")
(setf (get turtlecontrol::circle_serviceRequest :datatype-) "turtlecontrol/circle_serviceRequest")
(setf (get turtlecontrol::circle_serviceRequest :definition-)
      "float32 x
float32 tz

---
")

(setf (get turtlecontrol::circle_serviceResponse :md5sum-) "fc3db95a57294e8a3ce4451857513454")
(setf (get turtlecontrol::circle_serviceResponse :datatype-) "turtlecontrol/circle_serviceResponse")
(setf (get turtlecontrol::circle_serviceResponse :definition-)
      "float32 x
float32 tz

---
")



(provide :turtlecontrol/circle_service "fc3db95a57294e8a3ce4451857513454")


