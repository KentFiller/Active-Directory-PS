<#
Source: Adapted from a script by Josh Madakor (https://www.youtube.com/watch?v=MHsI8hJmggI)
#>

# ----- Edit these Variables for your different Use Case ----- #
$PASSWORD_FOR_USERS   = "Password1"  # Set a default password for all created users
$USER_FIRST_LAST_LIST = Get-Content .\names.txt  # Read user names from a file
# ------------------------------------------------------ #

$password = ConvertTo-SecureString $PASSWORD_FOR_USERS -AsPlainText -Force  # Converts a plain-text password to a secure string

# Create an Organizational Unit (OU) named "_USERS" for user organization
New-ADOrganizationalUnit -Name _USERS -ProtectedFromAccidentalDeletion $false

foreach ($n in $USER_FIRST_LAST_LIST) { # simple loop to go through each name in the list
    $first = $n.Split(" ")[0].ToLower()  # Extract the first name from the space-separated full name
    $last = $n.Split(" ")[1].ToLower()   # Extract the last name from the space-separated full name 
    $username = "$($first.Substring(0,1))$($last)".ToLower()  # Generate a username from the first(takes first character of first name) and last names
    Write-Host "Creating user: $($username)" -BackgroundColor Black -ForegroundColor Cyan

    # Create a new Active Directory user with specified attributes
    New-AdUser -AccountPassword $password ` 
               -GivenName $first `  
               -Surname $last ` 
               -DisplayName $username ` 
               -Name $username ` 
               -EmployeeID $username `  
               -PasswordNeverExpires $true ` 
               -Path "ou=_USERS,$(([ADSI]`"").distinguishedName)" `  
               -Enabled $true               
}
