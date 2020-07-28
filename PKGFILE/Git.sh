#check git
[ -x $(which git) ]||exec echo "git未安装"


#github自动化同步工具
autopush()
{
case $@ in
	$empty)
		something=nothing
		;;
	 *)
		 something=$@
		 ;;
esac		 
git add -A
git commit -m "$something"
git push origin $(git branch | awk '{print $2}')
}

#git30秒配置工具
#bash only
startgit()
{
printf "Email:"
read email
printf "git用户名:" 
read gituser
git config --global user.name "$gituser"
git config --global user.email "$email"
echo "git初始化完成"
echo "开始学习git吧。但是，这次又会坚持多久呢……"
}


#自动化擦除commit工具
autocc()
{
	
if [ -d .git ]; then
	echo "看来commit即将消失……"
	old_branch=$(git branch | awk '{print $2}')
	git checkout --orphan null_branch
	git add -A
	git commit -am "porting to new branch"
	git branch -D $old_branch
	git branch -m $old_branch
	echo "如果git返回错误信息"
	echo "删除.git/hooks/pre-push"
	git push -f origin $old_branch
	unset old_branch
fi
}
