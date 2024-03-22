; Auto-generated. Do not edit!


(cl:in-package turtlecontrol-srv)


;//! \htmlinclude circle_service-request.msg.html

(cl:defclass <circle_service-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (tz
    :reader tz
    :initarg :tz
    :type cl:float
    :initform 0.0))
)

(cl:defclass circle_service-request (<circle_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <circle_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'circle_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlecontrol-srv:<circle_service-request> is deprecated: use turtlecontrol-srv:circle_service-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <circle_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlecontrol-srv:x-val is deprecated.  Use turtlecontrol-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'tz-val :lambda-list '(m))
(cl:defmethod tz-val ((m <circle_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlecontrol-srv:tz-val is deprecated.  Use turtlecontrol-srv:tz instead.")
  (tz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <circle_service-request>) ostream)
  "Serializes a message object of type '<circle_service-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <circle_service-request>) istream)
  "Deserializes a message object of type '<circle_service-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tz) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<circle_service-request>)))
  "Returns string type for a service object of type '<circle_service-request>"
  "turtlecontrol/circle_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'circle_service-request)))
  "Returns string type for a service object of type 'circle_service-request"
  "turtlecontrol/circle_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<circle_service-request>)))
  "Returns md5sum for a message object of type '<circle_service-request>"
  "fc3db95a57294e8a3ce4451857513454")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'circle_service-request)))
  "Returns md5sum for a message object of type 'circle_service-request"
  "fc3db95a57294e8a3ce4451857513454")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<circle_service-request>)))
  "Returns full string definition for message of type '<circle_service-request>"
  (cl:format cl:nil "float32 x~%float32 tz~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'circle_service-request)))
  "Returns full string definition for message of type 'circle_service-request"
  (cl:format cl:nil "float32 x~%float32 tz~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <circle_service-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <circle_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'circle_service-request
    (cl:cons ':x (x msg))
    (cl:cons ':tz (tz msg))
))
;//! \htmlinclude circle_service-response.msg.html

(cl:defclass <circle_service-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass circle_service-response (<circle_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <circle_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'circle_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlecontrol-srv:<circle_service-response> is deprecated: use turtlecontrol-srv:circle_service-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <circle_service-response>) ostream)
  "Serializes a message object of type '<circle_service-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <circle_service-response>) istream)
  "Deserializes a message object of type '<circle_service-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<circle_service-response>)))
  "Returns string type for a service object of type '<circle_service-response>"
  "turtlecontrol/circle_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'circle_service-response)))
  "Returns string type for a service object of type 'circle_service-response"
  "turtlecontrol/circle_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<circle_service-response>)))
  "Returns md5sum for a message object of type '<circle_service-response>"
  "fc3db95a57294e8a3ce4451857513454")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'circle_service-response)))
  "Returns md5sum for a message object of type 'circle_service-response"
  "fc3db95a57294e8a3ce4451857513454")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<circle_service-response>)))
  "Returns full string definition for message of type '<circle_service-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'circle_service-response)))
  "Returns full string definition for message of type 'circle_service-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <circle_service-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <circle_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'circle_service-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'circle_service)))
  'circle_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'circle_service)))
  'circle_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'circle_service)))
  "Returns string type for a service object of type '<circle_service>"
  "turtlecontrol/circle_service")