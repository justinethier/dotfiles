A tip from: https://gist.github.com/piscisaureus/3342247

Locate the section for your github remote in the `.git/config` file. It looks like this:

```
[remote "origin"]
  fetch = +refs/heads/*:refs/remotes/origin/*
	url = git@github.com:joyent/node.git
```

Now add the line `fetch = +refs/pull/*/head:refs/remotes/origin/pr/*` to this section. Obviously, change the github url to match your project's URL. It ends up looking like this:

```
[remote "origin"]
	fetch = +refs/heads/*:refs/remotes/origin/*
	url = git@github.com:joyent/node.git
	fetch = +refs/pull/*/head:refs/remotes/origin/pr/*
```

Now fetch all the pull requests:

```
$ git fetch origin
From github.com:joyent/node
 * [new ref]         refs/pull/1000/head -> origin/pr/1000
 * [new ref]         refs/pull/1002/head -> origin/pr/1002
 * [new ref]         refs/pull/1004/head -> origin/pr/1004
 * [new ref]         refs/pull/1009/head -> origin/pr/1009
...
```

To check out a particular pull request:

```
$ git checkout pr/999
Branch pr/999 set up to track remote branch pr/999 from origin.
Switched to a new branch 'pr/999'
```
