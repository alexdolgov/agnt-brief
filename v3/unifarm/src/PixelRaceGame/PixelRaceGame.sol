// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PixelRaceGame {
    address public owner;
    uint public finishLine;
    uint public baseFinishLine = 1000;
    uint public playerMultiplier = 10;
    uint public transactionMultiplier = 5;
    uint public adminFeePercentage = 20; // Initially set at 20%
    uint public totalCollectedFees;
    uint public numberOfWinners = 3; // Default to 3 winners

    enum RaceState { NOT_STARTED, STARTED, ENDED }
    RaceState public raceState = RaceState.NOT_STARTED;

    struct Player {
        uint position;
        address referrer;
        bool isParticipating;
        uint boosts;
    }

    mapping(address => Player) public players;
    address[] public playerAddresses;
    mapping(address => bool) public authorizedEntities; // To track authorized entities

    event RaceStarted(uint numberOfWinners);
    event RaceEnded(address[] winners);
    event PlayerProgressed(address indexed player, uint newPosition);
    event FinishLineMoved(uint newFinishLine);
    event PlayerEntered(address indexed player);
    event BoostPurchased(address indexed player, uint amount);
    event BoostActivated(address indexed player, uint distanceMoved);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    modifier onlyAuthorized() {
        require(authorizedEntities[msg.sender], "Not authorized to call this function");
        _;
    }

    modifier raceOngoing() {
        require(raceState == RaceState.STARTED, "Race is not ongoing");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function authorizeEntity(address entity) external onlyOwner {
        authorizedEntities[entity] = true;
    }

    function deauthorizeEntity(address entity) external onlyOwner {
        authorizedEntities[entity] = false;
    }

    function setAdminFeePercentage(uint _percentage) external onlyOwner {
        require(_percentage <= 100, "Invalid percentage");
        adminFeePercentage = _percentage;
    }

    function startRace(uint _numberOfWinners) external onlyOwner {
        require(raceState == RaceState.NOT_STARTED, "Race already started or ended");
        require(_numberOfWinners > 0 && _numberOfWinners <= 3, "Invalid number of winners");
        numberOfWinners = _numberOfWinners;
        raceState = RaceState.STARTED;
        emit RaceStarted(numberOfWinners);
    }

    function endRace() external onlyOwner raceOngoing {
        raceState = RaceState.ENDED;

        // Determine winners based on positions
        address[] memory winners = new address[](numberOfWinners);
        for (uint i = 0; i < numberOfWinners && i < playerAddresses.length; i++) {
            winners[i] = playerAddresses[i];
        }

        emit RaceEnded(winners);
    }

    function enterRace(address referrer) external payable raceOngoing {
        require(!players[msg.sender].isParticipating, "Player is already participating");
        require(msg.value > 0, "Must send ETH to enter"); // This can be set to a specific entry fee if desired

        uint adminFee = (msg.value * adminFeePercentage) / 100;
        totalCollectedFees += msg.value - adminFee;

        players[msg.sender] = Player({
            position: 0,
            referrer: referrer,
            isParticipating: true,
            boosts: 0
        });

        playerAddresses.push(msg.sender);

        // Award boost to referrer
        if (players[referrer].isParticipating) {
            players[referrer].boosts += 1;
        }

        emit PlayerEntered(msg.sender);
    }

    function purchaseBoost(uint amount) external payable raceOngoing {
        // For simplicity, let's assume 1 boost costs 0.01 ETH
        require(msg.value == amount * 0.01 ether, "Incorrect ETH sent");
        players[msg.sender].boosts += amount;
        emit BoostPurchased(msg.sender, amount);
    }

    function activateBoost(uint amount) external raceOngoing {
        require(players[msg.sender].boosts >= amount, "Not enough boosts");
        players[msg.sender].boosts -= amount;
        uint distanceMoved = amount * 10; // Assume each boost moves a player 10 units
        players[msg.sender].position += distanceMoved;
        emit BoostActivated(msg.sender, distanceMoved);
    }

    function updatePlayerPosition(address _player, uint _distanceMoved) external onlyAuthorized raceOngoing {
        players[_player].position += _distanceMoved;
        emit PlayerProgressed(_player, players[_player].position);
    }

    function moveFinishLine() external onlyOwner {
        finishLine = baseFinishLine + (playerAddresses.length * playerMultiplier);
        emit FinishLineMoved(finishLine);
    }

    function withdrawAdminFees() external onlyOwner {
        require(raceState == RaceState.ENDED, "Race is not yet ended");
        uint amount = (totalCollectedFees * adminFeePercentage) / 100;
        totalCollectedFees -= amount;
        payable(owner).transfer(amount);
    }

    function withdrawWinnerReward() external {
        require(raceState == RaceState.ENDED, "Race is not yet ended");
        require(players[msg.sender].isParticipating, "Not a participant");

        uint rewardPool = totalCollectedFees; // This is the 80% remaining after admin's withdrawal

        uint reward;
        if (msg.sender == playerAddresses[0]) {
            reward = (rewardPool * 50) / 100;
        } else if (msg.sender == playerAddresses[1]) {
            reward = (rewardPool * 30) / 100;
        } else if (msg.sender == playerAddresses[2]) {
            reward = (rewardPool * 20) / 100;
        } else {
            revert("Not a winner");
        }

        totalCollectedFees -= reward;
        payable(msg.sender).transfer(reward);
    }
     // Function to get all players and their positions
    function getAllPlayersAndPositions() external view returns (address[] memory, uint[] memory) {
        uint[] memory positions = new uint[](playerAddresses.length);
        
        for (uint i = 0; i < playerAddresses.length; i++) {
            positions[i] = players[playerAddresses[i]].position;
        }
        
        return (playerAddresses, positions);
    }
}