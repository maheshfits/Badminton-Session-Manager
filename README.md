# Badminton Session Manager

A modern web application designed to manage badminton sessions for groups of 5+ players. It ensures fair play time through an intelligent rotation algorithm and tracks match results and player statistics.

![Badminton Session Manager]([https://images.unsplash.com/photo-1626224583764-847890e05851?q](https://unsplash.com/photos/a-yellow-badminton-racquet-flying-through-the-air-9-2h-tto1EA)=80&w=2070&auto=format&fit=crop)

## Features

- **Fair Rotation System**: Automatically generates matches ensuring equal play time and balanced rest periods for all players.
- **Player Management**: Easily add or remove players from the session dynamically.
- **Score Tracking**: Record match results and maintain a history of wins and losses.
- **Live Leaderboard**: Real-time stats showing wins, games played, and win rates.
- **Persistent Data**: Session data is saved to the browser's local storage, so you never lose progress on refresh.
- **Premium UI**: A sleek, dark-mode interface designed for clarity and ease of use.

## Tech Stack

- **Framework**: React + Vite
- **Styling**: Vanilla CSS (Custom Variables & Responsive Design)
- **Icons**: Lucide React

## Getting Started

### Prerequisites

- Node.js (v16 or higher)
- npm or yarn

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/badminton-session-manager.git
   ```

2. Navigate to the project directory:
   ```bash
   cd badminton-session-manager
   ```

3. Install dependencies:
   ```bash
   npm install
   ```

4. Start the development server:
   ```bash
   npm run dev
   ```

5. Open your browser and visit `http://localhost:5173`.

## Usage

1. **Add Players**: Enter player names in the left panel to register them for the session.
2. **Start Match**: Click "Start Next Match". The algorithm will select 4 players based on play history.
3. **Play**: The selected players play their game.
4. **Record Score**: Enter the final score for Team 1 and Team 2.
5. **Finish**: Click "Finish Match" to update the leaderboard and prepare the next rotation.

## License

MIT
