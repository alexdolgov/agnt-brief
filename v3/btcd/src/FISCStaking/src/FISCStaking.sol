// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

import "./Silo.sol";
import "./interfaces/IFISCStaking.sol";
import "./StakingSingleAdminAccessControl.sol";

/**
 * @title FISCStaking
 * @notice ERC4626 vault for staking FISC tokens and earning BTCD rewards
 * @dev Implements a staking vault with linear reward vesting, cooldown periods for withdrawals,
 *      and blacklisting capabilities. Users deposit FISC tokens and receive vault shares.
 *      BTCD rewards are distributed linearly over configurable vesting periods.
 */
contract FISCStaking is
    StakingSingleAdminAccessControl,
    ReentrancyGuard,
    ERC20Permit,
    ERC4626,
    IFISCStaking
{
    using SafeERC20 for IERC20;

    /* --------------- CONSTANTS --------------- */

    uint256 public constant DECIMAL_SCALING_FACTOR = 1e18;

    /// @notice The role which enables reward distribution into the vault
    bytes32 public constant REWARD_DISTRIBUTOR_ROLE =
        keccak256("REWARD_DISTRIBUTOR_ROLE");

    /// @notice The role which enables blacklist management
    bytes32 public constant BLACKLIST_MANAGER_ROLE =
        keccak256("BLACKLIST_MANAGER_ROLE");

    /// @notice The role which prevents an address from depositing/minting shares
    bytes32 public constant SOFT_RESTRICTED_STAKER_ROLE =
        keccak256("SOFT_RESTRICTED_STAKER_ROLE");

    /// @notice The role which prevents all staking operations (deposit, withdraw, mint, redeem, transfer)
    /// @dev The owner can redistribute balance via redistributeLockedAmount()
    bytes32 public constant FULL_RESTRICTED_STAKER_ROLE =
        keccak256("FULL_RESTRICTED_STAKER_ROLE");

    /// @notice Maximum allowed vesting period (90 days)
    uint24 public constant MAX_VESTING_PERIOD = 90 days;

    /// @notice Maximum allowed cooldown duration (90 days)
    uint24 public constant MAX_COOLDOWN_DURATION = 90 days;

    /// @notice Minimum non-zero shares to prevent donation attacks
    uint256 public constant MIN_SHARES = 1 ether;

    /* --------------- STATE VARIABLES --------------- */

    /// @notice Silo contract for escrow of assets under cooldown
    Silo public immutable silo;

    /// @notice Reward token (BTCD) distributed to FISC stakers
    IERC20 public immutable rewardToken;

    /// @notice Total reward amount for the current vesting period
    uint256 public vestingAmount;

    /// @notice Timestamp when current vesting period started
    uint256 public lastDistributionTimestamp;

    /// @notice Duration of the linear vesting period (default: 8 hours)
    uint24 public vestingPeriod;

    /// @notice Current reward vesting rate in reward tokens per second
    uint256 public rewardRate;

    /// @notice Cumulative vested reward per share, scaled by 1e18
    uint256 public rewardPerShareStored;

    /// @notice Timestamp of last global reward update
    uint256 public lastUpdateTime;

    /// @notice Timestamp when current vesting period finishes
    uint256 public periodFinish;

    /// @notice Per-user accounting: reward per share paid to each user
    mapping(address => uint256) public userRewardPerSharePaid;

    /// @notice Per-user accounting: pending rewards for each user
    mapping(address => uint256) public pendingRewards;

    /// @notice Cooldown duration required before unstaking (0 = instant withdrawal enabled)
    uint24 public cooldownDuration;

    /// @notice User cooldown tracking for each address
    mapping(address => UserCooldown) public cooldowns;

    /// @notice Internal accounting of deposited assets to prevent donation attacks
    uint256 private _assetsStored;

    /// @notice Internal accounting of reward tokens to prevent stuck tokens
    uint256 private _rewardTokensStored;

    /// @notice Dust amount from reward distribution calculations
    uint256 private _dustFromDistribution;

    /* --------------- MODIFIERS --------------- */

    /// @dev Ensures the amount is not zero
    modifier notZero(uint256 amount) {
        if (amount == 0) revert InvalidAmount();
        _;
    }

    /// @dev Ensures the target address is not the contract owner
    modifier notOwner(address target) {
        if (target == owner()) revert CantBlacklistOwner();
        _;
    }

    /// @dev Ensures cooldown is disabled (duration is 0)
    modifier ensureCooldownOff() {
        if (cooldownDuration != 0) revert InvalidCooldown();
        _;
    }

    /// @dev Ensures cooldown is enabled (duration is greater than 0)
    modifier ensureCooldownOn() {
        if (cooldownDuration == 0) revert InvalidCooldown();
        _;
    }

    /// @dev Ensures the account is not fully restricted
    modifier notFullyRestricted(address account) {
        if (hasRole(FULL_RESTRICTED_STAKER_ROLE, account)) {
            revert OperationNotAllowed();
        }
        _;
    }

    /* --------------- CONSTRUCTOR --------------- */

    /**
     * @notice Constructs the FISCStaking contract
     * @param _asset The FISC token address (staking token)
     * @param _rewardToken The BTCD token address (reward token)
     * @param _initialRewardDistributor Initial address with reward distributor role
     * @param _owner Initial owner with admin role
     * @param _name Name of the vault token
     * @param _symbol Symbol of the vault token
     */
    constructor(
        IERC20 _asset,
        IERC20 _rewardToken,
        address _initialRewardDistributor,
        address _owner,
        string memory _name,
        string memory _symbol
    ) ERC20(_name, _symbol) ERC4626(_asset) ERC20Permit(_name) {
        // Enforce asset and rewardToken are different to prevent accounting issues
        if (address(_asset) == address(_rewardToken)) revert InvalidToken();
        if (
            address(_asset) == address(0) ||
            address(_rewardToken) == address(0) ||
            _initialRewardDistributor == address(0) ||
            _owner == address(0)
        ) {
            revert InvalidToken();
        }

        // Enforce 18 decimals for proper MIN_SHARES enforcement
        if (IERC20Metadata(address(_asset)).decimals() != 18)
            revert InvalidToken();

        silo = new Silo(address(this), address(_asset));
        rewardToken = _rewardToken;

        // Initialise cooldown configuration
        _grantRole(REWARD_DISTRIBUTOR_ROLE, _initialRewardDistributor);
        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
        cooldownDuration = 7 days;
        lastDistributionTimestamp = block.timestamp;
        lastUpdateTime = block.timestamp;
        periodFinish = block.timestamp;

        // Default to 8-hour linear vesting, Ethena-style
        _updateVestingPeriod(8 hours);
    }

    ////////////////////////////////////////////////////////////
    //// PRIVILEGED ROLE ACTIONS ///////////////////////////////
    ////////////////////////////////////////////////////////////

    /* --------------- DEFAULT_ADMIN_ROLE ------------- */

    /// @notice Sets the cooldown duration for staker withdrawals
    /// @param duration Duration of the cooldown (0 = instant withdrawal, max 90 days)
    function setCooldownDuration(
        uint24 duration
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (duration > MAX_COOLDOWN_DURATION) {
            revert InvalidCooldown();
        }

        uint24 previousDuration = cooldownDuration;
        cooldownDuration = duration;
        emit CooldownDurationUpdated(previousDuration, cooldownDuration);
    }

    /// @notice Updates the vesting period for reward distribution
    /// @param newVestingPeriod The new vesting period (max 90 days)
    function updateVestingPeriod(
        uint24 newVestingPeriod
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _updateVestingPeriod(newVestingPeriod);
    }

    /// @notice Rescues accidentally sent tokens (except reward and staking tokens under normal accounting)
    /// @param token The token address to rescue
    /// @param amount The amount to rescue
    /// @param to The recipient address
    function rescueTokens(
        address token,
        uint256 amount,
        address to
    ) external nonReentrant onlyRole(DEFAULT_ADMIN_ROLE) {
        // Cannot rescue the reward token (BTCD) - any donated BTCD will be distributed on next transferInRewards
        if (token == address(rewardToken)) {
            revert OperationNotAllowed();
        }

        // Cannot rescue the staked asset (FISC) beyond excess balance
        if (token == asset()) {
            uint256 thisBalance = IERC20(asset()).balanceOf(address(this));
            if (thisBalance <= _assetsStored) {
                revert OperationNotAllowed();
            }
            uint256 excessBalance = thisBalance - _assetsStored;
            if (amount > excessBalance) {
                revert OperationNotAllowed();
            }
        }
        IERC20(token).safeTransfer(to, amount);
    }

    /// @notice Redistributes a fully restricted user's shares, assets in cooldown, and rewards to a receiver
    /// @param from The address to redistribute from (must be fully restricted)
    /// @param receiver The address to redistribute to (must not be fully restricted)
    function redistributeLockedAmount(
        address from,
        address receiver
    ) external nonReentrant onlyRole(DEFAULT_ADMIN_ROLE) {
        if (
            !hasRole(FULL_RESTRICTED_STAKER_ROLE, from) ||
            hasRole(FULL_RESTRICTED_STAKER_ROLE, receiver) ||
            receiver == address(this) ||
            receiver == address(0)
        ) {
            revert OperationNotAllowed();
        }

        uint256 amountToDistribute = balanceOf(from);

        UserCooldown storage userCooldown = cooldowns[from];

        // Check for any assets in cooldown (in silo)
        uint256 siloAmount = userCooldown.underlyingAmount;

        if (amountToDistribute == 0 && siloAmount == 0) {
            revert OperationNotAllowed();
        }

        // Redistribute shares from restricted user if any.
        if (amountToDistribute > 0) {
            _transfer(from, receiver, amountToDistribute);
        }

        // Handle silo assets
        if (siloAmount > 0) {
            // Clear the cooldown and transfer assets from silo to new owner
            userCooldown.cooldownEnd = 0;
            userCooldown.underlyingAmount = 0;
            silo.withdraw(receiver, siloAmount);
        }

        // Capture and clear rewards from restricted user
        _claimRewards(from, receiver);

        emit LockedAmountRedistributed(from, receiver, amountToDistribute);
    }

    /* --------------- BLACKLIST_MANAGER_ROLE ------------- */

    /// @notice Adds an address to the blacklist with soft or full restrictions
    /// @param target The address to blacklist
    /// @param isFullBlacklisting true for full restriction (all operations blocked), false for soft restriction (deposits/mints only)
    function addToBlacklist(
        address target,
        bool isFullBlacklisting
    ) external onlyRole(BLACKLIST_MANAGER_ROLE) notOwner(target) {
        bytes32 role = isFullBlacklisting
            ? FULL_RESTRICTED_STAKER_ROLE
            : SOFT_RESTRICTED_STAKER_ROLE;
        _grantRole(role, target);
    }

    /// @notice Removes an address from the blacklist
    /// @param target The address to remove from blacklist
    /// @param isFullBlacklisting true to remove from full restriction, false to remove from soft restriction
    function removeFromBlacklist(
        address target,
        bool isFullBlacklisting
    ) external onlyRole(BLACKLIST_MANAGER_ROLE) {
        bytes32 role = isFullBlacklisting
            ? FULL_RESTRICTED_STAKER_ROLE
            : SOFT_RESTRICTED_STAKER_ROLE;
        _revokeRole(role, target);
    }

    /* --------------- REWARD_DISTRIBUTOR_ROLE ------------- */

    /// @notice Transfers rewards into the vault with linear vesting
    /// @dev Captures any donated tokens and includes them in the distribution
    /// @param amount The amount of rewards to distribute
    function transferInRewards(
        uint256 amount
    ) external nonReentrant onlyRole(REWARD_DISTRIBUTOR_ROLE) notZero(amount) {
        if (vestingPeriod == 0) revert InvalidVestingPeriod();
        if (totalSupply() == 0) {
            revert OperationNotAllowed();
        }
        // Account for all rewards from the previous period
        _updateGlobalReward();
        // No overlapping vesting periods allowed (Ethena-style)
        if (getUnvestedAmount() > 0) revert StillVesting();
        // Capture any dust/donated tokens before the transfer
        uint256 currentBalance = rewardToken.balanceOf(address(this));
        uint256 dust = currentBalance > _rewardTokensStored
            ? currentBalance - _rewardTokensStored
            : 0;
        // Transfer in the new rewards
        rewardToken.safeTransferFrom(msg.sender, address(this), amount);
        // Capture any dust from previous distributions
        uint256 oldDustFromDistribution = _dustFromDistribution;
        _dustFromDistribution = 0;
        // Distribute both the new amount AND any accumulated dust
        uint256 totalToDistribute = amount + dust + oldDustFromDistribution;
        // Update vesting parameters
        rewardRate = totalToDistribute / vestingPeriod;
        vestingAmount = rewardRate * vestingPeriod;
        _dustFromDistribution = totalToDistribute - vestingAmount;
        // Require non-zero reward rate to prevent permanently locked tokens
        if (rewardRate == 0) revert InvalidRewardRate();
        // Update vesting timestamps
        lastDistributionTimestamp = block.timestamp;
        lastUpdateTime = block.timestamp;
        periodFinish = block.timestamp + vestingPeriod;
        // Update internal accounting
        _rewardTokensStored += amount + dust;
        // Emit event
        emit RewardsReceived(totalToDistribute);
    }

    ////////////////////////////////////////////////////////////
    //// PUBLIC STAKER ACTIONS /////////////////////////////////
    ////////////////////////////////////////////////////////////

    /**
     * @notice Withdraws assets directly when cooldown is disabled
     * @dev Can only be used when cooldown duration is 0
     * @param assets Amount of assets to withdraw
     * @param receiver Address to receive the assets
     * @param _owner Address that owns the shares being burned
     * @return shares The amount of shares burned
     */
    function withdraw(
        uint256 assets,
        address receiver,
        address _owner
    ) public virtual override ensureCooldownOff returns (uint256) {
        return super.withdraw(assets, receiver, _owner);
    }

    /**
     * @notice Redeems shares directly when cooldown is disabled
     * @dev Can only be used when cooldown duration is 0
     * @param shares Amount of shares to redeem
     * @param receiver Address to receive the assets
     * @param _owner Address that owns the shares being burned
     * @return assets The amount of assets transferred
     */
    function redeem(
        uint256 shares,
        address receiver,
        address _owner
    ) public virtual override ensureCooldownOff returns (uint256) {
        return super.redeem(shares, receiver, _owner);
    }

    /// @notice Initiates cooldown for specified asset amount
    /// @dev Can only be used when cooldown is enabled. Assets go to silo during cooldown
    /// @param assets The amount of assets to initiate cooldown for
    /// @return shares The number of shares being redeemed
    function cooldownAssets(
        uint256 assets
    ) external ensureCooldownOn returns (uint256 shares) {
        if (assets > maxWithdraw(msg.sender)) revert ExcessiveWithdrawAmount();

        shares = previewWithdraw(assets);

        UserCooldown storage userCooldown = cooldowns[msg.sender];

        userCooldown.cooldownEnd = uint104(block.timestamp) + cooldownDuration;
        userCooldown.underlyingAmount += uint152(assets);

        _withdraw(msg.sender, address(silo), msg.sender, assets, shares);
    }

    /// @notice Initiates cooldown for specified share amount
    /// @dev Can only be used when cooldown is enabled. Assets go to silo during cooldown
    /// @param shares The number of shares to initiate cooldown for
    /// @return assets The amount of assets being redeemed
    function cooldownShares(
        uint256 shares
    ) external ensureCooldownOn returns (uint256 assets) {
        if (shares > maxRedeem(msg.sender)) revert ExcessiveRedeemAmount();

        assets = previewRedeem(shares);

        UserCooldown storage userCooldown = cooldowns[msg.sender];

        userCooldown.cooldownEnd = uint104(block.timestamp) + cooldownDuration;
        userCooldown.underlyingAmount += uint152(assets);

        _withdraw(msg.sender, address(silo), msg.sender, assets, shares);
    }

    /// @notice Withdraws assets from silo after cooldown period has expired
    /// @param receiver The address to send assets to after cooldown expires
    function unstake(
        address receiver
    ) external nonReentrant notFullyRestricted(msg.sender) {
        UserCooldown storage userCooldown = cooldowns[msg.sender];
        uint256 assets = userCooldown.underlyingAmount;

        if (assets == 0) revert InvalidAmount();

        if (
            block.timestamp >= userCooldown.cooldownEnd || cooldownDuration == 0
        ) {
            userCooldown.cooldownEnd = 0;
            userCooldown.underlyingAmount = 0;

            silo.withdraw(receiver, assets);
        } else {
            revert InvalidCooldown();
        }
    }

    /// @notice Claims vested reward tokens for the caller
    /// @param receiver Address that will receive the reward tokens
    /// @return amount The amount of reward tokens transferred
    function claimRewards(
        address receiver
    )
        external
        nonReentrant
        notFullyRestricted(msg.sender)
        returns (uint256 amount)
    {
        return _claimRewards(msg.sender, receiver);
    }

    ////////////////////////////////////////////////////////////
    //// PUBLIC GETTERS AND PURE FUNCTIONS /////////////////////
    ////////////////////////////////////////////////////////////

    /// @notice Returns the amount of underlying assets managed by the vault
    /// @dev Only FISC (the ERC4626 asset) counts as vault assets. BTCD rewards are separate and do not affect share price
    /// @return The total amount of FISC assets in the vault
    function totalAssets()
        public
        view
        override(ERC4626, IFISCStaking)
        returns (uint256)
    {
        // Only FISC (the ERC4626 asset) counts as vault assets.
        // BTCD rewards are separate and do not affect share price.
        // We use internal accounting to prevent donation attacks.
        return _assetsStored;
    }

    /// @notice Returns the amount of reward tokens still vesting in the current period
    /// @return The amount of unvested rewards
    function getUnvestedAmount() public view returns (uint256) {
        if (rewardRate == 0 || block.timestamp >= periodFinish) {
            return 0;
        }
        uint256 remainingTime = periodFinish - block.timestamp;
        return remainingTime * rewardRate;
    }

    /// @notice Returns the total vested reward tokens claimable by an account at the current block
    /// @param account The account to check claimable rewards for
    /// @return The amount of claimable reward tokens
    function getClaimableRewards(
        address account
    ) external view returns (uint256) {
        uint256 _rewardPerShareStored = rewardPerShareStored;
        uint256 currentTime = _lastTimeRewardApplicable();
        uint256 supply = totalSupply();

        if (currentTime > lastUpdateTime && supply > 0 && rewardRate > 0) {
            uint256 elapsed = currentTime - lastUpdateTime;
            uint256 reward = elapsed * rewardRate;
            _rewardPerShareStored += (reward * DECIMAL_SCALING_FACTOR) / supply;
        }

        uint256 accrued = (balanceOf(account) *
            (_rewardPerShareStored - userRewardPerSharePaid[account])) /
            DECIMAL_SCALING_FACTOR;

        return pendingRewards[account] + accrued;
    }

    /// @notice Returns the number of decimals used by the token
    /// @dev Resolves ambiguity between ERC20 and ERC4626 decimals declarations
    /// @return The number of decimals (always 18)
    function decimals() public pure override(ERC4626, ERC20) returns (uint8) {
        return 18;
    }

    /// @notice Returns the internal accounting of reward tokens stored
    /// @dev Used for testing and verification of reward accounting
    /// @return The amount of reward tokens tracked internally
    function getRewardTokensStored() external view returns (uint256) {
        return _rewardTokensStored;
    }

    /// @notice Returns the dust amount from reward distribution calculations
    /// @dev Dust is the remainder from integer division that couldn't be distributed
    /// @return The amount of dust from the current/last distribution
    function getDustFromDistribution() external view returns (uint256) {
        return _dustFromDistribution;
    }

    ////////////////////////////////////////////////////////////
    //// INTERNAL FUNCTIONS ////////////////////////////////////
    ////////////////////////////////////////////////////////////

    /**
     * @dev Claims rewards for a user and transfers them to a receiver
     * @param caller The user whose rewards are being claimed
     * @param receiver The address to receive the reward tokens
     * @return amount The amount of reward tokens claimed
     */
    function _claimRewards(
        address caller,
        address receiver
    ) internal returns (uint256 amount) {
        _updateGlobalReward();
        _updateUserReward(caller);

        amount = pendingRewards[caller];
        if (amount == 0) {
            return 0;
        }

        pendingRewards[caller] = 0;
        _rewardTokensStored -= amount;

        rewardToken.safeTransfer(receiver, amount);
        emit RewardsClaimed(caller, receiver, amount);
    }

    /// @dev Ensures a small non-zero amount of shares does not remain, preventing donation attacks
    function _checkMinShares() internal view {
        uint256 _totalSupply = totalSupply();
        if (_totalSupply > 0 && _totalSupply < MIN_SHARES)
            revert MinSharesViolation();
    }

    /**
     * @dev Deposit/mint common workflow with blacklist and accounting checks
     * @param caller Sender of assets
     * @param receiver Where to send shares
     * @param assets Assets to deposit
     * @param shares Shares to mint
     */
    function _deposit(
        address caller,
        address receiver,
        uint256 assets,
        uint256 shares
    ) internal override nonReentrant notZero(assets) notZero(shares) {
        if (
            hasRole(SOFT_RESTRICTED_STAKER_ROLE, caller) ||
            hasRole(SOFT_RESTRICTED_STAKER_ROLE, receiver)
        ) {
            revert OperationNotAllowed();
        }
        super._deposit(caller, receiver, assets, shares);
        _assetsStored += assets;
        _checkMinShares();
    }

    /**
     * @dev Withdraw/redeem common workflow with blacklist and accounting checks
     * @param caller Transaction sender
     * @param receiver Where to send assets
     * @param _owner Where to burn shares from
     * @param assets Asset amount to transfer out
     * @param shares Shares to burn
     */
    function _withdraw(
        address caller,
        address receiver,
        address _owner,
        uint256 assets,
        uint256 shares
    ) internal override nonReentrant notZero(assets) notZero(shares) {
        if (
            hasRole(FULL_RESTRICTED_STAKER_ROLE, caller) ||
            hasRole(FULL_RESTRICTED_STAKER_ROLE, receiver) ||
            hasRole(FULL_RESTRICTED_STAKER_ROLE, _owner)
        ) {
            revert OperationNotAllowed();
        }

        super._withdraw(caller, receiver, _owner, assets, shares);
        _assetsStored -= assets;
        _checkMinShares();
    }

    /**
     * @dev Updates the vesting period for reward distribution
     * @param newVestingPeriod The new vesting period to set
     */
    function _updateVestingPeriod(uint24 newVestingPeriod) internal {
        if (newVestingPeriod == 0) revert InvalidVestingPeriod();
        // Make sure all previous rewards are fully accounted
        _updateGlobalReward();
        if (getUnvestedAmount() > 0) revert StillVesting();
        if (newVestingPeriod > MAX_VESTING_PERIOD)
            revert InvalidVestingPeriod();
        emit VestingDurationUpdated(vestingPeriod, newVestingPeriod);
        vestingPeriod = newVestingPeriod;
    }

    /// @dev Returns the timestamp used for reward accrual (capped at periodFinish)
    /// @return The applicable timestamp for reward calculations
    function _lastTimeRewardApplicable() internal view returns (uint256) {
        return block.timestamp < periodFinish ? block.timestamp : periodFinish;
    }

    /// @dev Updates global reward accounting (rewardPerShareStored)
    function _updateGlobalReward() internal {
        uint256 currentTime = _lastTimeRewardApplicable();
        if (currentTime == lastUpdateTime) {
            return;
        }

        uint256 supply = totalSupply();
        if (rewardRate > 0) {
            // Accumulate dust for next distribution
            uint256 elapsed = currentTime - lastUpdateTime;
            uint256 reward = elapsed * rewardRate;
            if (supply > 0) {
                uint256 delta = (reward * DECIMAL_SCALING_FACTOR) / supply;
                rewardPerShareStored += delta;
            } else {
                _dustFromDistribution += reward;
            }
        }

        lastUpdateTime = currentTime;
    }

    /// @dev Updates an account's pending rewards based on its current share balance
    /// @param account The account to update rewards for
    function _updateUserReward(address account) internal {
        if (account == address(0)) return;

        uint256 _rewardPerShareStored = rewardPerShareStored;
        uint256 paid = userRewardPerSharePaid[account];
        if (_rewardPerShareStored == paid) return;

        uint256 shares = balanceOf(account);
        if (shares > 0) {
            uint256 delta = _rewardPerShareStored - paid; // [btcd/share]
            uint256 accrued = (shares * delta) / DECIMAL_SCALING_FACTOR; // [btcd]
            if (accrued > 0) {
                pendingRewards[account] += accrued;
            }
        }
        userRewardPerSharePaid[account] = _rewardPerShareStored;
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes minting and burning.
     * @dev Disables transfers from or to addresses with the FULL_RESTRICTED_STAKER_ROLE role.
     * @param from Address tokens are transferred from
     * @param to Address tokens are transferred to
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256
    ) internal virtual override {
        if (to == address(this)) {
            revert OperationNotAllowed();
        }
        // Update global and per-user BTCD rewards before share balances change
        _updateGlobalReward();
        if (from != address(0)) {
            _updateUserReward(from);
        }
        if (to != address(0)) {
            _updateUserReward(to);
        }

        if (
            hasRole(FULL_RESTRICTED_STAKER_ROLE, from) && msg.sender != owner()
        ) {
            revert OperationNotAllowed();
        }
        if (hasRole(FULL_RESTRICTED_STAKER_ROLE, to)) {
            revert OperationNotAllowed();
        }
    }

    /**
     * @dev Disables renounceRole to prevent users from resigning roles
     */
    function renounceRole(
        bytes32 /* role */,
        address /* account */
    ) public virtual override {
        revert OperationNotAllowed();
    }
}
