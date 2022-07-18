# ansible-arch-playbooks
Ansible playbooks for Arch-based installations and configurations

Install the needed packages:

```
sudo pacman -S git python-pip
python3 -m pip install --user ansible
```

Make sure `$HOME/.local/bin` is in the PATH (because `pip` installs `ansible` there).

Clone this repository.

Install the requirements for the playbook:

```
ansible-galaxy install -r requirements.yml
```

Run a playbook, e.g., for GNOME:

```
ansible-playbook -i local -v playbook-arch-gnome.yml -K
```

or for KDE:

```
ansible-playbook -i local -v playbook-arch-kde.yml -K
```

In case, you can skip a few steps, e.g., `--skip-tags latex`.

For local quick testing of single tasks, include them in `test-tasks-playbook.yml` and then:

```
ansible-playbook -i local -v test-tasks-playbook.yml -K
```
