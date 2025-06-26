# flutter_layout_builder
[Inspired by a YouTube tutorial titled "Responsive Dashboard UI | LayoutBuilder | Flutter Tutorial"] (https://youtu.be/6Ts0S1XzOL4?si=eMYDgKNqqvDi_4J9)

This Flutter demo app showcases the real-world use of the LayoutBuilder widget to create responsive layouts for mobile, tablet, and desktop screen sizes.

## About the LayoutBuilder Widget
The LayoutBuilder widget allows Flutter apps to build UI based on parent constraints, enabling responsive designs that adapt to screen sizes.

## How to Run
1. Clone the repo
`git clone https://github.com/Darlington6/layout-builder_widget.git`
`cd layout-builder_widget`

2. Open the project in VS Code/Android Studio, or any compatible IDE/Text editor of your choice.

3. In the main.dart file (in the lib folder), run the app on any device or emulator. The home screen appears first, then tap "Explore Layouts" to see the LayoutBuilder in action.
- Pro tip: Change to different orientations or screen sizes to witness how the UI adapts!

## Real-World Use Case
This demo simulates how an LMS platform might offer different UI layouts for different screen types, like mobile phones, tablets, and desktops. All these layouts are handled dynamically using LayoutBuilder.

## Three Key Attributes Demonstrated
1. builder:
- What it does: A required function that provides the BuildContext and BoxConstraints to define what layout to return.
- Demo Use: The core logic checks the constraints.maxWidth to determine screen type.
- Why it's useful: Enables conditional rendering based on screen size for responsive UI.

2. constraints.maxWidth:
- What it does: Gives the maximum width the child can occupy.
- Demo Use: Breakpoints like >= 1024 for desktop, >= 600 for tablet, else mobile.
- Why it's useful: Essential for identifying device types and adjusting layout.

3. Returning Specific Layouts (mobileLayout, tabletLayout, desktopLayout)
- What it does: Passes different widgets as layout options.
- Demo Use: Shows how LayoutBuilder can delegate layout building based on constraints.
- Why it's useful: Keeps layout logic clean and modular.

## Screenshots
Here are various screenshots of how the UI adapts to different screen sizes.
1. Home Screen:
   
![home-screen](https://github.com/user-attachments/assets/e008ad4f-009b-4c4a-a4f3-766053ff22ea)

3. For Mobile View:
- Mobile view without hamburger menu opened:
  
![mobile-view-without-hamburger-opened](https://github.com/user-attachments/assets/3b7a3741-a0d3-4cca-a9a6-ece9212f76ed)

- Mobile view with hamburger menu opened:
  
![mobile-view-with-hamburger-opened](https://github.com/user-attachments/assets/b90bb0ab-27ef-4f6e-97b9-685680d23d57)

3. For Tablet View:
- Tablet view without hamburger menu opened:
  
![tablet-view-without-hamburger-opened](https://github.com/user-attachments/assets/572a7c9b-a071-45d2-b568-f2d45a870ddd)

- Tablet view with hamburger menu opened:
  
![tablet-view-with-hamburger-opened](https://github.com/user-attachments/assets/0b54a25c-5b95-42d8-9330-09de6feec357)

4. For Desktop View:
- Desktop view with all components rendered:

![desktop-view](https://github.com/user-attachments/assets/9dcc6704-9ee3-4759-bb6c-b35af66a9131)

## License and Copyright

© 2025 Desmond T., All rights reserved.
