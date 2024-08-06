# Define the username to check
$username = "eviluser"

# Check if the user exists
$userExists = Get-LocalUser -Name $username -ErrorAction SilentlyContinue

if ($userExists) {
    Write-Output "User '$username' already exists. Skipping creation."
} else {
    # Create the user if it does not exist
    $password = ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force
    New-LocalUser -Name $username -Password $password -FullName "Evil User" -Description "Created by script"
    Add-LocalGroupMember -Group "Administrators" -Member $username

    Write-Output "User '$username' created. Restarting the system..."
    Restart-Computer -Force
}
