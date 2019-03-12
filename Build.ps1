Remove-Item -Path .\components\ -recurse -ErrorAction Ignore
Remove-Item -Path .\resources\ -recurse -ErrorAction Ignore

node_modules/.bin/ngc -p tsconfig-aot.json
tsc -p .\tsconfig-release.json
gulp build-assets
gulp build-exports

#npm pack
