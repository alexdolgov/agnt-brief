// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

import "./Silo.sol";
import "./interfaces/IBTCDStaking.sol";
import "./StakingSingleAdminAccessControl.sol";

/**
 * @title BTCDStaking
 * @notice ERC4626 vault for staking BTCD tokens with reward distribution, blacklist functionality, and optional cooldown periods
 * @dev This contract implements:
 *      - ERC4626 tokenized vault standard for BTCD staking
 *      - Linear vesting of rewards over configurable periods
 *      - Optional cooldown mechanism for withdrawals via silo contract
 *      - Two-tier blacklist system (soft and full restrictions)
 *      - Administrative functions for emergency token rescue and redistribution
 *      - ERC20Permit for gasless approvals
 */
contract BTCDStaking is
    StakingSingleAdminAccessControl,
    ReentrancyGuard,
    ERC20Permit,
    ERC4626,
    IBTCDStaking
{
    using SafeERC20 for IERC20;

    /* --------------- CONSTANTS --------------- */

    /// @notice The role which enables reward distribution into the vault
    bytes32 public constant REWARD_DISTRIBUTOR_ROLE =
        keccak256("REWARD_DISTRIBUTOR_ROLE");

    /// @notice The role which enables blacklist management
    bytes32 public constant BLACKLIST_MANAGER_ROLE =
        keccak256("BLACKLIST_MANAGER_ROLE");

    /// @notice The role which prevents an address from depositing/minting shares (soft restriction)
    /// @dev Users can still withdraw, redeem, and transfer existing positions
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
    /// @dev Prevents scenarios where totalSupply is very small, making the vault vulnerable to donation attacks
    uint256 public constant MIN_SHARES = 1 ether;

    /* --------------- STATE VARIABLES --------------- */

    /// @notice Silo contract for escrow of assets under cooldown
    /// @dev Immutable address of the silo contract that holds assets during cooldown period
    Silo public immutable silo;

    /// @notice Current vesting reward amount that is being distributed over the vesting period
    /// @dev This amount decreases linearly over the vesting period until it reaches zero
    uint256 public vestingAmount;

    /// @notice Timestamp when current vesting period started
    /// @dev Used to calculate how much of the vesting period has elapsed
    uint256 public lastDistributionTimestamp;

    /// @notice Duration of the linear vesting period (default: 8 hours)
    /// @dev Rewards are distributed linearly over this period. Cannot be zero or exceed MAX_VESTING_PERIOD
    uint24 public vestingPeriod;

    /// @notice Cooldown duration required before unstaking (0 = instant withdrawal enabled)
    /// @dev When non-zero, users must initiate cooldown before being able to withdraw/redeem
    uint24 public cooldownDuration;

    /// @notice User cooldown tracking mapping
    /// @dev Maps user addresses to their cooldown information (end timestamp and underlying amount)
    mapping(address => UserCooldown) public cooldowns;

    /* --------------- MODIFIERS --------------- */

    /// @notice Ensures the amount is not zero
    /// @param amount The amount to check
    modifier notZero(uint256 amount) {
        if (amount == 0) revert InvalidAmount();
        _;
    }

    /// @notice Ensures the target address is not the owner
    /// @dev Prevents blacklisting the owner who needs to maintain control
    /// @param target The address to check
    modifier notOwner(address target) {
        if (target == owner()) revert CantBlacklistOwner();
        _;
    }

    /// @notice Ensures cooldown is disabled (cooldownDuration == 0)
    /// @dev Used for instant withdrawal/redeem functions
    modifier ensureCooldownOff() {
        if (cooldownDuration != 0) revert InvalidCooldown();
        _;
    }

    /// @notice Ensures cooldown is enabled (cooldownDuration != 0)
    /// @dev Used for cooldown initiation functions
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
     * @notice Initializes the BTCDStaking contract
     * @param _asset The underlying ERC20 token to be staked (BTCD)
     * @param _initialRewardDistributor Address that will have REWARD_DISTRIBUTOR_ROLE
     * @param _owner Address that will have DEFAULT_ADMIN_ROLE (contract owner)
     * @param _name ERC20 name for the staking shares token
     * @param _symbol ERC20 symbol for the staking shares token
     * @dev Sets up:
     *      - Creates new Silo contract for cooldown escrow
     *      - Sets initial cooldown duration to 7 days
     *      - Sets initial vesting period to 8 hours
     *      - Grants roles to provided addresses
     */
    constructor(
        IERC20 _asset,
        address _initialRewardDistributor,
        address _owner,
        string memory _name,
        string memory _symbol
    ) ERC20(_name, _symbol) ERC4626(_asset) ERC20Permit(_name) {
        silo = new Silo(address(this), address(_asset));
        _grantRole(REWARD_DISTRIBUTOR_ROLE, _initialRewardDistributor);
        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
        cooldownDuration = 7 days;
        _updateVestingPeriod(8 hours);
    }

    ////////////////////////////////////////////////////////////
    //// PRIVILEGED ROLE ACTIONS ///////////////////////////////
    ////////////////////////////////////////////////////////////

    /* --------------- DEFAULT_ADMIN_ROLE ------------- */

    /**
     * @notice Sets the cooldown duration for staker withdrawals
     * @param duration Duration of the cooldown (0 = instant withdrawal, max 90 days)
     * @dev Only callable by DEFAULT_ADMIN_ROLE
     *      When set to 0, enables instant withdrawals/redemptions
     *      When non-zero, requires users to use cooldown functions
     * @custom:emits CooldownDurationUpdated
     */
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

    /**
     * @notice Updates the vesting period for reward distribution
     * @param newVestingPeriod The new vesting period (max 90 days)
     * @dev Only callable by DEFAULT_ADMIN_ROLE
     *      Cannot be updated while rewards are still vesting
     *      Must be greater than 0 and not exceed MAX_VESTING_PERIOD
     * @custom:emits VestingDurationUpdated
     */
    function updateVestingPeriod(
        uint24 newVestingPeriod
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _updateVestingPeriod(newVestingPeriod);
    }

    /**
     * @notice Rescues accidentally sent tokens (except the underlying asset when vault has shares)
     * @param token The token contract address to rescue
     * @param amount The amount of tokens to rescue
     * @param to The recipient address for rescued tokens
     * @dev Only callable by DEFAULT_ADMIN_ROLE
     *      Cannot rescue underlying asset if totalSupply > 0 to protect stakers
     *      Uses nonReentrant to prevent reentrancy attacks
     */
    function rescueTokens(
        address token,
        uint256 amount,
        address to
    ) external nonReentrant onlyRole(DEFAULT_ADMIN_ROLE) {
        if (address(token) == asset() && totalSupply() > 0) {
            revert InvalidToken();
        }
        IERC20(token).safeTransfer(to, amount);
    }

    /**
     * @notice Burns a fully restricted user's shares and mints them to another address
     * @param from The address to burn from (must be fully restricted)
     * @param to The address to mint to (address(0) to burn without reminting)
     * @dev Only callable by DEFAULT_ADMIN_ROLE
     *      'from' must have FULL_RESTRICTED_STAKER_ROLE
     *      'to' must NOT have FULL_RESTRICTED_STAKER_ROLE (unless burning to address(0))
     *      If 'to' is address(0), the equivalent assets are added to vesting rewards
     * @custom:emits LockedAmountRedistributed
     */
    function redistributeLockedAmount(
        address from,
        address to
    ) external nonReentrant onlyRole(DEFAULT_ADMIN_ROLE) {
        if (
            hasRole(FULL_RESTRICTED_STAKER_ROLE, from) &&
            !hasRole(FULL_RESTRICTED_STAKER_ROLE, to)
        ) {
            uint256 amountToDistribute = balanceOf(from);

            UserCooldown storage userCooldown = cooldowns[from];

            // Check for any assets in cooldown (in silo)
            uint256 siloAmount = userCooldown.underlyingAmount;
            if (amountToDistribute == 0 && siloAmount == 0) {
                revert OperationNotAllowed();
            }
            uint256 burnedSharesValue;
            if (amountToDistribute > 0) {
                burnedSharesValue = previewRedeem(amountToDistribute);
                _burn(from, amountToDistribute);
                if (to == address(0)) {
                    // if silo amount is also zero, we can directly vest the burned amount
                    if (siloAmount == 0) {
                        _updateVestingAmount(burnedSharesValue);
                    }
                } else {
                    _mint(to, amountToDistribute);
                }
            }

            // Handle silo assets
            if (siloAmount > 0) {
                // Clear the cooldown and transfer assets from silo to new owner
                userCooldown.cooldownEnd = 0;
                userCooldown.underlyingAmount = 0;
                // if 'to' is address(0), withdraw to this contract and vest the amount
                if (to == address(0)) {
                    silo.withdraw(address(this), siloAmount);
                    _updateVestingAmount(burnedSharesValue + siloAmount);
                } else {
                    silo.withdraw(to, siloAmount);
                }

                emit LockedAmountSiloRedistributed(from, to, siloAmount);
            }

            emit LockedAmountRedistributed(from, to, amountToDistribute);
        } else {
            revert OperationNotAllowed();
        }
    }

    /* --------------- BLACKLIST_MANAGER_ROLE ------------- */

    /**
     * @notice Adds an address to the blacklist with soft or full restrictions
     * @param target The address to blacklist
     * @param isFullBlacklisting true for full restriction (all operations blocked), false for soft restriction (deposits only)
     * @dev Only callable by BLACKLIST_MANAGER_ROLE
     *      Cannot blacklist the contract owner
     *      Soft restrictions: prevents deposits/minting only
     *      Full restrictions: prevents all operations and transfers
     */
    function addToBlacklist(
        address target,
        bool isFullBlacklisting
    ) external onlyRole(BLACKLIST_MANAGER_ROLE) notOwner(target) {
        bytes32 role = isFullBlacklisting
            ? FULL_RESTRICTED_STAKER_ROLE
            : SOFT_RESTRICTED_STAKER_ROLE;
        _grantRole(role, target);
    }

    /**
     * @notice Removes an address from the blacklist
     * @param target The address to remove from blacklist
     * @param isFullBlacklisting true to remove from full restriction, false for soft restriction
     * @dev Only callable by BLACKLIST_MANAGER_ROLE
     *      Removes the specified restriction level from the target address
     */
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

    /**
     * @notice Transfers rewards into the vault with linear vesting
     * @param amount The amount of rewards to distribute over the vesting period
     * @dev Only callable by REWARD_DISTRIBUTOR_ROLE
     *      Cannot be called while previous rewards are still vesting
     *      Amount must be greater than zero
     *      Transfers tokens from caller to this contract
     * @custom:emits RewardsReceived
     */
    function transferInRewards(
        uint256 amount
    ) external nonReentrant onlyRole(REWARD_DISTRIBUTOR_ROLE) notZero(amount) {
        _updateVestingAmount(amount);
        IERC20(asset()).safeTransferFrom(msg.sender, address(this), amount);

        emit RewardsReceived(amount);
    }

    ////////////////////////////////////////////////////////////
    //// PUBLIC STAKER ACTIONS /////////////////////////////////
    ////////////////////////////////////////////////////////////

    /**
     * @notice Withdraws assets from the vault (instant withdrawal when cooldown disabled)
     * @param assets Amount of underlying assets to withdraw
     * @param receiver Address to receive the withdrawn assets
     * @param _owner Address that owns the shares being redeemed
     * @return shares The number of shares burned for the withdrawal
     * @dev Only works when cooldownDuration is 0 (instant withdrawals enabled)
     *      When cooldown is enabled, use cooldownAssets() followed by unstake()
     */
    function withdraw(
        uint256 assets,
        address receiver,
        address _owner
    ) public virtual override ensureCooldownOff returns (uint256) {
        return super.withdraw(assets, receiver, _owner);
    }

    /**
     * @notice Redeems shares from the vault (instant redemption when cooldown disabled)
     * @param shares Number of shares to redeem
     * @param receiver Address to receive the redeemed assets
     * @param _owner Address that owns the shares being redeemed
     * @return assets The amount of underlying assets received
     * @dev Only works when cooldownDuration is 0 (instant redemptions enabled)
     *      When cooldown is enabled, use cooldownShares() followed by unstake()
     */
    function redeem(
        uint256 shares,
        address receiver,
        address _owner
    ) public virtual override ensureCooldownOff returns (uint256) {
        return super.redeem(shares, receiver, _owner);
    }

    /**
     * @notice Initiates cooldown for specified asset amount
     * @param assets The amount of assets to initiate cooldown for
     * @return shares The number of shares being redeemed
     * @dev Only works when cooldownDuration > 0 (cooldown enabled)
     *      Burns shares and transfers assets to silo contract
     *      Updates user's cooldown information
     *      User must call unstake() after cooldown period expires
     */
    function cooldownAssets(
        uint256 assets
    ) external ensureCooldownOn returns (uint256 shares) {
        if (assets > maxWithdraw(msg.sender)) revert ExcessiveWithdrawAmount();

        shares = previewWithdraw(assets);

        UserCooldown storage userCooldown = cooldowns[msg.sender];

        userCooldown.cooldownEnd =
            uint104(block.timestamp) +
            cooldownDuration;
        userCooldown.underlyingAmount += uint152(assets);
        _withdraw(msg.sender, address(silo), msg.sender, assets, shares);
    }

    /**
     * @notice Initiates cooldown for specified share amount
     * @param shares The number of shares to initiate cooldown for
     * @return assets The amount of assets being redeemed
     * @dev Only works when cooldownDuration > 0 (cooldown enabled)
     *      Burns shares and transfers assets to silo contract
     *      Updates user's cooldown information
     *      User must call unstake() after cooldown period expires
     */
    function cooldownShares(
        uint256 shares
    ) external ensureCooldownOn returns (uint256 assets) {
        if (shares > maxRedeem(msg.sender)) revert ExcessiveRedeemAmount();

        assets = previewRedeem(shares);

        UserCooldown storage userCooldown = cooldowns[msg.sender];

        userCooldown.cooldownEnd =
            uint104(block.timestamp) +
            cooldownDuration;
        userCooldown.underlyingAmount += uint152(assets);
        _withdraw(msg.sender, address(silo), msg.sender, assets, shares);
    }

    /**
     * @notice Unstakes assets from silo contract after cooldown period has expired
     * @param receiver The address to send assets to after cooldown expires
     * @dev Can only be called after cooldown period has elapsed or cooldown is disabled
     *      Withdraws user's assets from the silo contract
     *      Resets user's cooldown information
     *      If cooldownDuration becomes 0, allows immediate unstaking regardless of cooldown end time
     */
    function unstake(
        address receiver
    ) external notFullyRestricted(msg.sender) nonReentrant {
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

    ////////////////////////////////////////////////////////////
    //// PUBLIC GETTERS AND PURE FUNCTIONS /////////////////////
    ////////////////////////////////////////////////////////////

    /**
     * @notice Returns the amount of underlying assets that are vested and available for withdrawal
     * @return The total assets in the vault minus any unvested reward amounts
     * @dev Overrides ERC4626 totalAssets to exclude unvested rewards from share price calculations
     *      This ensures that unvested rewards don't dilute existing shareholders until they vest
     */
    function totalAssets()
        public
        view
        override(ERC4626, IBTCDStaking)
        returns (uint256)
    {
        return IERC20(asset()).balanceOf(address(this)) - getUnvestedAmount();
    }

    /**
     * @notice Returns the amount of underlying assets still vesting
     * @return The amount of rewards that are still linearly vesting
     * @dev Calculates based on time elapsed since last distribution and vesting period
     *      Returns 0 if vesting period has fully elapsed
     */
    function getUnvestedAmount() public view returns (uint256) {
        uint256 timeSinceLastDistribution = block.timestamp -
            lastDistributionTimestamp;

        if (timeSinceLastDistribution >= vestingPeriod) {
            return 0;
        }

        uint256 deltaT;
        unchecked {
            deltaT = (vestingPeriod - timeSinceLastDistribution);
        }
        return (deltaT * vestingAmount) / vestingPeriod;
    }

    /**
     * @notice Returns the number of decimals for the token
     * @return Always returns 18 decimals
     * @dev Resolves ambiguity between ERC20 and ERC4626 decimals declarations
     */
    function decimals() public pure override(ERC4626, ERC20) returns (uint8) {
        return 18;
    }

    ////////////////////////////////////////////////////////////
    //// INTERNAL FUNCTIONS ////////////////////////////////////
    ////////////////////////////////////////////////////////////

    /**
     * @notice Ensures a small non-zero amount of shares does not remain, exposing to donation attack
     * @dev Prevents scenarios where totalSupply is between 0 and MIN_SHARES
     *      This protects against donation attacks where an attacker could manipulate
     *      the share price by donating assets when total supply is very small
     */
    function _checkMinShares() internal view {
        uint256 _totalSupply = totalSupply();
        if (_totalSupply > 0 && _totalSupply < MIN_SHARES)
            revert MinSharesViolation();
    }

    /**
     * @notice Deposit/mint common workflow with blacklist and minimum shares checks
     * @param caller Sender of assets
     * @param receiver Address to receive shares
     * @param assets Assets to deposit
     * @param shares Shares to mint
     * @dev Overrides ERC4626 _deposit to add:
     *      - Reentrancy protection
     *      - Zero amount validation
     *      - Soft restriction checks for both caller and receiver
     *      - Minimum shares validation
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
        _checkMinShares();
    }

    /**
     * @notice Withdraw/redeem common workflow with blacklist and minimum shares checks
     * @param caller Transaction sender
     * @param receiver Address to receive assets
     * @param _owner Address that owns the shares being burned
     * @param assets Asset amount to transfer out
     * @param shares Shares to burn
     * @dev Overrides ERC4626 _withdraw to add:
     *      - Reentrancy protection
     *      - Zero amount validation
     *      - Full restriction checks for caller, receiver, and owner
     *      - Minimum shares validation
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
        _checkMinShares();
    }

    /**
     * @notice Updates the vesting amount and starts a new vesting period
     * @param newVestingAmount The amount to vest over the vesting period
     * @dev Internal function that:
     *      - Ensures no rewards are currently vesting
     *      - Sets new vesting amount and timestamp
     *      - Starts linear vesting countdown
     */
    function _updateVestingAmount(uint256 newVestingAmount) internal {
        if (getUnvestedAmount() > 0) revert StillVesting();

        vestingAmount = newVestingAmount;
        lastDistributionTimestamp = block.timestamp;
    }

    /**
     * @notice Updates the vesting period duration
     * @param newVestingPeriod The new vesting period duration
     * @dev Internal function that validates:
     *      - New vesting period is not zero
     *      - No rewards are currently vesting
     *      - New vesting period doesn't exceed maximum
     * @custom:emits VestingDurationUpdated
     */
    function _updateVestingPeriod(uint24 newVestingPeriod) internal {
        if (newVestingPeriod == 0) revert InvalidVestingPeriod();
        if (getUnvestedAmount() > 0) revert StillVesting();
        if (newVestingPeriod > MAX_VESTING_PERIOD)
            revert InvalidVestingPeriod();
        emit VestingDurationUpdated(vestingPeriod, newVestingPeriod);
        vestingPeriod = newVestingPeriod;
    }

    /**
     * @notice Hook that is called before any transfer of tokens including minting and burning
     * @param from Source address (address(0) for minting)
     * @param to Destination address (address(0) for burning)
     * @dev Disables transfers from or to addresses with the FULL_RESTRICTED_STAKER_ROLE
     *      Allows burning from restricted addresses (to == address(0))
     *      Prevents any transfers to fully restricted addresses
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256
    ) internal virtual override {
        if (hasRole(FULL_RESTRICTED_STAKER_ROLE, from) && to != address(0)) {
            revert OperationNotAllowed();
        }
        if (hasRole(FULL_RESTRICTED_STAKER_ROLE, to)) {
            revert OperationNotAllowed();
        }
    }

    /**
     * @notice Disabled renounceRole function to prevent users from resigning roles
     * @dev Overrides AccessControl renounceRole to always revert
     *      This prevents accidental or malicious role renunciation
     */
    function renounceRole(bytes32, address) public virtual override {
        revert OperationNotAllowed();
    }
}
