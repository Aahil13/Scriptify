# Ubuntu

This script is for the Ubuntu distribution of Linux.

## How to use 🛠

This script creates a new user called `serviceUser`. You can change this name to whatever service you want, and alter it in the `config` file.

To use this project, follow the steps below:

- Clone this repository
  ```
  git clone https://github.com/Aahil13/Scriptify.git
  ```
- Navigate to the folder
  ```
   cd Scriptify/Ubuntu
  ```
- Run the script
  ```
  bash script.sh
  ```

You can switch to the `serviceUser` using:
```
su - serviceUser
```

Alternatively, you can ssh into the server directly from your local machine using:
```
ssh serviceUser@<ip-address>
```