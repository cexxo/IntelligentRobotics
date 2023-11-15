; Auto-generated. Do not edit!


(cl:in-package my_package-msg)


;//! \htmlinclude RVL.msg.html

(cl:defclass <RVL> (roslisp-msg-protocol:ros-message)
  ((ID
    :reader ID
    :initarg :ID
    :type cl:integer
    :initform 0)
   (Name
    :reader Name
    :initarg :Name
    :type cl:string
    :initform "")
   (Level
    :reader Level
    :initarg :Level
    :type cl:integer
    :initform 0))
)

(cl:defclass RVL (<RVL>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RVL>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RVL)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_package-msg:<RVL> is deprecated: use my_package-msg:RVL instead.")))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <RVL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-msg:ID-val is deprecated.  Use my_package-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'Name-val :lambda-list '(m))
(cl:defmethod Name-val ((m <RVL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-msg:Name-val is deprecated.  Use my_package-msg:Name instead.")
  (Name m))

(cl:ensure-generic-function 'Level-val :lambda-list '(m))
(cl:defmethod Level-val ((m <RVL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-msg:Level-val is deprecated.  Use my_package-msg:Level instead.")
  (Level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RVL>) ostream)
  "Serializes a message object of type '<RVL>"
  (cl:let* ((signed (cl:slot-value msg 'ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Name))
  (cl:let* ((signed (cl:slot-value msg 'Level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RVL>) istream)
  "Deserializes a message object of type '<RVL>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Level) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RVL>)))
  "Returns string type for a message object of type '<RVL>"
  "my_package/RVL")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RVL)))
  "Returns string type for a message object of type 'RVL"
  "my_package/RVL")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RVL>)))
  "Returns md5sum for a message object of type '<RVL>"
  "5b4ec2aa60da3db4c69006afb31b0c05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RVL)))
  "Returns md5sum for a message object of type 'RVL"
  "5b4ec2aa60da3db4c69006afb31b0c05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RVL>)))
  "Returns full string definition for message of type '<RVL>"
  (cl:format cl:nil "int32 ID~%string Name~%int32 Level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RVL)))
  "Returns full string definition for message of type 'RVL"
  (cl:format cl:nil "int32 ID~%string Name~%int32 Level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RVL>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'Name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RVL>))
  "Converts a ROS message object to a list"
  (cl:list 'RVL
    (cl:cons ':ID (ID msg))
    (cl:cons ':Name (Name msg))
    (cl:cons ':Level (Level msg))
))
