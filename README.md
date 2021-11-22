# NexusUpload

This is a Github action which download files on a Nexus server.

### Inputs (all mandatory):
- env :
  - NEXUS_USER : username to use for the upload to the Nexus server
  - NEXUS_PASSWORD : password to use for the upload to the Nexus server
- with :
  - NexusFileURL : the download URL of the file to download from the Nexus server
  - OutFileLocation : the local path where the file will be saved (filename included)

### Example in the github action :

```yaml
- id: fileDownload
  name: Download file from Nexus
  uses: 58ielaay0/NexusDownload@v0.1
  env:
    NEXUS_USER: ${{ secrets.NEXUS_USER }}
    NEXUS_PASSWORD: ${{ secrets.NEXUS_PASSWORD }}
  with:
    NexusURL: 'https://nexus.test.com/repository/raw/directory/file.zip'
    OutFileLocation: '.\file.zip'
```
