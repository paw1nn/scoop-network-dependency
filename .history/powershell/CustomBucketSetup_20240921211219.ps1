# Add local bucket for offline use
$localBucketPath = "C:\Path\To\Your\LocalBucket"
scoop bucket add local $localBucketPath

# Edit package to point to local version
scoop edit <package-name>
# Specify the local URL or path for the package in the edit file.
