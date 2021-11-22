### Minimum powershell version required : 7.0 ###
param
(
    [Parameter(mandatory=$true)]
	[PSCredential] $Credential,
    [Parameter(mandatory=$true)]
    [string] $NexusFileURL,
    [Parameter(mandatory=$true)]
    [string] $OutFileLocation
)

####################
### Script Start ###
####################

Invoke-WebRequest -Uri $NexusFileURL -Authentication Basic -Credential $Credential -OutFile $OutFileLocation