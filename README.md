#  PopUpView SwiftUI


## Steps
1. Create "PopUpView"

2. Add condition in ZStack to show/hide PopUpView ( Add view to the very end of a ZStack to present PopUpView over other views)

3. Add to main view variables:
- to show/hide  @State var: Bool
- to pass data from PopUpView to main view  @State var: String etc

4. Add to PopUpView variables(for passing new variables values back to main view):
  - the same variables as you add in main view with  @Binding var: Bool, @Binding var: String etc
