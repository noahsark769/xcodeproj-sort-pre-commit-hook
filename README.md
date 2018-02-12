# xcodeproj-sort-pre-commit-hook
A pre-commit hook that sorts your xcodeproj file.

<img src="https://i.imgur.com/knSvFpV.png" height="700">

## What is it?
This repo provides a ready to use [pre-commit](https://pre-commit.com/) hook for automatically sorting your Xcode project. The hook looks for files ending in .pbxproj that have been modified and sorts their project group hierarchy automatically using the [Xcodeproj](https://github.com/CocoaPods/Xcodeproj/) gem. The effect is that the sort leaves your project file modified if it's not sorted, so that pre-commit won't allow the unsorted file to go through.

## Usage
If you haven't set up pre-commit, check out [pre-commit's installation docs](https://pre-commit.com/#install) first.

Add the following to your `.pre-commit-config.yaml`:

```
-   repo: git://github.com/noahsark769/xcodeproj-sort-pre-commit-hook
    sha: v1.0.0
    hooks:
    - id: xcodeproj-sort
```

Then, run:

```
pre-commit install
```

## Contributing
I use this in the development of [Trestle](https://appstore.com/trestle), but your mileage might vary. If you notice a bug or have a feature request, please open a github issue or submit a pull request. It's best to open issues first so that work isn't duplicated.

## Development
After closing the repo, you can run `make install` to build the gem and install locally, after which `xcodeproj-sort` should be in your path.
