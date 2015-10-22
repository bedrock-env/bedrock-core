# add each topic folder to fpath so that they can add functions and completion scripts
for topic_folder ($BEDROCK_DIR/* $BEDROCK_DIR/extensions/**/*)
if [ -d $topic_folder ];
then
  basename=`basename $topic_folder`
  if ! [ "$basename" = "script" ];
  then
    fpath=($topic_folder $fpath);
  fi;
fi;
