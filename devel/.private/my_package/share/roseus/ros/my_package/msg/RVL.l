;; Auto-generated. Do not edit!


(when (boundp 'my_package::RVL)
  (if (not (find-package "MY_PACKAGE"))
    (make-package "MY_PACKAGE"))
  (shadow 'RVL (find-package "MY_PACKAGE")))
(unless (find-package "MY_PACKAGE::RVL")
  (make-package "MY_PACKAGE::RVL"))

(in-package "ROS")
;;//! \htmlinclude RVL.msg.html


(defclass my_package::RVL
  :super ros::object
  :slots (_ID _Name _Level ))

(defmethod my_package::RVL
  (:init
   (&key
    ((:ID __ID) 0)
    ((:Name __Name) "")
    ((:Level __Level) 0)
    )
   (send-super :init)
   (setq _ID (round __ID))
   (setq _Name (string __Name))
   (setq _Level (round __Level))
   self)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:Name
   (&optional __Name)
   (if __Name (setq _Name __Name)) _Name)
  (:Level
   (&optional __Level)
   (if __Level (setq _Level __Level)) _Level)
  (:serialization-length
   ()
   (+
    ;; int32 _ID
    4
    ;; string _Name
    4 (length _Name)
    ;; int32 _Level
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ID
       (write-long _ID s)
     ;; string _Name
       (write-long (length _Name) s) (princ _Name s)
     ;; int32 _Level
       (write-long _Level s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _Name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _Level
     (setq _Level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get my_package::RVL :md5sum-) "5b4ec2aa60da3db4c69006afb31b0c05")
(setf (get my_package::RVL :datatype-) "my_package/RVL")
(setf (get my_package::RVL :definition-)
      "int32 ID
string Name
int32 Level

")



(provide :my_package/RVL "5b4ec2aa60da3db4c69006afb31b0c05")


