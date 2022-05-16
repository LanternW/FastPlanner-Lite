; Auto-generated. Do not edit!


(cl:in-package planner_manager-msg)


;//! \htmlinclude Polynome.msg.html

(cl:defclass <Polynome> (roslisp-msg-protocol:ros-message)
  ((car_id
    :reader car_id
    :initarg :car_id
    :type cl:integer
    :initform 0)
   (traj_id
    :reader traj_id
    :initarg :traj_id
    :type cl:integer
    :initform 0)
   (start_time
    :reader start_time
    :initarg :start_time
    :type cl:real
    :initform 0)
   (extra_yaw
    :reader extra_yaw
    :initarg :extra_yaw
    :type cl:float
    :initform 0.0)
   (pos_pts
    :reader pos_pts
    :initarg :pos_pts
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (init_v
    :reader init_v
    :initarg :init_v
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (init_a
    :reader init_a
    :initarg :init_a
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (t_pts
    :reader t_pts
    :initarg :t_pts
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Polynome (<Polynome>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Polynome>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Polynome)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner_manager-msg:<Polynome> is deprecated: use planner_manager-msg:Polynome instead.")))

(cl:ensure-generic-function 'car_id-val :lambda-list '(m))
(cl:defmethod car_id-val ((m <Polynome>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_manager-msg:car_id-val is deprecated.  Use planner_manager-msg:car_id instead.")
  (car_id m))

(cl:ensure-generic-function 'traj_id-val :lambda-list '(m))
(cl:defmethod traj_id-val ((m <Polynome>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_manager-msg:traj_id-val is deprecated.  Use planner_manager-msg:traj_id instead.")
  (traj_id m))

(cl:ensure-generic-function 'start_time-val :lambda-list '(m))
(cl:defmethod start_time-val ((m <Polynome>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_manager-msg:start_time-val is deprecated.  Use planner_manager-msg:start_time instead.")
  (start_time m))

(cl:ensure-generic-function 'extra_yaw-val :lambda-list '(m))
(cl:defmethod extra_yaw-val ((m <Polynome>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_manager-msg:extra_yaw-val is deprecated.  Use planner_manager-msg:extra_yaw instead.")
  (extra_yaw m))

(cl:ensure-generic-function 'pos_pts-val :lambda-list '(m))
(cl:defmethod pos_pts-val ((m <Polynome>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_manager-msg:pos_pts-val is deprecated.  Use planner_manager-msg:pos_pts instead.")
  (pos_pts m))

(cl:ensure-generic-function 'init_v-val :lambda-list '(m))
(cl:defmethod init_v-val ((m <Polynome>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_manager-msg:init_v-val is deprecated.  Use planner_manager-msg:init_v instead.")
  (init_v m))

(cl:ensure-generic-function 'init_a-val :lambda-list '(m))
(cl:defmethod init_a-val ((m <Polynome>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_manager-msg:init_a-val is deprecated.  Use planner_manager-msg:init_a instead.")
  (init_a m))

(cl:ensure-generic-function 't_pts-val :lambda-list '(m))
(cl:defmethod t_pts-val ((m <Polynome>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_manager-msg:t_pts-val is deprecated.  Use planner_manager-msg:t_pts instead.")
  (t_pts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Polynome>) ostream)
  "Serializes a message object of type '<Polynome>"
  (cl:let* ((signed (cl:slot-value msg 'car_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'traj_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'start_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'start_time) (cl:floor (cl:slot-value msg 'start_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'extra_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pos_pts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pos_pts))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'init_v) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'init_a) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 't_pts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 't_pts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Polynome>) istream)
  "Deserializes a message object of type '<Polynome>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'car_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'traj_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'extra_yaw) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pos_pts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pos_pts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'init_v) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'init_a) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 't_pts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 't_pts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Polynome>)))
  "Returns string type for a message object of type '<Polynome>"
  "planner_manager/Polynome")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Polynome)))
  "Returns string type for a message object of type 'Polynome"
  "planner_manager/Polynome")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Polynome>)))
  "Returns md5sum for a message object of type '<Polynome>"
  "72bc589b6ca3ee355ef6cb8f666b87fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Polynome)))
  "Returns md5sum for a message object of type 'Polynome"
  "72bc589b6ca3ee355ef6cb8f666b87fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Polynome>)))
  "Returns full string definition for message of type '<Polynome>"
  (cl:format cl:nil "int32 car_id~%~%int64 traj_id~%time start_time~%float64 extra_yaw~%~%geometry_msgs/Point[] pos_pts~%geometry_msgs/Vector3 init_v~%geometry_msgs/Vector3 init_a~%float64[] t_pts~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Polynome)))
  "Returns full string definition for message of type 'Polynome"
  (cl:format cl:nil "int32 car_id~%~%int64 traj_id~%time start_time~%float64 extra_yaw~%~%geometry_msgs/Point[] pos_pts~%geometry_msgs/Vector3 init_v~%geometry_msgs/Vector3 init_a~%float64[] t_pts~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Polynome>))
  (cl:+ 0
     4
     8
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pos_pts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'init_v))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'init_a))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 't_pts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Polynome>))
  "Converts a ROS message object to a list"
  (cl:list 'Polynome
    (cl:cons ':car_id (car_id msg))
    (cl:cons ':traj_id (traj_id msg))
    (cl:cons ':start_time (start_time msg))
    (cl:cons ':extra_yaw (extra_yaw msg))
    (cl:cons ':pos_pts (pos_pts msg))
    (cl:cons ':init_v (init_v msg))
    (cl:cons ':init_a (init_a msg))
    (cl:cons ':t_pts (t_pts msg))
))
