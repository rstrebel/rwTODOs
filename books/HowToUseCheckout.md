Q01771@CND8243WF2 MINGW64 /LESSON2/rwTODOs (master)
$ git branch update_books

Q01771@CND8243WF2 MINGW64 /LESSON2/rwTODOs (master)
$ git branch
* master
  update_books

Q01771@CND8243WF2 MINGW64 /LESSON2/rwTODOs (master)
$ git checkout
Your branch is ahead of 'origin/master' by 6 commits.
  (use "git push" to publish your local commits)

Q01771@CND8243WF2 MINGW64 /LESSON2/rwTODOs (master)
$ git checkout update_books
Switched to branch 'update_books'

Q01771@CND8243WF2 MINGW64 /LESSON2/rwTODOs (update_books)
$ ll -roth
total 17K
-rw-r--r-- 1 Q01771  12K Jul 16 15:53 LICENSE
-rw-r--r-- 1 Q01771   86 Jul 16 15:53 README.md
drwxr-xr-x 1 Q01771    0 Aug  3 10:58 videos/
drwxr-xr-x 1 Q01771    0 Nov  6 16:17 books/
drwxr-xr-x 1 Q01771    0 Nov  6 17:07 tutorials/
drwxr-xr-x 1 Q01771    0 Nov  6 17:07 articles/
-rw-r--r-- 1 Q01771 1.9K Nov 13 12:13 some_script2.sh

Q01771@CND8243WF2 MINGW64 /LESSON2/rwTODOs (update_books)
$ cd books/

Q01771@CND8243WF2 MINGW64 /LESSON2/rwTODOs/books (update_books)
$ ll
total 1
-rw-r--r-- 1 Q01771 1049089 331 Aug 15 15:02 book_ideas.md

Q01771@CND8243WF2 MINGW64 /LESSON2/rwTODOs/books (update_books)
$ vi HowToUseBranch.md

