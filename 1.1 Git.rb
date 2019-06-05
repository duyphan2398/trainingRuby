remove branch tren remove? git push origin --delete <>
thuc thanh them git stash
so sanh git pull vs git fetch
so sanh git merge vs git rebase

=====================
Giả sử git repo của bạn có 2 branch là master, develop
Bạn đang đứng ở branch develop, làm sao để up-to-date branch master vào branch develop mà không cần checkout sang branch master


git fetch master
git merge 























-->
git fetch origin
git merge origin/master
or
git pull origin master



Làm sao để xóa local & remote branch?
-->
git push origin --delete <tênBranch>
git branch -D <tênBranch>


git stash có tác dụng với file ở trạng trái Staged hoặc Untracked hay không?
-->
Không, git stash chỉ có tác dụng vớ file ở trạng thái Modifed


Tác dụng của câu lệnh 'git push origin master:remote_master'
-->
Đưa code của nhánh master trong máy lên nhánh 'remote_master' trên remote respository 'origin'


Trên ubuntu ta dùng tool gì để xem git index
-->
gitk

Dùng gitk làm sao xem index trên 1 file cụ thể, ví dụ app/model/user.rb ?
-->
gitk app/model/user.rb

Giả định rằng bạn đang ở một thư mục git và thư mục này đang link tới nhiều remote, trong đó có 1 remote tên là heroku. Bạn hãy giải thích sự khác biệt giữa 2 câu lệnh sau:
a) git merge heroku/feature_1
b) git merge feature_1
-->
Câu a) dùng để merge branch hiện tại với branch "feature_1" ở remote.
Câu b) dùng để merge branch hiện tại với branch "feature_1" ở local
Khi nào bạn không nên sử dụng "git rebase"
-->
Khi làm việc trên 1 branch mà có nhiều người cùng phát triển branch này song song với mình thì không nên dùng "git rebase". Trường hợp thứ 2 không nên dùng "git rebase" là git rebase tạo những conflict liên tục, khi đó ta nên abort rebase process và dùng git merge


Tác dụng của câu lệnh 'git push'
-->
Đưa code của tất cả các nhánh lên tất cả các remote repository liên kết với git folder
