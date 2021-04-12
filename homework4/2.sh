#!usr/bin/env bash

function numbyage {
	count20=0
	count20_30=0
	count30=0
	i=0
	for i in "${age[@]}";do
	  if [[ $i -lt 20 ]]
	  then
	  ((count20++))
          elif [[ $i -le 30 ]]
	  then
	  ((count20_30++))
          elif [[ $i -gt 30 ]]
	  then
          ((count30++))
          fi
	done
	#浮点数表示方法
	printf "20岁以下%-3d，百分比：%-5.2f%% \n" $count20 $(echo "scale=10;$count20/$count*100" |bc -l)
        printf "20-30岁%-3d，百分比：%-5.2f%% \n" $count20_30 $(echo "scale=10;$count20_30/$count*100" |bc -l)
        printf "30岁以上%-3d，百分比：%-5.2f%% \n" $count30 $(echo "scale=10;$count30/$count*100" |bc -l)
 }


function position {
	#空格分隔有所借鉴
	array=($(awk -vRS=' ' '!a[$1]++' <<< "${position[@]}"))
	declare -A member
	#declare member有所借鉴
	i=0
	for((i=0;i<${#array[@]};i++))
	{
		num=${array[$i]}
		member["$num"]=0
	}
	#数组计数
	for a in "${position[@]}";do
	   case $a in
		   ${array[0]})
			   ((member["${array[0]}"]++));;
		   ${array[1]})
			   ((member["${array[1]}"]++));;
	           ${array[2]})
			   ((member["${array[2]}"]++));;
                   ${array[3]})
			   ((member["${array[3]}"]++));;
	           ${array[4]})
			   ((member["${array[4]}"]++));;
		   esac
        done
	for((i=0;i<${#array[@]};i++))
	{
	  a=${member[${array[$i]}]}
	  #浮点数表示方法
          printf "%-10s :%10d %10.2f %% \n" ${array[$i]} $a $(echo "scale=10; $a/$count*100" | bc -l)
  }

}

function lsname {
	i=0
	lname=0
	sname=100
	while [[ i -lt $count ]]
	do
	  #//\*/要排除字符串中的*的干扰
	  name=${player[$i]//\*/}
	  str=${#name}
	  #s为长度
	  if [[ str -gt lname ]];then
		  lname=$str
		  lnum=$i
	  elif [[ str -lt sname ]];then
		  sname=$str
		  snum=$i
	  fi
	  ((i++))
        done
	#snum/lunm为标号
	echo "名字最长 ${player[lnum]//\*/ }"
	#输出长名字时没有//\*/结果中会输出*
        echo "名字最短 ${player[snum]}"

}


function byage {

	oldage=0
	youngage=100
	i=0
	while [[ i -lt $count ]]
	do
		agenum=age[$i]
		if [[ agenum -lt $youngage ]];then
			youngage=$agenum
			ynum=$i
		elif [[ agenum -gt $oldage ]];then
			oldage=$agenum
			onum=$i
		fi
		((i++))
	done
	#onum/ynum是标号
	echo "年龄最大 ${player[onum]//\*/ } ${age[onum]}"
	echo "年龄最小 ${player[ynum]//\*/ } ${age[ynum]}"
	#输出名字还是要去掉*的影响
}
count=0
while read line
do
 ((count++))
if [[ $count -gt 1 ]];then
	#数组分割**
	str=(${line// /*})
	position[$(($count-2))]=${str[4]}
	age[$(($count-2))]=${str[5]}
	player[$(($count-2))]=${str[8]}
fi
done < worldcupplayerinfo.tsv
count=$(($count-1))
numbyage
echo "---------------------------------------------------------"
position
echo "---------------------------------------------------------"
lsname
echo "---------------------------------------------------------"
byage
