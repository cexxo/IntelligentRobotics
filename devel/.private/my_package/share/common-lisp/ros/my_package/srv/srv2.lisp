; Auto-generated. Do not edit!


(cl:in-package my_package-srv)


;//! \htmlinclude srv2-request.msg.html

(cl:defclass <srv2-request> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass srv2-request (<srv2-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srv2-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srv2-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_package-srv:<srv2-request> is deprecated: use my_package-srv:srv2-request instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <srv2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-srv:msg-val is deprecated.  Use my_package-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srv2-request>) ostream)
  "Serializes a message object of type '<srv2-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'msg) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srv2-request>) istream)
  "Deserializes a message object of type '<srv2-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'msg) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srv2-request>)))
  "Returns string type for a service object of type '<srv2-request>"
  "my_package/srv2Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srv2-request)))
  "Returns string type for a service object of type 'srv2-request"
  "my_package/srv2Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srv2-request>)))
  "Returns md5sum for a message object of type '<srv2-request>"
  "7a81d6a911dd350f0f2b592be405d547")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srv2-request)))
  "Returns md5sum for a message object of type 'srv2-request"
  "7a81d6a911dd350f0f2b592be405d547")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srv2-request>)))
  "Returns full string definition for message of type '<srv2-request>"
  (cl:format cl:nil "std_msgs/Header msg~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srv2-request)))
  "Returns full string definition for message of type 'srv2-request"
  (cl:format cl:nil "std_msgs/Header msg~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srv2-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srv2-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srv2-request
    (cl:cons ':msg (msg msg))
))
;//! \htmlinclude srv2-response.msg.html

(cl:defclass <srv2-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass srv2-response (<srv2-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srv2-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srv2-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_package-srv:<srv2-response> is deprecated: use my_package-srv:srv2-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srv2-response>) ostream)
  "Serializes a message object of type '<srv2-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srv2-response>) istream)
  "Deserializes a message object of type '<srv2-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srv2-response>)))
  "Returns string type for a service object of type '<srv2-response>"
  "my_package/srv2Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srv2-response)))
  "Returns string type for a service object of type 'srv2-response"
  "my_package/srv2Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srv2-response>)))
  "Returns md5sum for a message object of type '<srv2-response>"
  "7a81d6a911dd350f0f2b592be405d547")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srv2-response)))
  "Returns md5sum for a message object of type 'srv2-response"
  "7a81d6a911dd350f0f2b592be405d547")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srv2-response>)))
  "Returns full string definition for message of type '<srv2-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srv2-response)))
  "Returns full string definition for message of type 'srv2-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srv2-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srv2-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srv2-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srv2)))
  'srv2-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srv2)))
  'srv2-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srv2)))
  "Returns string type for a service object of type '<srv2>"
  "my_package/srv2")