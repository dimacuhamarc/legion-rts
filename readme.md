# Isometric RTS - Godot 4

## Project Overview

This is a real-time strategy (RTS) game inspired by Warcraft 3 and Warhammer, built in Godot 4 with top-down isometric pixel art. The game will feature unit selection, movement, resource management, and combat mechanics.

## Technologies Used

- **Game Engine:** Godot 4
- **Programming Language:** GDScript
- **Graphics:** Pixel art (Isometric)
- **Camera:** Isometric top-down view

## Features

- ✅ Tile-based map with an isometric view
- ✅ Camera movement and panning
- ✅ Unit selection and movement
- 🔄 Basic AI for enemy units (In Progress)
- 🔄 Resource collection and base-building mechanics (Planned)
- 🔄 Multiplayer functionality (Planned)

## Development Checklist

### Core Features

### Gameplay Enhancements

### Optimization & Polish

## Project Structure

📦 IsometricRTS
 ┣ 📂 assets/        # Sprites, textures, and sounds
 ┣ 📂 scripts/       # GDScript files
 ┣ 📂 scenes/        # Game scenes (units, UI, environment)
 ┣ 📜 main.gd        # Main game logic
 ┣ 📜 Unit.gd        # Unit movement & interactions
 ┣ 📜 Camera.gd      # Camera movement
 ┗ 📜 README.md      # Project documentation

## Getting Started

### Setup Instructions

1. Download & Install [Godot 4](https://godotengine.org/download)
2. Clone this repository:
   ```bash
   git clone https://github.com/your-username/isometric-rts.git
   cd isometric-rts
   ```
3. Open the project in Godot 4
4. Run the game by pressing ▶ in the editor

## Contributing

- Feel free to fork the repository and submit pull requests
- Report issues or suggest features using the GitHub Issues section

## License

This project is open-source under the MIT License.

## Development Notes

- If you have trouble with unit movement, check if your Unit.gd script is attached to the correct node (CharacterBody2D)
- If you are using a Camera2D, make sure to convert screen coordinates to world coordinates before setting movement targets

