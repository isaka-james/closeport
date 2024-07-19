# Close Port Script

A simple Bash script to identify processes using a specified port, retrieve their process IDs (PIDs), and terminate them. This script requires superuser (sudo) permissions to run.

## Overview

The `closeport.sh` script is designed to help system administrators and users easily manage network ports by terminating any processes that are currently using a specified port. 

## Features

- Takes a port number as an argument.
- Identifies if any processes are using the specified port.
- Retrieves the process IDs (PIDs) of these processes.
- Terminates the processes using the specified port.
- Provides feedback on whether any processes were found and terminated or if the port was unused.

## Requirements

- Bash shell
- `sudo` privileges

## Usage

1. **Clone the Repository**

   ```bash
   git clone https://github.com/isaka-james/closeport.git
   ```

2. **Navigate to the Repository**

   ```bash
   cd closeport
   ```

3. **Make the Script Executable**

   ```bash
   chmod +x closeport.sh
   ```

4. **Run the Script**

   ```bash
   sudo ./closeport.sh <port_number>
   ```

   Replace `<port_number>` with the port number you want to check and close. For example:

   ```bash
   sudo ./closeport.sh 8080
   ```

## Example

If the script is run with port `8080` and there is a process using this port, you might see output like:

```
Process with PID 1234 is using port 8080 and has been terminated.
```

If no process is found using the specified port:

```
No process is using port 8080.
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author

Isaka James
