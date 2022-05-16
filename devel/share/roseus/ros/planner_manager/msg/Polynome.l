;; Auto-generated. Do not edit!


(when (boundp 'planner_manager::Polynome)
  (if (not (find-package "PLANNER_MANAGER"))
    (make-package "PLANNER_MANAGER"))
  (shadow 'Polynome (find-package "PLANNER_MANAGER")))
(unless (find-package "PLANNER_MANAGER::POLYNOME")
  (make-package "PLANNER_MANAGER::POLYNOME"))

(in-package "ROS")
;;//! \htmlinclude Polynome.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass planner_manager::Polynome
  :super ros::object
  :slots (_car_id _traj_id _start_time _extra_yaw _pos_pts _init_v _init_a _t_pts ))

(defmethod planner_manager::Polynome
  (:init
   (&key
    ((:car_id __car_id) 0)
    ((:traj_id __traj_id) 0)
    ((:start_time __start_time) (instance ros::time :init))
    ((:extra_yaw __extra_yaw) 0.0)
    ((:pos_pts __pos_pts) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:init_v __init_v) (instance geometry_msgs::Vector3 :init))
    ((:init_a __init_a) (instance geometry_msgs::Vector3 :init))
    ((:t_pts __t_pts) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _car_id (round __car_id))
   (setq _traj_id (round __traj_id))
   (setq _start_time __start_time)
   (setq _extra_yaw (float __extra_yaw))
   (setq _pos_pts __pos_pts)
   (setq _init_v __init_v)
   (setq _init_a __init_a)
   (setq _t_pts __t_pts)
   self)
  (:car_id
   (&optional __car_id)
   (if __car_id (setq _car_id __car_id)) _car_id)
  (:traj_id
   (&optional __traj_id)
   (if __traj_id (setq _traj_id __traj_id)) _traj_id)
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:extra_yaw
   (&optional __extra_yaw)
   (if __extra_yaw (setq _extra_yaw __extra_yaw)) _extra_yaw)
  (:pos_pts
   (&rest __pos_pts)
   (if (keywordp (car __pos_pts))
       (send* _pos_pts __pos_pts)
     (progn
       (if __pos_pts (setq _pos_pts (car __pos_pts)))
       _pos_pts)))
  (:init_v
   (&rest __init_v)
   (if (keywordp (car __init_v))
       (send* _init_v __init_v)
     (progn
       (if __init_v (setq _init_v (car __init_v)))
       _init_v)))
  (:init_a
   (&rest __init_a)
   (if (keywordp (car __init_a))
       (send* _init_a __init_a)
     (progn
       (if __init_a (setq _init_a (car __init_a)))
       _init_a)))
  (:t_pts
   (&optional __t_pts)
   (if __t_pts (setq _t_pts __t_pts)) _t_pts)
  (:serialization-length
   ()
   (+
    ;; int32 _car_id
    4
    ;; int64 _traj_id
    8
    ;; time _start_time
    8
    ;; float64 _extra_yaw
    8
    ;; geometry_msgs/Point[] _pos_pts
    (apply #'+ (send-all _pos_pts :serialization-length)) 4
    ;; geometry_msgs/Vector3 _init_v
    (send _init_v :serialization-length)
    ;; geometry_msgs/Vector3 _init_a
    (send _init_a :serialization-length)
    ;; float64[] _t_pts
    (* 8    (length _t_pts)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _car_id
       (write-long _car_id s)
     ;; int64 _traj_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _traj_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _traj_id) (= (length (_traj_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_traj_id . bv) 0) 0) s)
              (write-long (ash (elt (_traj_id . bv) 1) -1) s))
             ((and (class _traj_id) (= (length (_traj_id . bv)) 1)) ;; big1
              (write-long (elt (_traj_id . bv) 0) s)
              (write-long (if (>= _traj_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _traj_id s)(write-long (if (>= _traj_id 0) 0 #xffffffff) s)))
     ;; time _start_time
       (write-long (send _start_time :sec) s) (write-long (send _start_time :nsec) s)
     ;; float64 _extra_yaw
       (sys::poke _extra_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point[] _pos_pts
     (write-long (length _pos_pts) s)
     (dolist (elem _pos_pts)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3 _init_v
       (send _init_v :serialize s)
     ;; geometry_msgs/Vector3 _init_a
       (send _init_a :serialize s)
     ;; float64[] _t_pts
     (write-long (length _t_pts) s)
     (dotimes (i (length _t_pts))
       (sys::poke (elt _t_pts i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _car_id
     (setq _car_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int64 _traj_id
#+(or :alpha :irix6 :x86_64)
      (setf _traj_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _traj_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; time _start_time
     (send _start_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _start_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _extra_yaw
     (setq _extra_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point[] _pos_pts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos_pts (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _pos_pts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3 _init_v
     (send _init_v :deserialize buf ptr-) (incf ptr- (send _init_v :serialization-length))
   ;; geometry_msgs/Vector3 _init_a
     (send _init_a :deserialize buf ptr-) (incf ptr- (send _init_a :serialization-length))
   ;; float64[] _t_pts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _t_pts (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _t_pts i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get planner_manager::Polynome :md5sum-) "72bc589b6ca3ee355ef6cb8f666b87fd")
(setf (get planner_manager::Polynome :datatype-) "planner_manager/Polynome")
(setf (get planner_manager::Polynome :definition-)
      "int32 car_id

int64 traj_id
time start_time
float64 extra_yaw

geometry_msgs/Point[] pos_pts
geometry_msgs/Vector3 init_v
geometry_msgs/Vector3 init_a
float64[] t_pts

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :planner_manager/Polynome "72bc589b6ca3ee355ef6cb8f666b87fd")


