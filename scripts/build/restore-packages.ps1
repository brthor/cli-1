#
# Copyright (c) .NET Foundation and contributors. All rights reserved.
# Licensed under the MIT license. See LICENSE file in the project root for full license information.
#

. $PSScriptRoot\..\common\_common.ps1

# Restore packages
# NOTE(anurse): I had to remove --quiet, because NuGet3 is too quiet when that's provided :(
header "Restoring packages"

& "$DnxRoot\dnu" restore "$RepoRoot\src"
& "$DnxRoot\dnu" restore "$RepoRoot\tools"

