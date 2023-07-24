import os
import argparse
import os

def run_cmd(cmd):
    print(cmd)
    os.system(cmd)

parser = argparse.ArgumentParser(description='KITTI ORB Slam3 Runner')

parser.add_argument('--s', '--sequence', type=int, default=0)

args = parser.parse_args()

print(args.sequence)

dirname = "../ORB_SLAM3_DATA/KITTI/dataset/sequences/%02d" % args.sequence
print(os.path.exists(dirname))
if os.path.exists(dirname) == False:
    cmd = "rm -rf ../ORB_SLAM3_DATA/KITTI/dataset"
    run_cmd(cmd)

    cmd = "cd ../ORB_SLAM3_DATA/KITTI && unzip data_odometry_gray.zip 'dataset/sequences/%02d/*'" % args.sequence
    run_cmd(cmd)

# Examples/Monocular/mono_kitti Vocabulary/ORBvoc.txt Examples/Monocular/KITTI04-12.yaml ../ORB_SLAM3_DATA/KITTI/dataset/sequences/21

# Examples/Monocular/KITTI00-02.yaml
# Examples/Monocular/KITTI03.yaml
# Examples/Monocular/KITTI04-12.yaml

yaml_name = ""
if args.sequence <= 2:
    yaml_name = "Examples/Monocular/KITTI00-02.yaml"
elif args.sequence == 3:
    yaml_name = "Examples/Monocular/KITTI03.yaml"
else:
    yaml_name = "Examples/Monocular/KITTI04-12.yaml"

print("==" * 20)
cmd = "Examples/Monocular/mono_kitti Vocabulary/ORBvoc.txt %s ../ORB_SLAM3_DATA/KITTI/dataset/sequences/%02d" % (yaml_name, args.sequence)
run_cmd(cmd)