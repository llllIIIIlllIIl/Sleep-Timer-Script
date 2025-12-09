# Sleep Timer Script

A Windows batch script that sets a countdown timer to remind you when it's time to go to sleep, with audio alerts and visual notifications.

## Features

- Customizable sleep countdown (1-60 minutes)
- Input validation (numeric values only, no negative numbers)
- Audio beep patterns using PowerShell
- Visual alerts with screen clearing and escalating messages
- Persistent popup notifications via Windows `msg` command
- Continuous reminder loop until manually stopped

## Usage

1. Run the script in Command Prompt
2. Enter the desired countdown time in minutes (maximum 60)
3. Wait for the timer to complete
4. The script will trigger audio beeps, screen messages, and system popups
5. Press `Ctrl+C` to stop the reminders

## Requirements

- Windows OS
- Command Prompt or terminal with batch file support
- PowerShell (for audio beep functionality)

## How It Works

1. **Input Phase**: Prompts for minutes, validates input is numeric and within range
2. **Countdown Phase**: Waits silently for the specified duration
3. **Alert Phase**: Infinite loop with:
   - Screen clearing and text warnings
   - Beep sequences at various frequencies (284-988 Hz)
   - Windows message box popup every second

## Code Structure

| Section | Purpose |
|---------|---------|
| `:input` | Handles user input and validation |
| `:countdown` | Executes alert loop with beeps and messages |
| Validation | Checks for non-numeric input, negative values, and max duration |
| Audio | PowerShell beep commands with frequency/duration pairs |

## Notes

- Script runs indefinitely once alerts start—must be manually terminated
- Beep functionality requires system speaker support
- Message popups may require user interaction to dismiss
