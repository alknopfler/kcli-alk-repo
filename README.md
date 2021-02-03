# kcli-alk-repo


Private registry product just to be used by kcli repo 
This deploy a private docker repo in your vm usando kcli to deploy everything.

### How to deploy:

 ```commandline
$ kcli create repo -u https://github.com/alknopfler/kcli-alk-repo <reponame>
```

After any change in the repo you have to update:

```commandline
kcli update repo REPO_NAME
```

After you've got the repo added, you could create a private docker repository in your VM:

```commandline
kcli create product docker-private-registry
```

