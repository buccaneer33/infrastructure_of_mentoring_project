$SHELL=$1
$ADMIN_REPO=$2
$FRONT_REPO=$3
$BACK_REPO=$4

cd $1/scripts; ls *.sh | xargs -n 1 -I{} -P666 sh {} $1 $2 $3 $4