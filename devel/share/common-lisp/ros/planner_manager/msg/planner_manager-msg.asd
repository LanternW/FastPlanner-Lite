
(cl:in-package :asdf)

(defsystem "planner_manager-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Polynome" :depends-on ("_package_Polynome"))
    (:file "_package_Polynome" :depends-on ("_package"))
    (:file "PositionCommand" :depends-on ("_package_PositionCommand"))
    (:file "_package_PositionCommand" :depends-on ("_package"))
  ))