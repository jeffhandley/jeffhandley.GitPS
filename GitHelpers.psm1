function glone {
  $repo = $null

  switch ($args[0]) {
    "nugetgallery" { $repo = "git@github.com:NuGet/NuGetGallery.git" }
    default { Write-Host "C'mon man, give me a repository" }
  }

  if ($repo -ne $null) {
    Write-Host "gloning $repo"
    (& git clone $repo)
  }
}