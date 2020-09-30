# prepare-commit-msg

Auto prefix tag hook.

```
git switch -c feature/abcdef-awesome-feature
git commit -m "awesome feature"
git log -1
[#abcdef] awesome feature
```

## copy_prepare-commit-msg_recursively.sh

```
$ ./copy_prepare-commit-msg_recursively.sh ~/git/works

cp ./prepare-commit-msg ~/git/works/repo1/.git/hooks/prepare-commit-msg
cp ./prepare-commit-msg ~/git/works/repo2/.git/hooks/prepare-commit-msg
cp ./prepare-commit-msg ~/git/works/repo3/.git/hooks/prepare-commit-msg
...
```