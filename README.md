# eviluser
This script performs the following steps:

    1.Defines the username to check.
    2.Checks if the user exists using Get-LocalUser.
    3.If the user exists, it outputs a message and skips the creation.
    4.If the user does not exist, it creates the user with a specified password, adds the user to the Administrators group, and restarts the system.

Please use this script responsibly and ensure you have the necessary permissions to create users and restart the system.
