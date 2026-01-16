#!/bin/bash

############ xargs による一括処理 ############

####### コマンドに引数を渡して実行してもらう #######

### 小問

# 1,2,3,4 の名前のディレクトリ作成
seq 4 | xargs mkdir

# 1,2,3,4 の名前のディレクトリ削除
seq 4 | xargs rmdir

# 1, 3のディレクトリを作成して、　２、４に変更する
mkdir 1 3
seq 4 | xargs -n2 mv
ls -d 2 4

# dir_1 , dir_2, dir_3, dir_4 という名前の４個のディレクトリを作成
seq 4 | xargs -I@ mkdir dir_@
ls -d dir_*

# 上記削除
seq 4 | xargs -I@ rmdir dir_@