function _gitignore (){
   gi_file=$(shopt -s nocaseglob; ls ~/Programming/ThirdParty/gitignore/$1\.gitignore)
   if [ -f ./.gitignore ]; then
     echo "gitignore already exists" && return 1
   else
     cp  $gi_file ./.gitignore && echo "copied $1 to .gitignore" && ln -s .gitignore $1.gitignore
   fi
 }
