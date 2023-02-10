# Auth-Admin-User-Roles

Your challenge:
Build a Rails application with two types of user roles: Admin and User.
Only Admin can create and manage User accounts. Both roles have a common login screen. When
user with Admin role logs in, they are taken to admin portal and when User logs in they are taken
to the user dashboard.

Build the following use case:
Admin logs in to the admin portal to create a new User account. On creating a new account an
email is sent to the User with a password reset link. On resetting the password by following the
link, User logs in to the user dashboard.

Specifications:
Common screens:
• Login screen
• Reset password screen
o On resetting the password Admin should be taken to Admin portal and User should
be taken to the User dashboard
o Add live password strength validation using Stimulus. Only when the password is
strong enough will the system accept it.

Admin portal:
• Index of User accounts
• Create new User account: create a form with the following fields:
o User full name
o User email ID
o User phone number
o Company name
o Company address
• Clicking on ‘create account’ button:
o Set a temporary password for the User
o Send an email to the User with the reset password link
o Show success state with the following message: ‘User account successfully
created. A password reset email has been sent to the user.’
• Edit account: Admin should be able to edit all fields except password.

User dashboard:
• Dashboard (dashboard can be empty with a ‘welcome to your dashboard’ message)


