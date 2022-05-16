;; Auto-generated. Do not edit!


(when (boundp 'multi_map_server::VerticalOccupancyGridList)
  (if (not (find-package "MULTI_MAP_SERVER"))
    (make-package "MULTI_MAP_SERVER"))
  (shadow 'VerticalOccupancyGridList (find-package "MULTI_MAP_SERVER")))
(unless (find-package "MULTI_MAP_SERVER::VERTICALOCCUPANCYGRIDLIST")
  (make-package "MULTI_MAP_SERVER::VERTICALOCCUPANCYGRIDLIST"))

(in-package "ROS")
;;//! \htmlinclude VerticalOccupancyGridList.msg.html


(defclass multi_map_server::VerticalOccupancyGridList
  :super ros::object
  :slots (_x _y _upper _lower _mass ))

(defmethod multi_map_server::VerticalOccupancyGridList
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:upper __upper) (make-array 0 :initial-element 0 :element-type :integer))
    ((:lower __lower) (make-array 0 :initial-element 0 :element-type :integer))
    ((:mass __mass) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _upper __upper)
   (setq _lower __lower)
   (setq _mass __mass)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:upper
   (&optional __upper)
   (if __upper (setq _upper __upper)) _upper)
  (:lower
   (&optional __lower)
   (if __lower (setq _lower __lower)) _lower)
  (:mass
   (&optional __mass)
   (if __mass (setq _mass __mass)) _mass)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; int32[] _upper
    (* 4    (length _upper)) 4
    ;; int32[] _lower
    (* 4    (length _lower)) 4
    ;; int32[] _mass
    (* 4    (length _mass)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32[] _upper
     (write-long (length _upper) s)
     (dotimes (i (length _upper))
       (write-long (elt _upper i) s)
       )
     ;; int32[] _lower
     (write-long (length _lower) s)
     (dotimes (i (length _lower))
       (write-long (elt _lower i) s)
       )
     ;; int32[] _mass
     (write-long (length _mass) s)
     (dotimes (i (length _mass))
       (write-long (elt _mass i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32[] _upper
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _upper (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _upper i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _lower
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lower (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _lower i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _mass
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mass (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _mass i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get multi_map_server::VerticalOccupancyGridList :md5sum-) "7ef85cc95b82747f51eb01a16bd7c795")
(setf (get multi_map_server::VerticalOccupancyGridList :datatype-) "multi_map_server/VerticalOccupancyGridList")
(setf (get multi_map_server::VerticalOccupancyGridList :definition-)
      "float32 x
float32 y
int32[] upper
int32[] lower
int32[] mass


")



(provide :multi_map_server/VerticalOccupancyGridList "7ef85cc95b82747f51eb01a16bd7c795")


