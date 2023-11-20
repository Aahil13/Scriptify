# Suse

This folder contains a bash script responsible for user management and SSH configuration tailored for SUSE Linux distributions.

## How to use 🛠

The script creates a new user called `serviceUser`. You can change this service name to whatever name you please, and alter it in the `config` file.

To use this project, follow the steps below:

- Clone this repository

  ```bash
  git clone https://github.com/Aahil13/Scriptify.git
  ```

- Navigate to the folder

  ```bash
   cd Scriptify/Suse
  ```

- Run the script

  ```bash
  bash script.sh
  ```

You can switch to the `serviceUser` using:

```bash
su - serviceUser
```

Alternatively, you can ssh into the server directly from your local machine using:

```bash
ssh serviceUser@<ip-address>
```
