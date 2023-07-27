yes | evo_traj kitti CameraTrajectory_00.txt --align --correct_scale --ref=evo/00_mono.txt --plot_mode=xz --save_plot evo/output/traj0.png --save_table evo/output/traj0.csv
yes | evo_traj kitti CameraTrajectory_01.txt --align --correct_scale --ref=evo/00_mono.txt --plot_mode=xz --save_plot evo/output/traj1.png --save_table evo/output/traj1.csv
yes | evo_traj kitti CameraTrajectory_mean.txt --align --correct_scale --ref=evo/00_mono.txt --plot_mode=xz --save_plot evo/output/traj_mean.png --save_table evo/output/traj_mean.csv

yes | evo_ape kitti evo/00_mono.txt CameraTrajectory_00.txt --plot_mode xz  --align --correct_scale --save_plot evo/output/ape0.png --save_results evo/output/ape0.zip
yes | evo_ape kitti evo/00_mono.txt CameraTrajectory_01.txt --plot_mode xz  --align --correct_scale --save_plot evo/output/ape1.png --save_results evo/output/ape1.zip
yes | evo_ape kitti evo/00_mono.txt CameraTrajectory_mean.txt --plot_mode xz  --align --correct_scale --save_plot evo/output/ape_mean.png --save_results evo/output/ape_mean.zip

yes | evo_rpe kitti evo/00_mono.txt CameraTrajectory_00.txt --plot_mode xz  --align --correct_scale --save_plot evo/output/rpe0.png --save_results evo/output/rpe0.zip
yes | evo_rpe kitti evo/00_mono.txt CameraTrajectory_01.txt --plot_mode xz  --align --correct_scale --save_plot evo/output/rpe1.png --save_results evo/output/rpe1.zip
yes | evo_rpe kitti evo/00_mono.txt CameraTrajectory_mean.txt --plot_mode xz  --align --correct_scale --save_plot evo/output/rpe_mean.png --save_results evo/output/rpe_mean.zip

yes | evo_res evo/output/ape*.zip --save_table evo/output/ape_table.csv --use_filenames --save_plot evo/output/ape_result.png
yes | evo_res evo/output/rpe*.zip --save_table evo/output/rpe_table.csv --use_filenames --save_plot evo/output/rpe_result.png
