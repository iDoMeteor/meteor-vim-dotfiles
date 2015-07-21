# added for duckduckgo in elinks
function ddg () {
  str=""
  cnt=0

  for i in $(seq $(echo $@ | wc -w))
  do
    tmp='$'$i

    if [ $cnt -gt 0 ]; then
      str="$str+$(eval "echo $tmp")"
    else
      str="$(eval "echo $tmp")"
    fi

    cnt=$((cnt + 1))
  done

  elinks http://duckduckgo.com/lite/?q=$str
  return 0
}