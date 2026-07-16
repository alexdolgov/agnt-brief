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

// File: BoostContract.sol


pragma solidity ^0.8.0;


contract BoostContract {
    address public owner;
    address public raceContractAddress;

    // Struct to represent a boost
    struct Boost {
        uint boostType; // 1 for Bronze, 2 for Silver, 3 for Gold, etc.
        uint boostAmount; // Amount of boost (e.g., 2x, 3x speed)
        uint duration; // Duration of the boost in seconds
        uint price; // Price of the boost in wei
    }

    // Mapping of boost types to their details
    mapping(uint => Boost) public boosts;

    // Mapping of players to their active boosts
    mapping(address => Boost) public activeBoosts;

    // Mapping of players to completed quests
    mapping(address => bool) public completedQuests;

    event BoostPurchased(address indexed player, uint boostType);
    event BoostActivated(address indexed player, uint boostType);
    event QuestCompleted(address indexed player);

    constructor(address _raceContractAddress) {
        owner = msg.sender;
        raceContractAddress = _raceContractAddress;

        // Initializing some example boosts
        boosts[1] = Boost(1, 2, 300, 0.01 ether); // Bronze: 2x speed for 5 minutes
        boosts[2] = Boost(2, 3, 600, 0.02 ether); // Silver: 3x speed for 10 minutes
        boosts[3] = Boost(3, 5, 900, 0.03 ether); // Gold: 5x speed for 15 minutes
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    // Purchase a boost
    function purchaseBoost(uint _boostType) external payable {
        Boost memory boostToPurchase = boosts[_boostType];
        require(msg.value == boostToPurchase.price, "Incorrect amount sent");

        // Assign the boost to the player
        activeBoosts[msg.sender] = boostToPurchase;
        emit BoostPurchased(msg.sender, _boostType);
    }

    // Activate a purchased boost
    function activateBoost() external {
        Boost memory playerBoost = activeBoosts[msg.sender];
        require(playerBoost.duration > 0, "No active boost to activate");

        // Interact with the RaceContract to adjust the player's speed
        RaceContract(raceContractAddress).updatePlayerPosition(msg.sender, playerBoost.boostAmount);
        emit BoostActivated(msg.sender, playerBoost.boostType);
    }

    // Complete a quest to earn a boost
    function completeQuest(uint _boostType) external {
        require(!completedQuests[msg.sender], "Quest already completed");
        completedQuests[msg.sender] = true;
        activeBoosts[msg.sender] = boosts[_boostType];
        emit QuestCompleted(msg.sender);
    }

    // Add or modify a boost type (only by the owner)
    function setBoost(uint _boostType, uint _boostAmount, uint _duration, uint _price) external onlyOwner {
        boosts[_boostType] = Boost(_boostType, _boostAmount, _duration, _price);
    }
}