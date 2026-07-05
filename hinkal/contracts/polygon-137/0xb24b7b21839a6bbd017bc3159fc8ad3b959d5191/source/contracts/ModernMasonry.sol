// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.9;


import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

import {Operator} from "./owner/Operator.sol";

import {IModernTreasury} from "./interfaces/IModernTreasury.sol";

/// Parent class for handling staking, claiming and withdrawing of tokens
contract ShareWrapper {
    using SafeERC20 for IERC20;

    /// Deposit token
    IERC20 public share;

    /// Total amount of deposit tokens staked in the contract
    uint256 private _totalSharesStaked;

    /// Staked balances of each address
    mapping(address => uint256) private _balances;

    /// Getter for total amount of deposit tokens staked in the contract
    /// @return _totalSharesStaked total amount of deposit tokens staked in the contract
    function totalSharesStaked() public view returns (uint256) {
        return _totalSharesStaked;
    }

    /// Retrieves balance of staked tokens for specific address
    /// @return _balances[account] Balance of staked tokens for address
    function balanceOf(address account) public view returns (uint256) {
        return _balances[account];
    }

    /// Stakes deposit tokens in the contract
    /// @param amount Amount of tokens to stake in the contract
    function stake(uint256 amount) public virtual {
        _totalSharesStaked = _totalSharesStaked + amount;
        _balances[msg.sender] = _balances[msg.sender] + amount;
        share.safeTransferFrom(msg.sender, address(this), amount);
    }

    /// Withdraws specified amount of deposit tokens from the contract
    /// @param amount Amount of tokens to withdraw from the contract
    function withdraw(uint256 amount) public virtual {
        uint256 masonShare = _balances[msg.sender];
        require(masonShare >= amount, "Masonry: withdraw request greater than staked amount");
        _totalSharesStaked = _totalSharesStaked - amount;
        _balances[msg.sender] = masonShare - amount;
        share.safeTransfer(msg.sender, amount);
    }
}

