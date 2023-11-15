;; Auto-generated. Do not edit!


(when (boundp 'my_package::srv2)
  (if (not (find-package "MY_PACKAGE"))
    (make-package "MY_PACKAGE"))
  (shadow 'srv2 (find-package "MY_PACKAGE")))
(unless (find-package "MY_PACKAGE::SRV2")
  (make-package "MY_PACKAGE::SRV2"))
(unless (find-package "MY_PACKAGE::SRV2REQUEST")
  (make-package "MY_PACKAGE::SRV2REQUEST"))
(unless (find-package "MY_PACKAGE::SRV2RESPONSE")
  (make-package "MY_PACKAGE::SRV2RESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass my_package::srv2Request
  :super ros::object
  :slots (_msg ))

(defmethod my_package::srv2Request
  (:init
   (&key
    ((:msg __msg) (instance std_msgs::Header :init))
    )
   (send-super :init)
   (setq _msg __msg)
   self)
  (:msg
   (&rest __msg)
   (if (keywordp (car __msg))
       (send* _msg __msg)
     (progn
       (if __msg (setq _msg (car __msg)))
       _msg)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _msg
    (send _msg :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _msg
       (send _msg :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _msg
     (send _msg :deserialize buf ptr-) (incf ptr- (send _msg :serialization-length))
   ;;
   self)
  )

(defclass my_package::srv2Response
  :super ros::object
  :slots ())

(defmethod my_package::srv2Response
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

(defclass my_package::srv2
  :super ros::object
  :slots ())

(setf (get my_package::srv2 :md5sum-) "7a81d6a911dd350f0f2b592be405d547")
(setf (get my_package::srv2 :datatype-) "my_package/srv2")
(setf (get my_package::srv2 :request) my_package::srv2Request)
(setf (get my_package::srv2 :response) my_package::srv2Response)

(defmethod my_package::srv2Request
  (:response () (instance my_package::srv2Response :init)))

(setf (get my_package::srv2Request :md5sum-) "7a81d6a911dd350f0f2b592be405d547")
(setf (get my_package::srv2Request :datatype-) "my_package/srv2Request")
(setf (get my_package::srv2Request :definition-)
      "std_msgs/Header msg



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
")

(setf (get my_package::srv2Response :md5sum-) "7a81d6a911dd350f0f2b592be405d547")
(setf (get my_package::srv2Response :datatype-) "my_package/srv2Response")
(setf (get my_package::srv2Response :definition-)
      "std_msgs/Header msg



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
")



(provide :my_package/srv2 "7a81d6a911dd350f0f2b592be405d547")


