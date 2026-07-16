// File: RaceContract.sol


pragma solidity ^0.8.0;

contract RaceContract {
    address public owner;
    uint public finishLine; // Represents the dynamic finish line
    uint public baseFinishLine = 1000; // Initial distance to the finish line
    uint public playerMultiplier = 10; // Factor by which finish line moves for each player
    uint public transactionMultiplier = 5; // Factor by which finish line moves for each transaction

    // Mapping to store the current position of each player in the race
    mapping(address => uint) public playerPositions;

    event RaceStarted();
    event RaceEnded(address winner);
    event PlayerProgressed(address indexed player, uint newPosition);
    event FinishLineMoved(uint newFinishLine);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    // Start a new race
    function startRace() external onlyOwner {
        // Logic to start a race
        emit RaceStarted();
    }

    // End the current race and determine the winner
    function endRace(address _winner) external onlyOwner {
        // Logic to end the race and distribute prizes
        emit RaceEnded(_winner);
    }

    // Update a player's position based on boosts, challenges, and obstacles
    function updatePlayerPosition(address _player, uint _distanceMoved) external {
        // This function can be called by the Boost Contract or other game mechanics
        // to update a player's position based on boosts, challenges, etc.
        playerPositions[_player] += _distanceMoved;
        emit PlayerProgressed(_player, playerPositions[_player]);
    }

    // Adjust the finish line dynamically based on players and transactions
    function moveFinishLine(uint _numPlayers, uint _numTransactions) external onlyOwner {
        finishLine = baseFinishLine + (_numPlayers * playerMultiplier) + (_numTransactions * transactionMultiplier);
        emit FinishLineMoved(finishLine);
    }

    // Get the current position of a player in the race
    function getPlayerPosition(address _player) external view returns (uint) {
        return playerPositions[_player];
    }

    // Get the current position of the finish line
    function getFinishLine() external view returns (uint) {
        return finishLine;
    }
}

// File: LeaderboardContract.sol


pragma solidity ^0.8.0;


contract LeaderboardContract {
    address public owner;
    address public raceContractAddress;

    // Struct to represent leaderboard entry
    struct LeaderboardEntry {
        address player;
        uint position;
    }

    LeaderboardEntry[] public leaderboard;

    event LeaderboardUpdated(address indexed player, uint position);

    constructor(address _raceContractAddress) {
        owner = msg.sender;
        raceContractAddress = _raceContractAddress;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function updateLeaderboard(address _player) external {
        uint playerPosition = RaceContract(raceContractAddress).playerPositions(_player);
        leaderboard.push(LeaderboardEntry(_player, playerPosition));
        emit LeaderboardUpdated(_player, playerPosition);
    }

    function getTopPlayers(uint _count) external view returns (LeaderboardEntry[] memory) {
        require(_count <= leaderboard.length, "Requested count exceeds leaderboard size");

        // Sort the leaderboard entries by position
        LeaderboardEntry[] memory sortedLeaderboard = leaderboard;
        for (uint i = 0; i < sortedLeaderboard.length; i++) {
            for (uint j = i + 1; j < sortedLeaderboard.length; j++) {
                if (sortedLeaderboard[j].position > sortedLeaderboard[i].position) {
                    LeaderboardEntry memory temp = sortedLeaderboard[i];
                    sortedLeaderboard[i] = sortedLeaderboard[j];
                    sortedLeaderboard[j] = temp;
                }
            }
        }

        // Return the top _count players
        LeaderboardEntry[] memory topPlayers = new LeaderboardEntry[](_count);
        for (uint i = 0; i < _count; i++) {
            topPlayers[i] = sortedLeaderboard[i];
        }
        return topPlayers;
    }
}