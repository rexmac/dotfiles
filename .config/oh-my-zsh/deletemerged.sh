### Delete merged branches
deleteMerged() {
    git branch --merged | grep -v "\*" | xargs -n 1 git branch -d
}
alias deletemerged=deleteMerged

