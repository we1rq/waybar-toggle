# Waybar Toggle Script

This project provides a simple Bash script to toggle the visibility of [Waybar](https://github.com/Alexays/Waybar) on Wayland compositors like **Hyprland**. The script uses process management to check if Waybar is running and either starts or terminates it accordingly.

## Features

- **Toggle functionality**: Start Waybar if it's not running or terminate it if it is.
- **Safe execution**: Ensures the script does not terminate itself during execution.
- **Integration**: Works seamlessly with Hyprland or similar Wayland compositors.

## Requirements

- A Wayland compositor (e.g., [Hyprland](https://github.com/hyprwm/Hyprland))
- Bash shell
- Waybar installed
- Basic Linux tools (`ps`, `grep`, `awk`, `kill`)

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/we1rq/waybar-toggle.git
   cd waybar-toggle
   ```

2. Copy the script to your configuration directory:
  ```bash
  cp toggle_waybar.sh ~/.config/waybar/
  ```


3. chmod +x ~/.config/waybar/toggle_waybar.sh
  ```bash
  cp toggle_waybar.sh ~/.config/waybar/
  ```

4. Add a keybind to your Hyprland configuration (e.g., ~/.config/hypr/hyprland.conf):
  ```bash
  bind = MOD, SHIFT, W, exec, ~/.config/waybar/toggle_waybar.sh
  ```

5. Reload Hyprland to apply the changes:
  ``` bash
  hyprctl reload
  ```
