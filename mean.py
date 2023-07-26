import os

cam = [0, 1]
# CameraTrajectory_00.txt

txt_prefix = "CameraTrajectory"

traj_list = []
for c in cam:
    filename = "%s_%02d.txt" % (txt_prefix, c)
    print(filename)

    f = open(filename, "r")

    lines = f.readlines()
    for line in lines:
        items = line.replace("\n", "").split(" ")
        traj_list.extend(items)

    print("size: %d" % len(traj_list))
    f.close()

print("size: %d" % len(traj_list))

f = open("%s.txt" % txt_prefix, "w")

half_size = int(len(traj_list) * 0.5)
print("half: %d" % half_size)

for i in range(half_size):
    f_item = float(traj_list[i])
    s_item = float(traj_list[i + half_size])
    mean = (f_item + s_item) * 0.5
    # print("mean %.9f" % mean)
    # print(mean)
    f.write("%.9f" % mean)
    if i % 12 == 11:
        f.write("\n")
    else:
        f.write(" ")

f.close()