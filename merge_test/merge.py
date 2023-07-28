import os
import glob

source_folder = "../ORB_SLAM3_DATA/00"
left_files = glob.glob("%s/image_0/*.png" % source_folder)
right_files = glob.glob("%s/image_1/*.png" % source_folder)

output_folder = "../ORB_SLAM3_DATA/00/merge"

if os.path.exists(output_folder) == False:
    os.mkdir(output_folder)

print(len(left_files))
print(len(right_files))

left_files = sorted(left_files)
right_files = sorted(right_files)

# for index in range(0, 100):
for index in range(len(left_files)):
    left_file = left_files[index]
    right_file = right_files[index]

    left_crop_file = left_file.replace("%s/image_0/" % source_folder, output_folder+"/lcrop_")
    right_crop_file = left_file.replace("%s/image_0/" % source_folder, output_folder+"/rcrop_")
    output_file = left_file.replace("%s/image_0" % source_folder, output_folder)

    cmd = 'ffmpeg -i %s -filter:v "crop=625:376:0:0" -c:a copy %s -y -loglevel error' % (left_file, left_crop_file)
    # print(cmd)
    os.system(cmd)

    cmd = 'ffmpeg -i %s -filter:v "crop=621:376:620:0" -c:a copy %s -y -loglevel error' % (right_file, right_crop_file)
    # print(cmd)
    os.system(cmd)

    # ffmpeg -i crop.png -i r000000.png -filter_complex hstack merge.png -y
    cmd = "ffmpeg -i %s -i %s -filter_complex hstack %s -y -loglevel error" % (left_crop_file, right_crop_file, output_file)
    # print(cmd)
    os.system(cmd)

    os.remove(left_crop_file)
    os.remove(right_crop_file)

    print("[index] %03d" % index)
