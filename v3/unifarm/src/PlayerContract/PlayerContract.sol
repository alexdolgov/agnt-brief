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

// File: PlayerContract.sol


pragma solidity ^0.8.0;


contract PlayerContract {
    address public owner;
    address public raceContractAddress;
    uint public entryFee = 0.01 ether; // Entry fee to join the race

    enum PlayerStatus { WAITING, RACING, FINISHED }
    mapping(address => PlayerStatus) public playerStatuses;

    // Referral system
    mapping(address => address) public referrals; // Maps a referred user to the referrer
    uint public referralBoostAmount = 50; // The boost amount given for a successful referral

    event PlayerEntered(address indexed player);
    event PlayerReferred(address indexed referrer, address indexed referred);

    constructor(address _raceContractAddress) {
        owner = msg.sender;
        raceContractAddress = _raceContractAddress;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function enterRace(address _referrer) external payable {
        require(msg.value == entryFee, "Incorrect entry fee");
        require(playerStatuses[msg.sender] == PlayerStatus.WAITING, "Player already in race");

        playerStatuses[msg.sender] = PlayerStatus.RACING;
        RaceContract(raceContractAddress).updatePlayerPosition(msg.sender, 0); // Initialize player's position

        // Handle referral
        if (_referrer != address(0) && playerStatuses[_referrer] != PlayerStatus.WAITING) {
            referrals[msg.sender] = _referrer;
            // The referrer gets a boost for the referral
            RaceContract(raceContractAddress).updatePlayerPosition(_referrer, referralBoostAmount);
            emit PlayerReferred(_referrer, msg.sender);
        }

        emit PlayerEntered(msg.sender);
    }

    function finishRace() external {
        require(playerStatuses[msg.sender] == PlayerStatus.RACING, "Player not in race");
        playerStatuses[msg.sender] = PlayerStatus.FINISHED;
    }

    function setEntryFee(uint _newFee) external onlyOwner {
        entryFee = _newFee;
    }

    function setReferralBoostAmount(uint _newAmount) external onlyOwner {
        referralBoostAmount = _newAmount;
    }
}