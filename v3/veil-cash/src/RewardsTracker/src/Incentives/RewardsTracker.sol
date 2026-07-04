// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

/// @title RewardsTracker
/// @notice A contract for tracking rewards for deposits on Veil.cash
contract RewardsTracker is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    error OnlyValidator();

    event DepositRecorded(bytes32 commitment, uint8 poolSize, address depositor);

    /// @notice Modifier to ensure only the validator contract can call the function
    modifier onlyValidator() {
        if (msg.sender != validatorContract) {
            revert OnlyValidator();
        }
        _;
    }

    uint256 constant BLOCKS_PER_DAY = 43200;

    /// @dev Maps depositor => commitment for each pool size
    mapping(address => bytes32) public depositorCommitment001; // 0.01 ETH pool
    /// @dev Maps pool size => number of deposits
    uint256 public depositCount;

    bool public rewardsTrackingEnabled;

    /// @dev Address of the validator contract that's authorized to make deposits
    address public validatorContract;

    // max deposit count
    uint256 public maxDepositCount;
    /// start block number
    uint256 public startBlock;
    /// end block number
    uint256 public endBlock;
    /// claim block number
    uint256 public claimBlock;

    /// @dev Storage gap for future upgrades
    uint256[50] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _validatorContract) public initializer {
        __Ownable_init(msg.sender);
        __ReentrancyGuard_init();
        validatorContract = _validatorContract;
        startBlock = block.number;
        endBlock = block.number + 10 * BLOCKS_PER_DAY;
        claimBlock = block.number + 30 * BLOCKS_PER_DAY;
        maxDepositCount = 400;
    }

    /// @notice Record a deposit for a given commitment, pool size, and depositor
    /// @param commitment The commitment of the deposit
    /// @param poolSize The pool size of the deposit
    /// @param depositor The address of the depositor
    function recordDeposit(bytes32 commitment, uint8 poolSize, address depositor) external onlyValidator nonReentrant {
        if (!rewardsTrackingEnabled) {
            return;
        }

        if (depositCount >= maxDepositCount) {
            return;
        }

        if (depositorCommitment001[depositor] != bytes32(0)) {
            return;
        }

        if (block.number < startBlock || block.number > endBlock) {
            return;
        }

        depositorCommitment001[depositor] = commitment;
        depositCount++;

        emit DepositRecorded(commitment, poolSize, depositor);
    }

    /// @notice Check if a depositor has a deposit
    /// @param depositor The address of the depositor
    /// @return True if the depositor has a deposit, false otherwise
    function hasDeposit(address depositor) public view returns (bool) {
        return depositorCommitment001[depositor] != bytes32(0);
    }

    /// @notice Toggle the rewards tracking
    function toggleRewardsTracking() external onlyOwner {
        rewardsTrackingEnabled = !rewardsTrackingEnabled;
    }

    /// @notice Set the validator contract
    /// @param _validatorContract The address of the validator contract
    function setValidatorContract(address _validatorContract) external onlyOwner {
        validatorContract = _validatorContract;
    }

    /// @notice Set the maximum deposit count
    /// @param _maxDepositCount The maximum deposit count
    function setMaxDepositCount(uint256 _maxDepositCount) external onlyOwner {
        maxDepositCount = _maxDepositCount;
    }

    /// @notice Set the start block
    /// @param _startBlock The start block
    function setStartBlock(uint256 _startBlock) external onlyOwner {
        startBlock = _startBlock;
    }

    /// @notice Set the end block
    /// @param _endBlock The end block
    function setEndBlock(uint256 _endBlock) external onlyOwner {
        endBlock = _endBlock;
    }

    /// @notice Set the claim block
    /// @param _claimBlock The claim block
    function setClaimBlock(uint256 _claimBlock) external onlyOwner {
        claimBlock = _claimBlock;
    }

    /// withdraw functions in contract upgrade
}
