txt_prefix=image


# evo for streo
yes | evo_traj kitti ${txt_prefix}_streo.txt --align --correct_scale --ref=evo/gt_streo.txt --plot_mode=xz --save_plot evo/output/traj_streo.png --save_table evo/output/traj_streo.csv
yes | evo_ape kitti evo/gt_streo.txt ${txt_prefix}_streo.txt --plot_mode xz  --align --correct_scale --save_plot evo/output/ape_streo.png --save_results evo/output/ape_streo.zip --plot_colormap_min 0 --plot_colormap_max 15
yes | evo_rpe kitti evo/gt_streo.txt ${txt_prefix}_streo.txt --plot_mode xz  --align --correct_scale --save_plot evo/output/rpe_streo.png --save_results evo/output/rpe_streo.zip --plot_colormap_min 0 --plot_colormap_max 1.5

# mono traj all
yes | evo_traj kitti ${txt_prefix}_00.txt ${txt_prefix}_01.txt ${txt_prefix}_mean.txt --align --correct_scale --ref=evo/gt_mono.txt --plot_mode=xz --save_plot evo/output/traj_all.png


# evo_traj by mono group
yes | evo_traj kitti ${txt_prefix}_00.txt --align --correct_scale --ref=evo/gt_mono.txt --plot_mode=xz --save_plot evo/output/traj0.png --save_table evo/output/traj0.csv
yes | evo_traj kitti ${txt_prefix}_01.txt --align --correct_scale --ref=evo/gt_mono.txt --plot_mode=xz --save_plot evo/output/traj1.png --save_table evo/output/traj1.csv
yes | evo_traj kitti ${txt_prefix}_mean.txt --align --correct_scale --ref=evo/gt_mono.txt --plot_mode=xz --save_plot evo/output/traj_mean.png --save_table evo/output/traj_mean.csv


# evo_ape by mono group
yes | evo_ape kitti evo/gt_mono.txt ${txt_prefix}_00.txt --plot_mode xz  --align --correct_scale --save_plot evo/output/ape0.png --save_results evo/output/ape0.zip --plot_colormap_min 0 --plot_colormap_max 15
yes | evo_ape kitti evo/gt_mono.txt ${txt_prefix}_01.txt --plot_mode xz  --align --correct_scale --save_plot evo/output/ape1.png --save_results evo/output/ape1.zip --plot_colormap_min 0 --plot_colormap_max 15
yes | evo_ape kitti evo/gt_mono.txt ${txt_prefix}_mean.txt --plot_mode xz  --align --correct_scale --save_plot evo/output/ape_mean.png --save_results evo/output/ape_mean.zip --plot_colormap_min 0 --plot_colormap_max 15


# evo_rpe by mono group
yes | evo_rpe kitti evo/gt_mono.txt ${txt_prefix}_00.txt --plot_mode xz  --align --correct_scale --save_plot evo/output/rpe0.png --save_results evo/output/rpe0.zip --plot_colormap_min 0 --plot_colormap_max 1.5
yes | evo_rpe kitti evo/gt_mono.txt ${txt_prefix}_01.txt --plot_mode xz  --align --correct_scale --save_plot evo/output/rpe1.png --save_results evo/output/rpe1.zip --plot_colormap_min 0 --plot_colormap_max 1.5
yes | evo_rpe kitti evo/gt_mono.txt ${txt_prefix}_mean.txt --plot_mode xz  --align --correct_scale --save_plot evo/output/rpe_mean.png --save_results evo/output/rpe_mean.zip --plot_colormap_min 0 --plot_colormap_max 1.5


# evo_res by mono group
yes | evo_res evo/output/ape*.zip --save_table evo/output/ape_table.csv --save_plot evo/output/ape_result.png
yes | evo_res evo/output/rpe*.zip --save_table evo/output/rpe_table.csv --save_plot evo/output/rpe_result.png
