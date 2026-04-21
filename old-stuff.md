# Removed features

Now managed completely with chezmoi and CLI tools are installed in `tasks/main-packages.yml`:

```yaml
    - name: Install Oh My Zsh
      ansible.builtin.include_role:
        name: lorenzobettini.oh_my_zsh
      vars:
        with_starship: false
        copy_dot_files: false
```

From `requirements.yml`:

```yaml
  # Install my own roles from GitHub
  - name: lorenzobettini.oh_my_zsh
    src: https://github.com/LorenzoBettini/ansible-molecule-oh-my-zsh-example/
```