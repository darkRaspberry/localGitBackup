# localGitBackup
This app backup your git repo. Currently only locally.

## How to use it?

It's a bash app anything which can run bash can run it its simple and currently takes 2 arguments only. It can be overloaded to use one argument or use 2 arguments as shown below.

 - Clone the app with any indigenous or super natural trick or use these below. 
  ```bash
  git clone git@github.com:darkRaspberry/localGitBackup.git
  # Clone with SSH.
  git clone https://github.com/darkRaspberry/localGitBackup.git
  # Clone with HTTPS.
  ```
 - Add permission to execute.
  ```bash
  chmod +x localGitBackup.sh
  # Add execute permission.
  ```
 - Execute it.
  ```bash
  # Adding excute permission.
  ./localGitBackup.sh destination_folder
  # Backup current directory to the destination folder.
  ./localGitBackup.sh source_folder destination_folder
  # Backup source folder into destination folder.
  ```
 - Optionally, Add a alias to make it short as any keyword.
 
##### Currently, This is a bash app. So anything which can run bash will able to use this app.
