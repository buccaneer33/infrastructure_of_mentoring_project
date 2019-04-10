REPO_SHELL=$1
FRONT_GIT_REPO=$2
BACK_GIT_REPO=$3

cd $1/scripts; ls *.sh | xargs -n 1 -I{} -P666 sh {} $1 $2 $3