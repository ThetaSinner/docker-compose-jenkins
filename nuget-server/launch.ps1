$path = & "${env:ProgramFiles(x86)}\Microsoft Visual Studio\Installer\vswhere.exe" -latest -requires Microsoft.Component.MSBuild -property installationPath
if ($path) {
  $path = join-path $path 'MSBuild\15.0\Bin\MSBuild.exe'
  if (test-path $path) {
    & $path /t:build
  }
}

& "C:\Program Files\IIS Express\iisexpress.exe" /path:$pwd /port:9901
