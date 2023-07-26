ffmpeg -i merge_test/l000031.png -filter:v "crop=592:376:0:0" -c:a copy merge_test/lcrop.png -y  -loglevel error
ffmpeg -i merge_test/r000031.png -filter:v "crop=661:376:580:0" -c:a copy merge_test/rcrop.png -y  -loglevel error
ffmpeg -i merge_test/lcrop.png -i merge_test/rcrop.png -filter_complex hstack merge_test/merge.png -y  -loglevel error
