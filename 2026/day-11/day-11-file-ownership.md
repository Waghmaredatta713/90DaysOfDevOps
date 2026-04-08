# 📘 Day 11 – File Ownership (chown & chgrp)

## 🚀 Objective
Learn and practice Linux file ownership and group management using:
- `chown` (change owner)
- `chgrp` (change group)
- Recursive ownership changes

---

## 📂 Files & Directories Created

- devops-file.txt
- team-notes.txt
- project-config.yaml
- app-logs/
- heist-project/
- bank-heist/

---

## 🔐 Ownership Changes

| File/Directory        | Before     | After                  |
|---------------------|-----------|------------------------|
| devops-file.txt     | ubuntu     | tokyo → berlin         |
| team-notes.txt      | ubuntu     | group → heist-team     |
| project-config.yaml | ubuntu     | professor:heist-team   |
| app-logs/           | ubuntu     | berlin:heist-team      |
| heist-project/      | ubuntu     | professor:planners (-R)|
| access-codes.txt    | ubuntu     | tokyo:vault-team       |
| blueprints.pdf      | ubuntu     | berlin:tech-team       |
| escape-plan.txt     | ubuntu     | nairobi:vault-team     |

---

## 🛠️ Commands Used

```bash
# View ownership
ls -l

# Create users
sudo useradd tokyo
sudo useradd berlin
sudo useradd nairobi
sudo useradd professor

# Create groups
sudo groupadd heist-team
sudo groupadd planners
sudo groupadd vault-team
sudo groupadd tech-team

# Create files
touch devops-file.txt
touch team-notes.txt
touch project-config.yaml

# Create directories
mkdir app-logs
mkdir -p heist-project/vault
mkdir -p heist-project/plans
mkdir bank-heist

# Change owner
sudo chown tokyo devops-file.txt
sudo chown berlin devops-file.txt

# Change group
sudo chgrp heist-team team-notes.txt

# Change owner + group
sudo chown professor:heist-team project-config.yaml
sudo chown berlin:heist-team app-logs

# Recursive ownership
sudo chown -R professor:planners heist-project/

# Assign ownership
sudo chown tokyo:vault-team bank-heist/access-codes.txt
sudo chown berlin:tech-team bank-heist/blueprints.pdf
sudo chown nairobi:vault-team bank-heist/escape-plan.txt
