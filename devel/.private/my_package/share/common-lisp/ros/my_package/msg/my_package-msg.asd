
(cl:in-package :asdf)

(defsystem "my_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RVL" :depends-on ("_package_RVL"))
    (:file "_package_RVL" :depends-on ("_package"))
  ))