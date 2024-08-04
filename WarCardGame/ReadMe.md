# War Card Game

## Overview
The War Card Game is a classic card game developed for iOS using Swift and SwiftUI. This project currently includes the Classic War variation, where two players (the user and the CPU) draw cards and the player with the higher card wins the round. The game continues until the deck is exhausted, and the player with the most rounds won is the victor.

## Project Structure
The project is organized into the following directories:

- **Assets.xcassets**: Contains all image assets, including card images and icons.
- **Models**: Contains the game logic.
  - `ClassicWar.swift`: Contains the logic for the Classic War variation.
- **Views**: Contains all SwiftUI view files.
  - `ContentView.swift`: The main entry point of the app, leading to the game selection screen.
  - `GameSelectionView.swift`: The screen where users can choose the game variation.
  - `ClassicWarView.swift`: The game view for the Classic War variation.
- **WarCardGameApp.swift**: The main entry point of the app.

## How to Run
1. Clone the repository.
2. Open the project in Xcode.
3. Build and run the project on an iOS simulator or device.

## Future Enhancements
- Additional game variations (e.g., Speed War, Double War, Hand War).
- Improved UI and animations.
- Multiplayer support.

## Contributing
Feel free to fork the project and submit pull requests. For major changes, please open an issue to discuss what you would like to change.

## License
This project is licensed under the MIT License.
