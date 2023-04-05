# How to use 🛠

This script will create a new user called `serviceUser`. You can change this name to whatever service you want, and also alter it in the `config` file.

To use this project, follow the steps below:

- Clone this Repository
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

You can switch into the `serviceUser` using:
```
su - serviceUser
```

Alternatively, you can ssh into the server directly from your local machine using:
```
ssh serviceUser@<ip-address>
```