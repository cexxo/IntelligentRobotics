
(cl:in-package :asdf)

(defsystem "my_package-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :my_package-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "srv1" :depends-on ("_package_srv1"))
    (:file "_package_srv1" :depends-on ("_package"))
    (:file "srv2" :depends-on ("_package_srv2"))
    (:file "_package_srv2" :depends-on ("_package"))
  ))