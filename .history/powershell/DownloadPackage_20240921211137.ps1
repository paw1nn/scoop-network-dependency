param (
    [string]$packageName
)

# Check for internet connection
function Test-InternetConnection {
    try {
        $request = [System.Net.WebRequest]::Create("http://www.google.com")
        $request.Timeout = 5000
        $response = $request.GetResponse()
        return $true
    } catch {
        return $false
    }
}

if (-not (Test-InternetConnection)) {
    Write-Host "No internet connection. Please connect to the internet."
} else {
    Write-Host "Internet is available. Downloading package..."
    scoop install $packageName --global
}
