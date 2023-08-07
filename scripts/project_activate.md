## Terminal Commands
These commands have interaction with shell and some require input

### Conda Requirements

#### Installs miniconda in home directory
```
/tmp/miniconda.sh -f -p $HOME/miniconda
echo "=== Activate Conda  ==="
echo "source ~/.bashrc or relanuch terminal"
```

#### Puts (base) in prompt
```bash
echo "=== Make Conda environment (base) ==="
conda update -n base -y -c defaults conda
```

#### Additional conda packages
```bash
echo "=== Install conda packages ==="
conda update
conda install -y -c conda-forge pyyam
```

### Project Requirements

#### Installs Gems in project

```bash
bundle install
``` 

#### Runs Webserver

```bash
bundle exec jekyll serve
```





