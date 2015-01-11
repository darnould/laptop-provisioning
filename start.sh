missing() {
  [ -z $(command -v $1) ]
}

# Install Homebrew
if missing "brew"; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install Ansible
if missing "ansible"; then
  brew install ansible
fi

ansible-playbook -i hosts playbook.yml
