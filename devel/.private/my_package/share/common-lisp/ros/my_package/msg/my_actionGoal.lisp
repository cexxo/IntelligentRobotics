; Auto-generated. Do not edit!


(cl:in-package my_package-msg)


;//! \htmlinclude my_actionGoal.msg.html

(cl:defclass <my_actionGoal> (roslisp-msg-protocol:ros-message)
  ((goal_header
    :reader goal_header
    :initarg :goal_header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (maximumCharge
    :reader maximumCharge
    :initarg :maximumCharge
    :type cl:integer
    :initform 0))
)

(cl:defclass my_actionGoal (<my_actionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_actionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_actionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_package-msg:<my_actionGoal> is deprecated: use my_package-msg:my_actionGoal instead.")))

(cl:ensure-generic-function 'goal_header-val :lambda-list '(m))
(cl:defmethod goal_header-val ((m <my_actionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-msg:goal_header-val is deprecated.  Use my_package-msg:goal_header instead.")
  (goal_header m))

(cl:ensure-generic-function 'maximumCharge-val :lambda-list '(m))
(cl:defmethod maximumCharge-val ((m <my_actionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-msg:maximumCharge-val is deprecated.  Use my_package-msg:maximumCharge instead.")
  (maximumCharge m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_actionGoal>) ostream)
  "Serializes a message object of type '<my_actionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'maximumCharge)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_actionGoal>) istream)
  "Deserializes a message object of type '<my_actionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'maximumCharge) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_actionGoal>)))
  "Returns string type for a message object of type '<my_actionGoal>"
  "my_package/my_actionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_actionGoal)))
  "Returns string type for a message object of type 'my_actionGoal"
  "my_package/my_actionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_actionGoal>)))
  "Returns md5sum for a message object of type '<my_actionGoal>"
  "3cba772f93883575bbc47c2ecc654bb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_actionGoal)))
  "Returns md5sum for a message object of type 'my_actionGoal"
  "3cba772f93883575bbc47c2ecc654bb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_actionGoal>)))
  "Returns full string definition for message of type '<my_actionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%std_msgs/Header goal_header~%int32 maximumCharge~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_actionGoal)))
  "Returns full string definition for message of type 'my_actionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%std_msgs/Header goal_header~%int32 maximumCharge~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_actionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_actionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'my_actionGoal
    (cl:cons ':goal_header (goal_header msg))
    (cl:cons ':maximumCharge (maximumCharge msg))
))