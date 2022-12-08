# Magma git setup

Setup Development repo for new branch:
```bash
bash -c "$(curl -sL https://github.com/ShubhamTatvamasi/magma-git/raw/master/magma-git.sh)"
```

https://github.com/magma/magma/blob/master/.github/workflows/semantic-pr.yml#L59

---

cherry-pick a commit:
```bash
git show d1229589ed38c8ec385d2cbb2759168852af8d86

git fetch upstream
git checkout v1.8
git pull upstream v1.8

git checkout -b cherry-pick-updated-docker-install

git cherry-pick d1229589ed38c8ec385d2cbb2759168852af8d86

# if you see conflicts
git add .
git cherry-pick --continue
```

---

Add your personal remote repo as `magma`:
```bash
git remote add magma git@github.com:ShubhamTatvamasi/magma.git
git push magma operator-artifactory-push-fix

# For removing
git remote remove magma
```

- In short, the format is `type(scope): Title`, e.g. `fix(agw): Fix pyroute2 dependency`

Clone Magma repo:
```bash
git clone git@github.com:ShubhamTatvamasi/magma.git
cd magma
```

Change remote url:
```bash
git remote set-url origin git@github.com:ShubhamTatvamasi/magma.git
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

