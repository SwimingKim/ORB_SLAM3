# evo_traj kitti CameraTrajectory.txt --align --correct_scale --ref=evo/00_mono.txt -p --plot_mode=xz

# evo_traj kitti CameraTrajectory.txt --correct_scale --ref=evo/00_mono.txt -p --plot_mode=xz --transform_left evo/left.json

# evo_rpe kitti evo/00_mono.txt CameraTrajectory.txt --plot --plot_mode xz  --align --correct_scale --pose_relation angle_deg --delta 90 --delta_unit d --align_origin

evo_rpe kitti evo/00_mono.txt CameraTrajectory.txt --plot --plot_mode xz  --align --correct_scale
