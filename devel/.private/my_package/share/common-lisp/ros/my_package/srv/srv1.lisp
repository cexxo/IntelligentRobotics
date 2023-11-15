; Auto-generated. Do not edit!


(cl:in-package my_package-srv)


;//! \htmlinclude srv1-request.msg.html

(cl:defclass <srv1-request> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ID
    :reader ID
    :initarg :ID
    :type cl:integer
    :initform 0))
)

(cl:defclass srv1-request (<srv1-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srv1-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srv1-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_package-srv:<srv1-request> is deprecated: use my_package-srv:srv1-request instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <srv1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-srv:msg-val is deprecated.  Use my_package-srv:msg instead.")
  (msg m))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <srv1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-srv:ID-val is deprecated.  Use my_package-srv:ID instead.")
  (ID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srv1-request>) ostream)
  "Serializes a message object of type '<srv1-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'msg) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srv1-request>) istream)
  "Deserializes a message object of type '<srv1-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'msg) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srv1-request>)))
  "Returns string type for a service object of type '<srv1-request>"
  "my_package/srv1Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srv1-request)))
  "Returns string type for a service object of type 'srv1-request"
  "my_package/srv1Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srv1-request>)))
  "Returns md5sum for a message object of type '<srv1-request>"
  "0a43d4272d4a6822c4aaf349b302052f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srv1-request)))
  "Returns md5sum for a message object of type 'srv1-request"
  "0a43d4272d4a6822c4aaf349b302052f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srv1-request>)))
  "Returns full string definition for message of type '<srv1-request>"
  (cl:format cl:nil "std_msgs/Header msg~%int32 ID~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srv1-request)))
  "Returns full string definition for message of type 'srv1-request"
  (cl:format cl:nil "std_msgs/Header msg~%int32 ID~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srv1-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'msg))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srv1-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srv1-request
    (cl:cons ':msg (msg msg))
    (cl:cons ':ID (ID msg))
))
;//! \htmlinclude srv1-response.msg.html

(cl:defclass <srv1-response> (roslisp-msg-protocol:ros-message)
  ((msg2
    :reader msg2
    :initarg :msg2
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robotMessage
    :reader robotMessage
    :initarg :robotMessage
    :type my_package-msg:RVL
    :initform (cl:make-instance 'my_package-msg:RVL)))
)

(cl:defclass srv1-response (<srv1-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srv1-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srv1-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_package-srv:<srv1-response> is deprecated: use my_package-srv:srv1-response instead.")))

(cl:ensure-generic-function 'msg2-val :lambda-list '(m))
(cl:defmethod msg2-val ((m <srv1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-srv:msg2-val is deprecated.  Use my_package-srv:msg2 instead.")
  (msg2 m))

(cl:ensure-generic-function 'robotMessage-val :lambda-list '(m))
(cl:defmethod robotMessage-val ((m <srv1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-srv:robotMessage-val is deprecated.  Use my_package-srv:robotMessage instead.")
  (robotMessage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srv1-response>) ostream)
  "Serializes a message object of type '<srv1-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'msg2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robotMessage) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srv1-response>) istream)
  "Deserializes a message object of type '<srv1-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'msg2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robotMessage) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srv1-response>)))
  "Returns string type for a service object of type '<srv1-response>"
  "my_package/srv1Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srv1-response)))
  "Returns string type for a service object of type 'srv1-response"
  "my_package/srv1Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srv1-response>)))
  "Returns md5sum for a message object of type '<srv1-response>"
  "0a43d4272d4a6822c4aaf349b302052f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srv1-response)))
  "Returns md5sum for a message object of type 'srv1-response"
  "0a43d4272d4a6822c4aaf349b302052f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srv1-response>)))
  "Returns full string definition for message of type '<srv1-response>"
  (cl:format cl:nil "std_msgs/Header msg2~%my_package/RVL robotMessage~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: my_package/RVL~%int32 ID~%string Name~%int32 Level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srv1-response)))
  "Returns full string definition for message of type 'srv1-response"
  (cl:format cl:nil "std_msgs/Header msg2~%my_package/RVL robotMessage~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: my_package/RVL~%int32 ID~%string Name~%int32 Level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srv1-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'msg2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robotMessage))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srv1-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srv1-response
    (cl:cons ':msg2 (msg2 msg))
    (cl:cons ':robotMessage (robotMessage msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srv1)))
  'srv1-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srv1)))
  'srv1-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srv1)))
  "Returns string type for a service object of type '<srv1>"
  "my_package/srv1")