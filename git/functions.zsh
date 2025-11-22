###########################################################
### Git Functions
###########################################################

function gdiff()
{
    git diff HEAD~$1
}

function glist()
{
    git diff --name-only HEAD~$1
}

function gfile()
{
    local branch=master
    local file=$1

    if [ $2 ]; then
        branch=$1
        file=$2
    fi

    git checkout $branch **/$file/*
}

function greset()
{
    local pointer=HEAD

    if [ $1 ]; then
        pointer=HEAD~$1
    fi

    git reset $pointer
}
