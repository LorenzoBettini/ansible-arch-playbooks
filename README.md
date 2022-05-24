# ansible-arch-playbook
Ansible playbooks for Arch-based installations and configurations

Install requirements

```
ansible-galaxy collection install -r requirements.yml
ansible-galaxy install -r requirements.yml
```

Run a playbook, e.g.,

```
ansible-playbook -i local -v playbook-arch-gnome.yml -K
```

For local quick testing of single tasks, include them in `test-tasks-playbook.yml` and then:

```
ansible-playbook -i local -v test-tasks-playbook.yml -K
```
