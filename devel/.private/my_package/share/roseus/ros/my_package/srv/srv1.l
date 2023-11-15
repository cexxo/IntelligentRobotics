;; Auto-generated. Do not edit!


(when (boundp 'my_package::srv1)
  (if (not (find-package "MY_PACKAGE"))
    (make-package "MY_PACKAGE"))
  (shadow 'srv1 (find-package "MY_PACKAGE")))
(unless (find-package "MY_PACKAGE::SRV1")
  (make-package "MY_PACKAGE::SRV1"))
(unless (find-package "MY_PACKAGE::SRV1REQUEST")
  (make-package "MY_PACKAGE::SRV1REQUEST"))
(unless (find-package "MY_PACKAGE::SRV1RESPONSE")
  (make-package "MY_PACKAGE::SRV1RESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass my_package::srv1Request
  :super ros::object
  :slots (_msg _ID ))

(defmethod my_package::srv1Request
  (:init
   (&key
    ((:msg __msg) (instance std_msgs::Header :init))
    ((:ID __ID) 0)
    )
   (send-super :init)
   (setq _msg __msg)
   (setq _ID (round __ID))
   self)
  (:msg
   (&rest __msg)
   (if (keywordp (car __msg))
       (send* _msg __msg)
     (progn
       (if __msg (setq _msg (car __msg)))
       _msg)))
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _msg
    (send _msg :serialization-length)
    ;; int32 _ID
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _msg
       (send _msg :serialize s)
     ;; int32 _ID
       (write-long _ID s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _msg
     (send _msg :deserialize buf ptr-) (incf ptr- (send _msg :serialization-length))
   ;; int32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_package::srv1Response
  :super ros::object
  :slots (_msg2 _robotMessage ))

(defmethod my_package::srv1Response
  (:init
   (&key
    ((:msg2 __msg2) (instance std_msgs::Header :init))
    ((:robotMessage __robotMessage) (instance my_package::RVL :init))
    )
   (send-super :init)
   (setq _msg2 __msg2)
   (setq _robotMessage __robotMessage)
   self)
  (:msg2
   (&rest __msg2)
   (if (keywordp (car __msg2))
       (send* _msg2 __msg2)
     (progn
       (if __msg2 (setq _msg2 (car __msg2)))
       _msg2)))
  (:robotMessage
   (&rest __robotMessage)
   (if (keywordp (car __robotMessage))
       (send* _robotMessage __robotMessage)
     (progn
       (if __robotMessage (setq _robotMessage (car __robotMessage)))
       _robotMessage)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _msg2
    (send _msg2 :serialization-length)
    ;; my_package/RVL _robotMessage
    (send _robotMessage :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _msg2
       (send _msg2 :serialize s)
     ;; my_package/RVL _robotMessage
       (send _robotMessage :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _msg2
     (send _msg2 :deserialize buf ptr-) (incf ptr- (send _msg2 :serialization-length))
   ;; my_package/RVL _robotMessage
     (send _robotMessage :deserialize buf ptr-) (incf ptr- (send _robotMessage :serialization-length))
   ;;
   self)
  )

(defclass my_package::srv1
  :super ros::object
  :slots ())

(setf (get my_package::srv1 :md5sum-) "0a43d4272d4a6822c4aaf349b302052f")
(setf (get my_package::srv1 :datatype-) "my_package/srv1")
(setf (get my_package::srv1 :request) my_package::srv1Request)
(setf (get my_package::srv1 :response) my_package::srv1Response)

(defmethod my_package::srv1Request
  (:response () (instance my_package::srv1Response :init)))

(setf (get my_package::srv1Request :md5sum-) "0a43d4272d4a6822c4aaf349b302052f")
(setf (get my_package::srv1Request :datatype-) "my_package/srv1Request")
(setf (get my_package::srv1Request :definition-)
      "std_msgs/Header msg
int32 ID

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
std_msgs/Header msg2
my_package/RVL robotMessage


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: my_package/RVL
int32 ID
string Name
int32 Level
")

(setf (get my_package::srv1Response :md5sum-) "0a43d4272d4a6822c4aaf349b302052f")
(setf (get my_package::srv1Response :datatype-) "my_package/srv1Response")
(setf (get my_package::srv1Response :definition-)
      "std_msgs/Header msg
int32 ID

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
std_msgs/Header msg2
my_package/RVL robotMessage


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: my_package/RVL
int32 ID
string Name
int32 Level
")



(provide :my_package/srv1 "0a43d4272d4a6822c4aaf349b302052f")


