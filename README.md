# NewUser_Script.sh 👩🏿‍💻
<div align="center">

![Bash](https://img.shields.io/badge/-Bash-blue)

![License](https://img.shields.io/badge/License-MIT-lightgrey)

</div>

Hello 👋🏿

**NewUser_Script.sh simplifies the process of creating service users**

This project contains Bash scripts that automates the process of creating users for various services such as `mongodb`, `nexus`, etc.

On Linux servers, it is adviced to have various users that run their individual services. This project will simplify this process.

## How to use 🛠

This script will create a new user called `serviceUser`. You can change this name to whatever service you want, and also alter it in the `config` file.

To use this project, follow the steps below:

- Clone this Repository
- Navigate to the folder
  ```
   cd NewUser-Script
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

## Contributing

To contribute to this project, head over to the `CONTRIBUTING.md` file for more information.


     


