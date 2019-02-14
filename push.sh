#上传readme
git add .
git commit -m "push.sh" 
git log
git status

#推送远程仓库
git remote add origin https://github.com/1548976092/git_go.git
git push -u origin master
