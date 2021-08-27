function giferize() {
  palette="/tmp/palette.png"

  # filters="fps=25,crop=245:245:125:119,scale=77:-1:flags=lanczos"
  # trim=start_frame=12:end_frame=431,
  filters="fps=25,scale=500:-1:flags=lanczos"

  ffmpeg -v warning -i $1 -vf "$filtersalettegen" -y $palette
  ffmpeg -v warning -i $1 -i $palette -lavfi "$filters [x]; [x][1:v] paletteuse" -y "optimized_$1"
}
