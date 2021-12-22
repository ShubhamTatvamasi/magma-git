# Magma git setup

Setup Development repo for new branch:
```bash
curl -sL https://github.com/ShubhamTatvamasi/magma-git/raw/master/magma-git.sh | \
  bash -s ShubhamTatvamasi new-branch
```

Clone Magma repo:
```bash
git clone git@github.com:ShubhamTatvamasi/magma.git
cd magma
```

Set the remote upstream as follows:
```bash
git remote add upstream https://github.com/magma/magma.git
```

Check remote repos:
```bash
git remote -v
```

Update the master branch in your local copy of the upstream repository:
```bash
git pull --rebase upstream master
```

Now, switch back to your PR branch:
```bash
git checkout fix-spelling-errors
```

Rebase your changes against the main branch:
```bash
git rebase -i master
```

PRs cannot be merged without following this process. Use to `-s` or `--signoff` flag with your commit.
```bash
git commit -s
```

In the event that you push a commit without signing off, you can amend the commit and force push to update your branch and pull request.
```bash
git commit -s --amend --no-edit
git push --force
```

https://magma.github.io/magma/docs/next/contributing/contribute_workflow#guidelines
