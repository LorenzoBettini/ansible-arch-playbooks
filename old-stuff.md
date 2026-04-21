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

`chezmoi_modify_manager` is installed by `chezmoi` itself:

```yaml
- name: Set chezmoi_modify_manager version
  set_fact:
    chezmoi_modify_manager_version: "3.5.3"

- name: Install chezmoi_modify_manager aarch64
  become: true
  ansible.builtin.unarchive:
    src: "https://github.com/VorpalBlade/chezmoi_modify_manager/releases/download/v{{ chezmoi_modify_manager_version }}/chezmoi_modify_manager-v{{ chezmoi_modify_manager_version }}-aarch64-unknown-linux-gnu.tar.gz"
    dest: /usr/local/bin
    remote_src: true
  when: ansible_facts['architecture'] == "aarch64"

- name: Install chezmoi_modify_manager x86_64
  become: true
  ansible.builtin.unarchive:
    src: "https://github.com/VorpalBlade/chezmoi_modify_manager/releases/download/v{{ chezmoi_modify_manager_version }}/chezmoi_modify_manager-v{{ chezmoi_modify_manager_version }}-x86_64-unknown-linux-gnu.tar.gz"
    dest: /usr/local/bin
    remote_src: true
  when: ansible_facts['architecture'] != "aarch64"
```