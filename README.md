# prune_local_branch_tool
脚本工具，用于清理远端不存在的分支，并删除工作区中对应的分支。（与远程分支无关联关系的本地分支，不包含当前分支）。

- 背景：git remote prune origin 或 git fetch -p 都可以与远程库进行同步，最终清理掉版本库中远端不存在的分支，但本地工作区中的分支并不会删除。
- 功能：首先会与远程库进行一次同步，之后会批量把这些工作区中的分支清理掉。

- 使用方式：
  - 拷贝到需要清理的工程下，执行 ./prune_local_branch.sh
  - 存储在固定位置，配置 alias
  - 其他你喜欢的方式
