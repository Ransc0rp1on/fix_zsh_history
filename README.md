# 🛠 ZSH History Fix Script

A simple and safe bash script to automatically recover and repair corrupted `.zsh_history` files.

If you frequently see this error:


This script will:

- ✅ Backup the corrupted history file (timestamped)
- ✅ Extract readable commands using `strings`
- ✅ Restore proper file permissions
- ✅ Reload history into the current shell
- ✅ Prevent total history loss

---

## 🚀 Why This Happens

`.zsh_history` corruption usually occurs due to:

- System crash
- VM crash (common in CTF labs)
- Hard shutdown
- Killing terminal while writing history
- Multiple concurrent shells writing at the same time

This script provides a quick and repeatable recovery solution.

---

## 📥 Installation

Clone the repository:

```bash
git clone https://github.com/YOUR_USERNAME/zsh-history-fix.git
cd zsh-history-fix
chmod +x fix_zsh_history.sh
./fix_zsh_history.sh
