// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {console} from "forge-std/console.sol";

struct Wave {
    // Timing parameters
    uint256 waveStartTimestamp;
    uint256 waveEndTimestamp;
    uint256 depositStartTimestamp;
    uint256 depositEndTimestamp;
    uint256 claimStartTimestamp;
    uint256 claimEndTimestamp;
    // Wave configuration
    uint256 maxDeposits;
    uint256 claimableAmount;
    uint256 depositCount;
    // Tracking mappings
    mapping(address => bytes32) depositorCommitments;
    mapping(address => bool) hasClaimed;
}

/// @title WavesTracker
/// @notice A contract for tracking waves for deposits on the Veil protocol
/// @custom:oz-upgrades-from WavesTracker
contract WavesTrackerv2 is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    error OnlyValidator();
    error NoClaimableAmount();
    error AlreadyClaimed();
    error NoDeposit();
    error InsufficientContractBalance();
    error TransferFailed();
    error NoBalanceToWithdraw();
    error ClaimPeriodNotActive();
    error OnlyFeeDistributor();

    event DepositRecorded(bytes32 commitment, uint8 poolSize, address depositor);
    event TokensClaimed(address indexed user, uint256 amount, uint256 wave);
    event AirdropStateChanged(bool isActive, uint256 wave);
    event UnclaimedWithdrawn(uint256 amount);
    event WaveInitialized(uint256 wave);
    event WaveConfigUpdated(
        uint256 indexed wave,
        uint256 waveEndTimestamp,
        uint256 depositEndTimestamp,
        uint256 claimEndTimestamp,
        uint256 maxDeposits,
        uint256 claimableAmount
    );

    /// @notice Modifier to ensure only the validator contract can call the function
    modifier onlyValidator() {
        if (msg.sender != validatorContract) {
            revert OnlyValidator();
        }
        _;
    }

    /// @notice Modifier to ensure only the validator contract can call the function
    modifier onlyFeeDistributor() {
        if (msg.sender != feeDistributor) {
            revert OnlyFeeDistributor();
        }
        _;
    }

    /// @dev Airdrop token
    address public VeilTokenAddress;
    IERC20 public VeilToken;

    /// veil contract details
    bool public rewardsTrackingEnabled;
    address public validatorContract;

    /// @dev Maps wave ID to Wave struct
    mapping(uint256 => Wave) public waves;
    uint256 public currentWave;

    /// @dev stat tracking
    mapping(address => uint256) public totalDepositsForUser;

    /// @dev fee distributor
    address public feeDistributor;

    /// @dev Storage gap for future upgrades
    uint256[49] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _validatorContract, address _veilTokenAddress) public initializer {
        __Ownable_init(msg.sender);
        __ReentrancyGuard_init();
        validatorContract = _validatorContract;
        VeilTokenAddress = _veilTokenAddress;
        VeilToken = IERC20(_veilTokenAddress);
    }

    /**
     * @notice Records a deposit for a user
     * @param commitment The commitment hash of the deposit
     * @param poolSize The size of the pool
     * @param depositor The address of the depositor
     */
    function recordDeposit(bytes32 commitment, uint8 poolSize, address depositor) external onlyValidator nonReentrant {
        if (!rewardsTrackingEnabled) {
            return;
        }

        /// current wave data
        Wave storage waveData = waves[currentWave];

        if (waveData.depositCount >= waveData.maxDeposits) {
            return;
        }

        if (waveData.depositorCommitments[depositor] != bytes32(0)) {
            return;
        }

        if (block.timestamp < waveData.depositStartTimestamp || block.timestamp > waveData.depositEndTimestamp) {
            return;
        }

        waveData.depositorCommitments[depositor] = commitment;
        waveData.depositCount++;
        totalDepositsForUser[depositor]++;

        emit DepositRecorded(commitment, poolSize, depositor);
    }

    /**
     * @notice Allows a user to claim their rewards for a specific wave
     * @param wave The wave index to claim from
     */
    function claim(uint256 wave, address user) external nonReentrant onlyFeeDistributor {
        Wave storage waveData = waves[wave];
        uint256 amount = waveData.claimableAmount;

        if (waveData.depositorCommitments[user] == bytes32(0)) revert NoClaimableAmount();
        if (waveData.hasClaimed[user]) revert AlreadyClaimed();
        if (VeilToken.balanceOf(address(this)) < amount) revert InsufficientContractBalance();

        waveData.hasClaimed[user] = true;

        bool success = VeilToken.transfer(user, amount);
        if (!success) revert TransferFailed();

        emit TokensClaimed(user, amount, wave);
    }

    ////// ADMIN FUNCTIONS //////

    /**
     * @notice Starts a new wave with specified parameters
     * @param _maxDepositCount The maximum number of deposits allowed for the wave
     * @param _claimableAmount The amount of tokens to be claimed per deposit
     */
    function startNextWave(uint256 _maxDepositCount, uint256 _claimableAmount) public onlyOwner {
        uint256 wave = currentWave + 1;

        Wave storage newWave = waves[wave];

        newWave.waveStartTimestamp = block.timestamp;
        newWave.waveEndTimestamp = block.timestamp + 28 days;
        newWave.depositStartTimestamp = block.timestamp;
        newWave.depositEndTimestamp = newWave.depositStartTimestamp + 7 days;
        newWave.claimStartTimestamp = block.timestamp + 21 days;
        newWave.claimEndTimestamp = newWave.claimStartTimestamp + 7 days;

        newWave.maxDeposits = _maxDepositCount;
        newWave.claimableAmount = _claimableAmount;
        newWave.depositCount = 0;

        currentWave = wave;

        emit WaveInitialized(wave);
    }

    /**
     * @notice Changes the claimable amount for a wave
     * @param wave The wave index to update
     * @param _claimableAmount The new claimable amount
     */
    function changeWaveClaimableAmount(uint256 wave, uint256 _claimableAmount) external onlyOwner {
        waves[wave].claimableAmount = _claimableAmount;
    }

    /**
     * @notice Changes the maximum deposits allowed for a wave
     * @param wave The wave index to update
     * @param _maxDeposits The new maximum deposits allowed
     */
    function changeWaveMaxDeposits(uint256 wave, uint256 _maxDeposits) external onlyOwner {
        waves[wave].maxDeposits = _maxDeposits;
    }

    /**
     * @notice Changes the deposit end timestamp for a wave
     * @param wave The wave index to update
     * @param _depositEndTimestamp The new deposit end timestamp
     */
    function changeWaveDepositEndTimestamp(uint256 wave, uint256 _depositEndTimestamp) external onlyOwner {
        waves[wave].depositEndTimestamp = _depositEndTimestamp;
    }

    /**
     * @notice Changes the claim end timestamp for a wave
     * @param wave The wave index to update
     * @param _claimEndTimestamp The new claim end timestamp
     */
    function changeWaveClaimEndTimestamp(uint256 wave, uint256 _claimEndTimestamp) external onlyOwner {
        waves[wave].claimEndTimestamp = _claimEndTimestamp;
    }

    /**
     * @notice Updates multiple configuration parameters for a wave in a single transaction
     * @param waveEndTimestamp New wave end timestamp (0 to keep current value)
     * @param depositEndTimestamp New deposit end timestamp (0 to keep current value)
     * @param claimEndTimestamp New claim end timestamp (0 to keep current value)
     * @param maxDeposits New maximum deposits allowed (0 to keep current value)
     * @param claimableAmount New claimable amount per deposit (0 to keep current value)
     */
    function updateWaveConfig(
        uint256 waveEndTimestamp,
        uint256 depositEndTimestamp,
        uint256 claimEndTimestamp,
        uint256 maxDeposits,
        uint256 claimableAmount
    ) external onlyOwner {
        Wave storage waveData = waves[currentWave];

        if (waveEndTimestamp > 0) {
            waveData.waveEndTimestamp = waveEndTimestamp;
        }

        if (depositEndTimestamp > 0) {
            waveData.depositEndTimestamp = depositEndTimestamp;
        }

        if (claimEndTimestamp > 0) {
            waveData.claimEndTimestamp = claimEndTimestamp;
        }

        if (maxDeposits > 0) {
            waveData.maxDeposits = maxDeposits;
        }

        if (claimableAmount > 0) {
            waveData.claimableAmount = claimableAmount;
        }

        emit WaveConfigUpdated(
            currentWave,
            waveData.waveEndTimestamp,
            waveData.depositEndTimestamp,
            waveData.claimEndTimestamp,
            waveData.maxDeposits,
            waveData.claimableAmount
        );
    }

    /**
     * @notice Toggles the rewards tracking state
     * @dev This function is only callable by the owner
     */
    function toggleRewardsTracking() external onlyOwner {
        rewardsTrackingEnabled = !rewardsTrackingEnabled;
    }

    /**
     * @notice Sets the validator contract
     * @param _validatorContract The address of the validator contract
     */
    function setValidatorContract(address _validatorContract) external onlyOwner {
        validatorContract = _validatorContract;
    }

    /**
     * @notice Sets the fee distributor
     * @param _feeDistributor The address of the fee distributor
     */
    function setFeeDistributor(address _feeDistributor) external onlyOwner {
        feeDistributor = _feeDistributor;
    }

    /**
     * @notice Withdraws all unclaimed Veil tokens from the contract
     * @dev This function is only callable by the owner
     */
    function withdrawAll() external onlyOwner {
        uint256 balance = VeilToken.balanceOf(address(this));
        if (balance == 0) revert NoBalanceToWithdraw();

        bool success = VeilToken.transfer(owner(), balance);
        if (!success) revert TransferFailed();

        emit UnclaimedWithdrawn(balance);
    }

    ////// VIEW FUNCTIONS //////

    /**
     * @notice Checks if a user has a deposit in a specific wave
     * @param wave The wave index to check
     * @param depositor The address of the depositor
     * @return True if the user has a deposit in the wave, false otherwise
     */
    function hasDepositInWave(uint256 wave, address depositor) public view returns (bool) {
        return waves[wave].depositorCommitments[depositor] != bytes32(0);
    }

    /**
     * @notice Checks if a user has a deposit in a specific wave
     * @param wave The wave index to check
     * @param depositor The address of the depositor
     * @return True if the user has a deposit in the wave, false otherwise
     */
    function getCommitmentInWave(uint256 wave, address depositor) public view returns (bytes32) {
        return waves[wave].depositorCommitments[depositor];
    }

    /**
     * @notice Checks if a user has claimed in a specific wave
     * @param wave The wave index to check
     * @param user The address of the user
     * @return True if the user has claimed in the wave, false otherwise
     */
    function hasClaimedInWave(uint256 wave, address user) public view returns (bool) {
        return waves[wave].hasClaimed[user];
    }

    /**
     * @notice Returns information about a specific wave
     * @param wave The wave index to get information for
     * @return startTimestamp The timestamp when the wave started
     * @return endTimestamp The timestamp when the wave ended
     * @return depositStartTimestamp The timestamp when the deposit period started
     * @return depositEndTimestamp The timestamp when the deposit period ended
     * @return claimStartTimestamp The timestamp when the claim period started
     * @return claimEndTimestamp The timestamp when the claim period ended
     * @return maxDeposits The maximum number of deposits allowed for the wave
     * @return depositCount The number of deposits made for the wave
     * @return claimableAmount The amount of tokens to be claimed per deposit
     */
    function getWaveInfo(uint256 wave)
        external
        view
        returns (
            uint256 startTimestamp,
            uint256 endTimestamp,
            uint256 depositStartTimestamp,
            uint256 depositEndTimestamp,
            uint256 claimStartTimestamp,
            uint256 claimEndTimestamp,
            uint256 maxDeposits,
            uint256 depositCount,
            uint256 claimableAmount
        )
    {
        Wave storage waveData = waves[wave];
        return (
            waveData.waveStartTimestamp,
            waveData.waveEndTimestamp,
            waveData.depositStartTimestamp,
            waveData.depositEndTimestamp,
            waveData.claimStartTimestamp,
            waveData.claimEndTimestamp,
            waveData.maxDeposits,
            waveData.depositCount,
            waveData.claimableAmount
        );
    }

    /**
     * @notice Returns the balance of Veil tokens in the contract
     * @return The balance of Veil tokens
     */
    function getVeilBalance() external view returns (uint256) {
        return VeilToken.balanceOf(address(this));
    }
}
