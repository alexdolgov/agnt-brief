// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-v4/access/Ownable.sol";
import "@openzeppelin/contracts-v4/security/ReentrancyGuard.sol";

/**
 * @title Faucet
 * @dev A contract that allows depositing native tokens and distributing them to specific addresses.
 * Only the owner and authorized distributors can distribute tokens.
 * The contract has an hourly distribution limit that resets at the start of each hour.
 */
contract Faucet is Ownable, ReentrancyGuard {
    // Amount to send for each distribution
    uint256 public distributionAmount;

    // Maximum tokens that can be distributed per hour
    uint256 public maxDistributionPerHour;

    // Current hour for distribution tracking (timestamp of the start of the hour)
    uint256 public currentHourStart;

    // Tokens distributed in the current hour
    uint256 public currentHourDistributed;

    // Total tokens distributed since contract creation (for statistics)
    uint256 public totalDistributed;

    // Mapping of authorized distributors
    mapping(address => bool) public distributors;

    // Events
    event TokensReceived(address indexed from, uint256 amount);
    event TokensDistributed(address indexed to, uint256 amount);
    event DistributorAdded(address indexed distributor);
    event DistributorRemoved(address indexed distributor);

    /**
     * @dev Constructor that initializes the contract with specified values.
     * @param _distributionAmount Amount to send for each distribution
     * @param _maxDistributionPerHour Maximum tokens that can be distributed per hour
     */
    constructor(uint256 _distributionAmount, uint256 _maxDistributionPerHour) {
        require(
            _distributionAmount > 0,
            "Faucet: distribution amount must be greater than 0"
        );
        require(
            _maxDistributionPerHour > 0,
            "Faucet: max distribution per hour must be greater than 0"
        );

        distributionAmount = _distributionAmount;
        maxDistributionPerHour = _maxDistributionPerHour;

        // Initialize the current hour to the start of the current hour
        currentHourStart = _getCurrentHourStart();
    }

    /**
     * @dev Updates the distribution amount.
     * Only the owner can call this function.
     * @param _distributionAmount New amount to send for each distribution
     */
    function setDistributionAmount(
        uint256 _distributionAmount
    ) external onlyOwner {
        require(
            _distributionAmount > 0,
            "Faucet: distribution amount must be greater than 0"
        );
        distributionAmount = _distributionAmount;
    }

    /**
     * @dev Updates the maximum tokens that can be distributed per hour.
     * Only the owner can call this function.
     * @param _maxDistributionPerHour New maximum tokens that can be distributed per hour
     */
    function setMaxDistributionPerHour(
        uint256 _maxDistributionPerHour
    ) external onlyOwner {
        require(
            _maxDistributionPerHour > 0,
            "Faucet: max distribution per hour must be greater than 0"
        );
        maxDistributionPerHour = _maxDistributionPerHour;
    }

    /**
     * @dev Adds an authorized distributor.
     * Only the owner can call this function.
     * @param _distributor Address of the distributor to add
     */
    function addDistributor(address _distributor) external onlyOwner {
        require(
            _distributor != address(0),
            "Faucet: distributor cannot be the zero address"
        );
        require(
            !distributors[_distributor],
            "Faucet: distributor already exists"
        );

        distributors[_distributor] = true;
        emit DistributorAdded(_distributor);
    }

    /**
     * @dev Removes an authorized distributor.
     * Only the owner can call this function.
     * @param _distributor Address of the distributor to remove
     */
    function removeDistributor(address _distributor) external onlyOwner {
        require(
            distributors[_distributor],
            "Faucet: distributor does not exist"
        );

        distributors[_distributor] = false;
        emit DistributorRemoved(_distributor);
    }

    /**
     * @dev Checks if an address is authorized to distribute tokens.
     * @param _address Address to check
     * @return bool True if the address is authorized, false otherwise
     */
    function isAuthorized(address _address) public view returns (bool) {
        return _address == owner() || distributors[_address];
    }

    /**
     * @dev Modifier that checks if the caller is authorized to distribute tokens.
     */
    modifier onlyAuthorized() {
        require(isAuthorized(msg.sender), "Faucet: caller is not authorized");
        _;
    }

    /**
     * @dev Calculates the start timestamp of the current hour (HH:00:00).
     * @return uint256 Timestamp of the start of the current hour
     */
    function _getCurrentHourStart() private view returns (uint256) {
        // Get the current timestamp
        uint256 timestamp = block.timestamp;

        // Calculate the start of the current hour by truncating minutes and seconds
        // 1 hour = 3600 seconds
        return timestamp - (timestamp % 3600);
    }

    /**
     * @dev Checks and updates the hourly distribution limit.
     * Resets the counter if a new hour has started.
     */
    function _checkAndUpdateHourlyLimit() private {
        // Calculate the start of the current hour
        uint256 newHourStart = _getCurrentHourStart();

        // Check if we've moved to a new hour
        if (newHourStart > currentHourStart) {
            currentHourStart = newHourStart;
            currentHourDistributed = 0;
        }
    }

    /**
     * @dev Distributes tokens to the specified address.
     * Only the owner and authorized distributors can call this function.
     * @param _to Address to send tokens to
     */
    function distribute(
        address payable _to
    ) external onlyAuthorized nonReentrant {
        require(
            _to != address(0),
            "Faucet: recipient cannot be the zero address"
        );
        require(
            address(this).balance >= distributionAmount,
            "Faucet: insufficient balance"
        );

        // Check and update hourly limit
        _checkAndUpdateHourlyLimit();

        // Check if the hourly limit would be exceeded
        require(
            currentHourDistributed + distributionAmount <=
                maxDistributionPerHour,
            "Faucet: hourly distribution limit exceeded"
        );

        // Update the distributed amount for the current hour
        currentHourDistributed += distributionAmount;

        // Update total distributed for statistics
        totalDistributed += distributionAmount;

        // Send tokens
        (bool success, ) = _to.call{value: distributionAmount}("");
        require(success, "Faucet: transfer failed");

        emit TokensDistributed(_to, distributionAmount);
    }

    /**
     * @dev Withdraws all tokens from the contract.
     * Only the owner can call this function.
     */
    function withdraw() external onlyOwner nonReentrant {
        uint256 balance = address(this).balance;
        require(balance > 0, "Faucet: no balance to withdraw");

        (bool success, ) = payable(owner()).call{value: balance}("");
        require(success, "Faucet: withdrawal failed");
    }

    /**
     * @dev Fallback function to receive native tokens.
     */
    receive() external payable {
        emit TokensReceived(msg.sender, msg.value);
    }
}
