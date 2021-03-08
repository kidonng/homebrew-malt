set -l formula $argv[1]
brew info --json $formula | node scripts/parse.js | read -l tap ver stat
set -l repo (string replace / /homebrew- $tap)

switch $stat
  case is-bottle
    echo $formula is installed as a bottle, good to go
  case not-bottle
    echo $formula is not installed as a bottle, please uninstall it first
    exit 1
  case not-installed
    echo $formula is not installed, installing
    brew install --build-bottle $formula
end

set -l tag $formula-$ver
set -l root https://github.com/$repo/releases/download/$tag

pushd (mktemp -d)
brew bottle --json --root-url $root $formula
brew bottle --merge --write *.json

set -l repo_path (brew --repo $tap)
set -l commit (git -C $repo_path rev-parse HEAD)
git -C $repo_path tag $tag $commit
git -C $repo_path push --atomic origin HEAD $tag

set -l old_name *.tar.gz
set -l new_name (string replace -- -- - $old_name)
mv $old_name $new_name
gh release create -R $repo -n "" $tag $new_name

popd

