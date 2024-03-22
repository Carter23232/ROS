; Auto-generated. Do not edit!


(cl:in-package chatter-srv)


;//! \htmlinclude newmsg-request.msg.html

(cl:defclass <newmsg-request> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass newmsg-request (<newmsg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <newmsg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'newmsg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chatter-srv:<newmsg-request> is deprecated: use chatter-srv:newmsg-request instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <newmsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chatter-srv:msg-val is deprecated.  Use chatter-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <newmsg-request>) ostream)
  "Serializes a message object of type '<newmsg-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <newmsg-request>) istream)
  "Deserializes a message object of type '<newmsg-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<newmsg-request>)))
  "Returns string type for a service object of type '<newmsg-request>"
  "chatter/newmsgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'newmsg-request)))
  "Returns string type for a service object of type 'newmsg-request"
  "chatter/newmsgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<newmsg-request>)))
  "Returns md5sum for a message object of type '<newmsg-request>"
  "7d96ed730776804754140b85e64c862e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'newmsg-request)))
  "Returns md5sum for a message object of type 'newmsg-request"
  "7d96ed730776804754140b85e64c862e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<newmsg-request>)))
  "Returns full string definition for message of type '<newmsg-request>"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'newmsg-request)))
  "Returns full string definition for message of type 'newmsg-request"
  (cl:format cl:nil "string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <newmsg-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <newmsg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'newmsg-request
    (cl:cons ':msg (msg msg))
))
;//! \htmlinclude newmsg-response.msg.html

(cl:defclass <newmsg-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass newmsg-response (<newmsg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <newmsg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'newmsg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chatter-srv:<newmsg-response> is deprecated: use chatter-srv:newmsg-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <newmsg-response>) ostream)
  "Serializes a message object of type '<newmsg-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <newmsg-response>) istream)
  "Deserializes a message object of type '<newmsg-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<newmsg-response>)))
  "Returns string type for a service object of type '<newmsg-response>"
  "chatter/newmsgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'newmsg-response)))
  "Returns string type for a service object of type 'newmsg-response"
  "chatter/newmsgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<newmsg-response>)))
  "Returns md5sum for a message object of type '<newmsg-response>"
  "7d96ed730776804754140b85e64c862e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'newmsg-response)))
  "Returns md5sum for a message object of type 'newmsg-response"
  "7d96ed730776804754140b85e64c862e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<newmsg-response>)))
  "Returns full string definition for message of type '<newmsg-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'newmsg-response)))
  "Returns full string definition for message of type 'newmsg-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <newmsg-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <newmsg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'newmsg-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'newmsg)))
  'newmsg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'newmsg)))
  'newmsg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'newmsg)))
  "Returns string type for a service object of type '<newmsg>"
  "chatter/newmsg")