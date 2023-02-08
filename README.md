#  List Selection test

Test project to experiment on selecting multiple elements in a list using SwiftUI and macOS.
Display a different view on the right depending on the fact there is 0, 1 or multiple items selected.

The different mechanisms / use cases explored are:
- Single selection with no detail displayed on right, as a simple basis.
- Single selection with detail displayed on right, using the standard NavigationView/NavigationLink mechanism.
- Multiple selection with no detail displayed on right.
- Multiple selection with detail on right when a single item is selected, using the standard NavigationView/NavigationLink mechanism.  
This does not work properly, the selection is reset to a single element as soon as the view in the right pane displays the detail.
- Multiple selection with detail on right when a single item is selected and different views for no selection / multiple selection.  
This is implemented using the newer NavigationSplitView introduced at WWDC 2022.
