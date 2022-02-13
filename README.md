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
    sha: v1.1.1
    hooks:
    - id: xcodeproj-sort
      args: [--groups-position=above]
```

Then, run:

```
pre-commit install
```

### Options
Use the `--groups-position` option to specify the position of groups in the sort:
- `above`: Positions groups above objects in the sort
- `below`: Positions groups below objects in the sort

The default is to interleave groups and objects in the sort.

### Running manually
The code runs in a rubygem which is built by `pre-commit`. To run a sort manually outside of `pre-commit`, install the gem locally:

```
gem install xcodeproj-sort
```

Then, run the gem with the project file as an argument:

```
xcodeproj-sort MyProject.xcodeproj/project.pbxproj
```

## Contributing
I use this in the development of [Trestle](https://itunes.apple.com/us/app/trestle-the-new-sudoku/id1300230302?mt=8) and [CIFilter.io](https://itunes.apple.com/us/app/cifilter-io/id1457458557?mt=8), but your mileage might vary. If you notice a bug or have a feature request, please open a github issue or submit a pull request. It's best to open issues first so that work isn't duplicated.

Also, feel free to reach out [on Twitter](https://twitter.com/noahsark769) if you have any questions.

## Development
After closing the repo, you can run `make install` to build the gem and install locally, after which `xcodeproj-sort` should be in your path.
