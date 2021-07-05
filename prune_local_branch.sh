#！/bin/sh
deleteNumber=0
#修剪分支
git fetch -p;
#查询没有远程分支联接的本地分支（不包含当前分支）
str=`git branch -vv | awk '(!/(^\*)|\[/ || /: gone\]/){print $1}'`
str=${str// /};
arr=($str);
if [ ${#arr[@]} -eq 0 ];then echo "没有需要删除的分支";
else
  #咨询用户
  read -r -p "---------检查到以下本地分支与远程分支无关联关系------------
$str
确认删除以上分支?[Y/n]" response
  response=${response:l} # tolower
  if [[ $response =~ ^(yes|y| ) ]] || [[ -z $response ]]; then
      for element in ${arr[@]}
      do
      git branch -D $element;
      done
  fi
fi
