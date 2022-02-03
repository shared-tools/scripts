
find . -name ".gitignore" -print0 | while read -d $'\0' file
do
  sed -i.bak '/\/gradlew/d' $file
  rm -rf $file".bak"
done
