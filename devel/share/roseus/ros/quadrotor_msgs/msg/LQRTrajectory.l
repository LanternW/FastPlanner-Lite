;; Auto-generated. Do not edit!


(when (boundp 'quadrotor_msgs::LQRTrajectory)
  (if (not (find-package "QUADROTOR_MSGS"))
    (make-package "QUADROTOR_MSGS"))
  (shadow 'LQRTrajectory (find-package "QUADROTOR_MSGS")))
(unless (find-package "QUADROTOR_MSGS::LQRTRAJECTORY")
  (make-package "QUADROTOR_MSGS::LQRTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude LQRTrajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ACTION_ADD*" (find-package "QUADROTOR_MSGS::LQRTRAJECTORY"))
(shadow '*ACTION_ADD* (find-package "QUADROTOR_MSGS::LQRTRAJECTORY"))
(defconstant quadrotor_msgs::LQRTrajectory::*ACTION_ADD* 1)
(intern "*ACTION_ABORT*" (find-package "QUADROTOR_MSGS::LQRTRAJECTORY"))
(shadow '*ACTION_ABORT* (find-package "QUADROTOR_MSGS::LQRTRAJECTORY"))
(defconstant quadrotor_msgs::LQRTrajectory::*ACTION_ABORT* 2)
(intern "*ACTION_WARN_START*" (find-package "QUADROTOR_MSGS::LQRTRAJECTORY"))
(shadow '*ACTION_WARN_START* (find-package "QUADROTOR_MSGS::LQRTRAJECTORY"))
(defconstant quadrotor_msgs::LQRTrajectory::*ACTION_WARN_START* 3)
(intern "*ACTION_WARN_FINAL*" (find-package "QUADROTOR_MSGS::LQRTRAJECTORY"))
(shadow '*ACTION_WARN_FINAL* (find-package "QUADROTOR_MSGS::LQRTRAJECTORY"))
(defconstant quadrotor_msgs::LQRTrajectory::*ACTION_WARN_FINAL* 4)
(intern "*ACTION_WARN_IMPOSSIBLE*" (find-package "QUADROTOR_MSGS::LQRTRAJECTORY"))
(shadow '*ACTION_WARN_IMPOSSIBLE* (find-package "QUADROTOR_MSGS::LQRTRAJECTORY"))
(defconstant quadrotor_msgs::LQRTrajectory::*ACTION_WARN_IMPOSSIBLE* 5)
(defclass quadrotor_msgs::LQRTrajectory
  :super ros::object
  :slots (_header _trajectory_id _action _r _start_yaw _final_yaw _s0 _ut _sf _t_f _debug_info ))

(defmethod quadrotor_msgs::LQRTrajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:trajectory_id __trajectory_id) 0)
    ((:action __action) 0)
    ((:r __r) 0.0)
    ((:start_yaw __start_yaw) 0.0)
    ((:final_yaw __final_yaw) 0.0)
    ((:s0 __s0) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:ut __ut) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:sf __sf) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:t_f __t_f) 0.0)
    ((:debug_info __debug_info) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _trajectory_id (round __trajectory_id))
   (setq _action (round __action))
   (setq _r (float __r))
   (setq _start_yaw (float __start_yaw))
   (setq _final_yaw (float __final_yaw))
   (setq _s0 __s0)
   (setq _ut __ut)
   (setq _sf __sf)
   (setq _t_f (float __t_f))
   (setq _debug_info (string __debug_info))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:trajectory_id
   (&optional __trajectory_id)
   (if __trajectory_id (setq _trajectory_id __trajectory_id)) _trajectory_id)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:start_yaw
   (&optional __start_yaw)
   (if __start_yaw (setq _start_yaw __start_yaw)) _start_yaw)
  (:final_yaw
   (&optional __final_yaw)
   (if __final_yaw (setq _final_yaw __final_yaw)) _final_yaw)
  (:s0
   (&optional __s0)
   (if __s0 (setq _s0 __s0)) _s0)
  (:ut
   (&optional __ut)
   (if __ut (setq _ut __ut)) _ut)
  (:sf
   (&optional __sf)
   (if __sf (setq _sf __sf)) _sf)
  (:t_f
   (&optional __t_f)
   (if __t_f (setq _t_f __t_f)) _t_f)
  (:debug_info
   (&optional __debug_info)
   (if __debug_info (setq _debug_info __debug_info)) _debug_info)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _trajectory_id
    4
    ;; uint32 _action
    4
    ;; float64 _r
    8
    ;; float64 _start_yaw
    8
    ;; float64 _final_yaw
    8
    ;; float64[6] _s0
    (* 8    6)
    ;; float64[3] _ut
    (* 8    3)
    ;; float64[6] _sf
    (* 8    6)
    ;; float64 _t_f
    8
    ;; string _debug_info
    4 (length _debug_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _trajectory_id
       (write-long _trajectory_id s)
     ;; uint32 _action
       (write-long _action s)
     ;; float64 _r
       (sys::poke _r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _start_yaw
       (sys::poke _start_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _final_yaw
       (sys::poke _final_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[6] _s0
     (dotimes (i 6)
       (sys::poke (elt _s0 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _ut
     (dotimes (i 3)
       (sys::poke (elt _ut i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[6] _sf
     (dotimes (i 6)
       (sys::poke (elt _sf i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _t_f
       (sys::poke _t_f (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _debug_info
       (write-long (length _debug_info) s) (princ _debug_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _trajectory_id
     (setq _trajectory_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _action
     (setq _action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _r
     (setq _r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _start_yaw
     (setq _start_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _final_yaw
     (setq _final_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[6] _s0
   (dotimes (i (length _s0))
     (setf (elt _s0 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _ut
   (dotimes (i (length _ut))
     (setf (elt _ut i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[6] _sf
   (dotimes (i (length _sf))
     (setf (elt _sf i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _t_f
     (setq _t_f (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _debug_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _debug_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get quadrotor_msgs::LQRTrajectory :md5sum-) "46be446c56bc8bf131978edfc4464480")
(setf (get quadrotor_msgs::LQRTrajectory :datatype-) "quadrotor_msgs/LQRTrajectory")
(setf (get quadrotor_msgs::LQRTrajectory :definition-)
      "Header header

# the trajectory id, starts from \"1\".
uint32 trajectory_id

# the action command for trajectory server.
uint32 ACTION_ADD           =   1
uint32 ACTION_ABORT         =   2
uint32 ACTION_WARN_START           =   3
uint32 ACTION_WARN_FINAL           =   4
uint32 ACTION_WARN_IMPOSSIBLE      =   5
uint32 action

# the weight coefficient of the control effort
float64 r

# the yaw command
float64 start_yaw
float64 final_yaw

# the initial and final state
float64[6] s0
float64[3] ut
 
float64[6] sf 

# the optimal arrival time
float64 t_f

string debug_info

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

")



(provide :quadrotor_msgs/LQRTrajectory "46be446c56bc8bf131978edfc4464480")


