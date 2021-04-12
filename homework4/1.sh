#!/usr/bin/env bash

dir=`~/workspace/homework/img`

#实现命令行参数功能
function helps {
	  echo "-c        compress"
	  echo "-h        help"
	  echo "-t        turn into JPEG"
	  echo "-s        resize"
	  echo "-m        watermark"
	  echo "-n        rename"
}

#压缩
function compress {
	  quality=$1
	  for img in `ls $dir`
          do
          extension=${img##*.}
	    if [ $extension == "jpg" ];then
              echo $img;
	      out=$dir/compress_$file
              #实现压缩
	      convert -quality $quality"%" $img $out
            fi
          done
}


# 压缩分辨率
function size {
	  size=$1
	  for img in `ls $dir`
          do
	  extension=${img##*.}
	     if [ $extension == "jpg" ] || [ $extension == "png" ]  ;then
	     out=$dir/resize_$img
	     echo $img
             #实现压缩分辨率
	     convert -sample $size"%x"$size"%" $img $out
	     fi
	  done

}

#加入水印
function watermark {
	  text=$1
	  for img in `ls $dir`
	  do
	  extension=${img##*.}
	    if [ $extension == "jpg" ] || [ $extension == "png" ] ;then
	     echo $img
	     out=$dir/draw_${img%.*}.${img##*.}
	     convert -draw "text 25,40 '$text'" $img $out
	    fi
	  done
}

# JPEG格式
function trans {
  for file in `ls $dir`
    do
        extension=${file##*.}
    if [ $extension == "png" ] ;then
        out=$dir/type_${file%.*}.jpeg
        echo $out;
        convert $file $out
    fi
  done
}

# 重命名
function rename {
	  new_name=$1
	  for file in `ls $dir`
	    do
	     extension=${file##*.}
	     if [ $extension == "jpg" ] || [ $extension == "png" ];then
		echo $file
		out=$dir/$new_name.${file##*.}
		echo $out;
		convert $file $out
	     fi
	  done
}


while [[ "$#" -ne 0 ]]; do
	 case $1 in
	      	 "-c")   compress $2
			 shift 2;; 
		 "-s")   size $2 
			 shift 2;;
		 "-h")   helps
			 shift;;
		 "-m")   watermark $2 $3 $4
			 shift 4;;	
		 "-t")   trans
			 shift;;
		 "-n")   rename $2
			 shift 2;; 
	esac
done