/// Fountain used for distribution of rewards allocated by the Treasury
contract Fountain is ShareWrapper, ReentrancyGuard, AccessControl {
    using SafeERC20 for IERC20;

    bytes32 public constant RECOVERER_ROLE = keccak256("RECOVERER_ROLE");

    bytes32 public constant REWARD_TOKEN_ADMIN_ROLE = keccak256("REWARD_TOKEN_ADMIN_ROLE");

    bytes32 public constant FEE_ADMIN_ROLE = keccak256("FEE_ADMIN_ROLE");

    /* ========== DATA STRUCTURES ========== */

    /// Information about single staker 
    struct Masonseat {
        uint256 lastSnapshotIndex;
        uint256 rewardEarned;
        uint256 epochTimerStart;
    }

    /// Information about Masonry epoch
    struct MasonrySnapshot {
        uint256 time;
        uint256 rewardReceived;
        uint256 rewardPerShare;
    }

    /// Is contract already initialized
    bool public initialized = false;

    /// Token distributed as a reward
    IERC20 public rewardToken;

    /// Treasury responsible for distributing rewards
    IModernTreasury public treasury;

    /// Rewards information about each user
    mapping(address => Masonseat) public masons;

    /// Information about all past Masonry epochs
    MasonrySnapshot[] public masonryHistory;

    /// How many epochs need to pass, since last interaction, before user can withdraw staked tokens
    uint256 public withdrawLockupEpochs;
    /// How many epochs need to pass, since last interaction, before user can claim rewards
    uint256 public rewardLockupEpochs;

    /// Deposit fee in % paid in deposit token (100 == 1%)
    uint256 public depositFee;

    /// Recipient address of deposit fees
    address public feeCollector;

    /* EVENTS */

    event Initialized(address indexed executor, uint256 at);
    event Staked(address indexed user, uint256 amount, uint256 depositFeeAmount);
    event Withdrawn(address indexed user, uint256 amount);
    event RewardPaid(address indexed user, uint256 reward);
    event RewardAdded(address indexed user, uint256 reward);
    event RecoveredUnsupportedTokens(address indexed user, address token, uint256 amount);
    event FeeCollectorUpdated(address indexed user, address feeCollector);
    event LockupUpdated(address indexed user, uint256 withdrawLockupEpochs, uint256 rewardLockupEpochs);
    event DepositFeeUpdated(address indexed user, uint256 depositFee);

    /// Verifies whether sender is the configured Treasury
    modifier onlyTreasury() {
        require(msg.sender == address(treasury), "Caller is not the Treasury");
        _;
    }

    /// Verifies whether sender has tokens staked in the contract
    modifier masonExists() {
        require(balanceOf(msg.sender) > 0, "Masonry: The mason does not exist");
        _;
    }

    /// Updates rewards counter for specific address
    /// @param mason Address for which to update reward counter
    modifier updateReward(address mason) {
        if (mason != address(0)) {
            Masonseat memory seat = masons[mason];
            seat.rewardEarned = earned(mason);
            seat.lastSnapshotIndex = latestSnapshotIndex();
            masons[mason] = seat;
        }
        _;
    }

    /// Verifies whether Masonry has already been initialized
    modifier notInitialized() {
        require(!initialized, "Masonry: already initialized");
        _;
    }

    constructor() {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }


    /* ========== GOVERNANCE ========== */

    /// Initializes Masonry
    /// @param _rewardToken Token distributed as reward
    /// @param _share Deposit token
    /// @param _treasury Treasury responsible for allocating rewards to this Masonry
    function initialize(
        IERC20 _rewardToken,
        IERC20 _share,
        IModernTreasury _treasury
    ) external notInitialized onlyRole(DEFAULT_ADMIN_ROLE)
    {
        rewardToken = _rewardToken;
        share = _share;
        treasury = _treasury;

        MasonrySnapshot memory genesisSnapshot = MasonrySnapshot({
            time: block.number,
            rewardReceived: 0,
            rewardPerShare: 0
        });
        masonryHistory.push(genesisSnapshot);

        withdrawLockupEpochs = 6; // Lock for 6 epochs (36h) before release withdraw
        rewardLockupEpochs = 3; // Lock for 3 epochs (18h) before release claimReward

        initialized = true;
        emit Initialized(msg.sender, block.number);
    }

    /// Sets lockup period in epochs required to withdraw staked tokens and claim rewards
    /// @param _withdrawLockupEpochs How many epochs need to pass, since last interaction, before user can withdraw staked tokens
    /// @param _rewardLockupEpochs How many epochs need to pass, since last interaction, before user can claim rewards
    function setLockup(uint256 _withdrawLockupEpochs, uint256 _rewardLockupEpochs)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        require(
            _withdrawLockupEpochs >= _rewardLockupEpochs && _withdrawLockupEpochs <= 56,
            "_withdrawLockupEpochs: out of range"
        ); // <= 2 week
        withdrawLockupEpochs = _withdrawLockupEpochs;
        rewardLockupEpochs = _rewardLockupEpochs;
        emit LockupUpdated(msg.sender, _withdrawLockupEpochs, _rewardLockupEpochs);
    }


    /// Allocates rewards from Treasury
    /// @dev can only be performed by the configured treasury
    /// @param amount Amount of reward tokens allocated to the Masonry this epoch
    function allocateRewards(uint256 amount) external nonReentrant onlyTreasury {
        require(amount > 0, "Masonry: Cannot allocate 0");
        require(totalSharesStaked() > 0, "Masonry: Cannot allocate when totalSharesStaked is 0");

        // Create & add new snapshot
        uint256 prevRPS = getLatestSnapshot().rewardPerShare;
        uint256 nextRPS = prevRPS + ((amount * 1e18) / totalSharesStaked());

        MasonrySnapshot memory newSnapshot = MasonrySnapshot({
            time: block.number,
            rewardReceived: amount,
            rewardPerShare: nextRPS
        });
        masonryHistory.push(newSnapshot);

        rewardToken.safeTransferFrom(msg.sender, address(this), amount);
        emit RewardAdded(msg.sender, amount);
    }

    /// Recovers tokens not handled by the contract, by sending them to the operator
    /// @param _token Token to recover
    function recoverUnsupportedTokens(IERC20 _token) external onlyRole(RECOVERER_ROLE) {
        require(address(_token) != address(rewardToken), "Cannot recover reward Token");
        require(address(_token) != address(share), "Cannot recover share token");

        uint256 amountToRecover = _token.balanceOf(address(this));
        _token.safeTransfer(msg.sender, amountToRecover);

        emit RecoveredUnsupportedTokens(msg.sender, address(_token), amountToRecover);
    }

    /// Sets address of deposit fee recipient
    /// @param _feeCollector Deposit fee recipient
    function setFeeCollector(address _feeCollector) external onlyRole(FEE_ADMIN_ROLE) {
        require(_feeCollector != address(0), "Address cannot be 0");
        feeCollector = _feeCollector;
        emit FeeCollectorUpdated(msg.sender, _feeCollector);
    }

    /// Set new reward token address
    function setRewardToken(IERC20 _rewardToken) external onlyRole(REWARD_TOKEN_ADMIN_ROLE) {
        rewardToken = _rewardToken;
    }

    /// Sets deposit fee percentage (100 == 1%)
    /// @param _depositFee New deposit fee percentage
    function setDepositFee(uint16 _depositFee) external onlyRole(FEE_ADMIN_ROLE) {
        require(_depositFee <= 4000, "Deposit fee cannot be higher than 40%");
        depositFee = _depositFee;
        emit DepositFeeUpdated(msg.sender, depositFee);
    }

    /// Withdraws all deposit tokens and claims rewards from the contract
    function exit() external {
        withdraw(balanceOf(msg.sender));
    }


    /// Tells whether a specific user can already withdraw staked tokens
    /// @param mason User address
    function canWithdraw(address mason) external view returns (bool) {
        return (masons[mason].epochTimerStart + withdrawLockupEpochs) <= treasury.currentEpoch();
    }

    /// Tells whether a specific user can already claim rewards
    /// @param mason User address
    function canClaimReward(address mason) external view returns (bool) {
        return (masons[mason].epochTimerStart + rewardLockupEpochs) <= treasury.currentEpoch();
    }

    /// Retrieves the current epoch number
    function epoch() external view returns (uint256) {
        return treasury.currentEpoch();
    }

    /// Retrieves starting timestamp of the next epoch
    function nextEpochPoint() external view returns (uint256) {
        return treasury.nextEpochPoint();
    }


    /// Retrieves an index of Masonry Snapshot which was the last one used for updating rewards for specific user
    /// @param mason User address
    function getLastSnapshotIndexOf(address mason) public view returns (uint256) {
        return masons[mason].lastSnapshotIndex;
    }

    /// Retrieves the last Masonry snapshot index
    function latestSnapshotIndex() public view returns (uint256) {
        return masonryHistory.length - 1;
    }

    /// Retrieves the amount of rewards per share from the last Masonry snapshot
    function rewardPerShare() public view returns (uint256) {
        return getLatestSnapshot().rewardPerShare;
    }

    /// Retrieves amount of rewards earned by a specific user
    /// @param mason User address
    function earned(address mason) public view returns (uint256) {
        uint256 latestRPS = getLatestSnapshot().rewardPerShare;
        uint256 storedRPS = getLastSnapshotOf(mason).rewardPerShare;

        return ((balanceOf(mason) * (latestRPS - storedRPS)) / 1e18) + masons[mason].rewardEarned;
    }

    /// Stakes deposit tokens in the contract in order to earn rewards every time they are allocated by the Treasury
    /// @param amount Amount of deposit tokens to stake
    function stake(uint256 amount) public override nonReentrant updateReward(msg.sender) {
        require(amount > 0, "Masonry: Cannot stake 0");

        masons[msg.sender].epochTimerStart = treasury.currentEpoch(); // reset timer

        uint256 adjustedAmount = amount;
        uint256 depositFeeAmount = 0;
        if (depositFee > 0) {
            depositFeeAmount = (amount * depositFee) / 10000;
            adjustedAmount = amount - depositFeeAmount;
            share.safeTransferFrom(msg.sender, feeCollector, depositFeeAmount);
        }
        super.stake(adjustedAmount);
        emit Staked(msg.sender, amount, depositFeeAmount);
    }

    /// Withdraws deposit tokens and claims rewards from the contract
    /// @param amount Amount of deposit tokens to withdraw
    function withdraw(uint256 amount) public override nonReentrant masonExists {
        require(amount > 0, "Masonry: Cannot withdraw 0");
        require(
            (masons[msg.sender].epochTimerStart + withdrawLockupEpochs) <= treasury.currentEpoch(),
            "Masonry: still in withdraw lockup"
        );
        claimReward();
        super.withdraw(amount);
        emit Withdrawn(msg.sender, amount);
    }


    /// Claims accumulated rewards
    function claimReward() public masonExists updateReward(msg.sender) {
        uint256 reward = masons[msg.sender].rewardEarned;
        if (reward > 0) {
            require(
                (masons[msg.sender].epochTimerStart + rewardLockupEpochs) <= treasury.currentEpoch(),
                "Masonry: still in reward lockup"
            );
            masons[msg.sender].epochTimerStart = treasury.currentEpoch(); // reset timer
            masons[msg.sender].rewardEarned = 0;
            rewardToken.safeTransfer(msg.sender, reward);
            emit RewardPaid(msg.sender, reward);
        }
    }



    /// Retrieves the latest Masonry snapshot
    function getLatestSnapshot() internal view returns (MasonrySnapshot memory) {
        return masonryHistory[latestSnapshotIndex()];
    }

    /// Retrieves the last Masonry snapshot used by user for updating rewards
    /// @param mason User address
    function getLastSnapshotOf(address mason) internal view returns (MasonrySnapshot memory) {
        return masonryHistory[getLastSnapshotIndexOf(mason)];
    }
}
