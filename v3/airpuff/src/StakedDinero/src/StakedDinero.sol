// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import {Ownable2StepUpgradeable} from "openzeppelin-contracts-upgradeable/contracts/access/Ownable2StepUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "openzeppelin-contracts-upgradeable/contracts/utils/ReentrancyGuardUpgradeable.sol";
import {ERC20Upgradeable} from "openzeppelin-contracts-upgradeable/contracts/token/ERC20/ERC20Upgradeable.sol";
import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";
import {DataTypes} from "./libraries/DataTypes.sol";
import {Errors} from "./libraries/Errors.sol";

/**
 * @title  StakedDinero
 * @notice Single sided staking vault for DINERO, with soft-lock mechanisms for both deposits and redemptions.
 * @dev    Locks deposit for a short period of time which prevents token transfers.
           Also has a cooldown period on redemption, applied after shares are burned, with the user able to
           complete redemption and claim the underlying assets after the cooldown period.
 * @author dinero.protocol
 */
contract StakedDinero is
    Ownable2StepUpgradeable,
    ReentrancyGuardUpgradeable,
    ERC20Upgradeable
{
    /**
     * @dev Library: IERC20 - Provides safe transfer functions for IERC20.
     */
    using SafeERC20 for IERC20;

    /**
     * @dev Library: FixedPointMathLib - Provides fixed-point arithmetic for uint256.
     */
    using FixedPointMathLib for uint256;

    // Storage

    /// @custom:storage-location erc7201:dinero.storage.StakedDinero
    struct StakedDineroStorage {
        /**
         * @notice Reference to the underlying asset token contract.
         */
        IERC20 asset;
        /**
         * @notice Reference to the migrator address.
         */
        address migrator;
        /**
         * @notice Reference to the distributor address.
         */
        address distributor;
        /**
         * @notice Timestamp when the current rewards period will end.
         */
        uint256 periodFinish;
        /**
         * @notice Rate at which rewards are distributed per second.
         */
        uint256 rewardRate;
        /**
         * @notice Timestamp of the last update to the reward variables.
         */
        uint256 lastUpdateTime;
        /**
         * @notice Accumulated reward per token stored.
         */
        uint256 rewardPerTokenStored;
        /**
         * @notice Last calculated reward per token paid to stakers.
         */
        uint256 rewardPerTokenPaid;
        /**
         * @notice Total rewards available for distribution.
         */
        uint256 rewards;
        /**
         * @notice Total assets actively staked in the vault.
         */
        uint256 totalStaked;
        /**
         * @notice Total assets under pending redemptions.
         */
        uint256 pendingRedemptions;
        /**
         * @notice Duration of the deposit lock.
         */
        uint256 depositLockDuration;
        /**
         * @notice Duration of the redemption lock.
         */
        uint256 redemptionLockDuration;
        /**
         * @notice Tracks the expiry of each user's deposit lock.
         */
        mapping(address => uint256) depositLockExpiryTime;
        /**
         * @notice Tracks each user's pending redemption queue.
         */
        mapping(address => DataTypes.PendingRedemptionQueue) pendingRedemptionQueue;
    }

    // keccak256(abi.encode(uint256(keccak256("dinero.storage.StakedDinero")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant StakedDineroStorageLocation =
        0x189a25aed4a452a71e1e9aad4732cfcb1958b751d26283c9b5ff3524600e4100;

    /**
     * @notice  Get the contract storage instance.
     * @dev     Used to access StakedDineroStorage.
     * @return  $  StakedDineroStorage  Storage.
     */
    function _getStakedDineroStorage()
        private
        pure
        returns (StakedDineroStorage storage $)
    {
        assembly {
            $.slot := StakedDineroStorageLocation
        }
    }

    // Constants

    /**
     * @dev Duration of the rewards (streaming) period.
     */
    uint256 private constant REWARDS_DURATION = 7 days;

    // Events

    /**
     * @notice Emitted on deposits.
     * @dev    This event is emitted when a user triggers the deposit function.
     * @param  sender    address  indexed  Address that performed the deposit.
     * @param  receiver  address  indexed  Address of the deposit receiver.
     * @param  assets    uint256           Assets amount.
     * @param  shares    uint256           Shares amount.
     */
    event Deposit(
        address indexed sender,
        address indexed receiver,
        uint256 assets,
        uint256 shares
    );

    /**
     * @notice Emitted on initiating redemptions.
     * @dev    This event is emitted when a user triggers the initiateRedemption function.
     * @param  sender  address  indexed  Address of the shares owner.
     * @param  assets  uint256           Assets amount.
     * @param  shares  uint256           Shares amount.
     */
    event InitiateRedemption(
        address indexed sender,
        uint256 assets,
        uint256 shares
    );

    /**
     * @notice Emitted on completing redemptions.
     * @dev    This event is emitted when a user triggers the redeem function.
     * @param  sender    address  indexed  Address of the shares owner.
     * @param  receiver  address  indexed  Address of the receiver.
     * @param  assets    uint256           Assets amount.
     */
    event Redeem(
        address indexed sender,
        address indexed receiver,
        uint256 assets
    );

    /**
     * @notice Emitted when rewards are harvested and staked.
     * @dev    This event is emitted when the harvest function is triggered.
     * @param  caller  address  indexed  Address that triggered the harvest.
     * @param  value   uint256           Amount of rewards harvested.
     */
    event Harvest(address indexed caller, uint256 value);

    /**
     * @notice Emitted when new rewards are added to the vault.
     * @dev    This event is emitted when new rewards are added to the vault.
     * @param  reward  uint256  Amount of rewards added.
     */
    event RewardAdded(uint256 reward);

    /**
     * @notice Emitted when the migrator address is set.
     * @dev    This event is emitted when the migrator address is set.
     * @param  migrator  address  New migrator address.
     */
    event SetMigrator(address migrator);

    /**
     * @notice Emitted when the distributor address is set.
     * @dev    This event is emitted when the distributor address is set.
     * @param  distributor  address  New distributor address.
     */
    event SetDistributor(address distributor);

    /**
     * @notice Emitted when the deposit lock duration is set.
     * @dev    This event is emitted when the deposit lock duration is set.
     * @param  depositLockDuration  address  New duration.
     */
    event SetDepositLockDuration(uint256 depositLockDuration);

    /**
     * @notice Emitted when the redemption lock duration is set.
     * @dev    This event is emitted when the redemption lock duration is set.
     * @param  redemptionLockDuration  address  New duration.
     */
    event SetRedemptionLockDuration(uint256 redemptionLockDuration);

    // Modifiers

    /**
     * @dev   Update reward states modifier.
     * @param updateEarned  bool  Whether to update earned amount so far.
     */
    modifier updateReward(bool updateEarned) {
        StakedDineroStorage storage $ = _getStakedDineroStorage();

        $.rewardPerTokenStored = rewardPerToken();
        $.lastUpdateTime = lastTimeRewardApplicable();

        if (updateEarned) {
            $.rewards = earned();
            $.rewardPerTokenPaid = $.rewardPerTokenStored;
        }
        _;
    }

    /**
     * @dev   Check account's deposit lock.
     * @param account  address  Account.
     */
    modifier checkDepositLock(address account) {
        // Check the expiry time of the deposit lock
        if (depositLockExpiryTime(account) > block.timestamp)
            revert Errors.Locked();
        _;
    }

    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initialize the contract with the provided parameters.
     * @dev    This function must be called only once during contract deployment.
     * @param  _asset         IERC20   The address of the ERC20 asset token.
     * @param  _initialOwner  address  The address that will initially own the contract.
     */
    function initialize(
        IERC20 _asset,
        address _initialOwner
    ) external initializer {
        if (address(_asset) == address(0)) revert Errors.ZeroAddress();

        // Setup all parent contracts init calls
        __Ownable_init(_initialOwner);
        __ReentrancyGuard_init();
        __ERC20_init("Staked Dinero", "sDINERO");

        StakedDineroStorage storage $ = _getStakedDineroStorage();
        $.asset = _asset;
        $.depositLockDuration = 1 weeks;
        $.redemptionLockDuration = 1 weeks;
        $.distributor = _initialOwner;
    }

    /*//////////////////////////////////////////////////////////////
                        RESTRICTED FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Set the migrator address.
     * @dev    Function access restricted to only owner.
     * @param  _migrator  address  Migrator address.
     */
    function setMigrator(address _migrator) external onlyOwner {
        if (_migrator == address(0)) revert Errors.ZeroAddress();

        emit SetMigrator(_migrator);

        StakedDineroStorage storage $ = _getStakedDineroStorage();
        $.migrator = _migrator;
    }

    /**
     * @notice Set the distributor address.
     * @dev    Function access restricted to only owner.
     * @param  _distributor  address  Distributor address.
     */
    function setDistributor(address _distributor) external onlyOwner {
        if (_distributor == address(0)) revert Errors.ZeroAddress();

        emit SetDistributor(_distributor);

        StakedDineroStorage storage $ = _getStakedDineroStorage();
        $.distributor = _distributor;
    }

    /**
     * @notice Set the deposit lock duration.
     * @dev    Function access restricted to only owner.
     * @param  _depositLockDuration  uint256  Duration.
     */
    function setDepositLockDuration(
        uint256 _depositLockDuration
    ) external onlyOwner {
        if (_depositLockDuration == 0) revert Errors.ZeroAmount();

        emit SetDepositLockDuration(_depositLockDuration);

        StakedDineroStorage storage $ = _getStakedDineroStorage();
        $.depositLockDuration = _depositLockDuration;
    }

    /**
     * @notice Set the redemption lock duration.
     * @dev    Function access restricted to only owner.
     * @param  _redemptionLockDuration  uint256  Duration.
     */
    function setRedemptionLockDuration(
        uint256 _redemptionLockDuration
    ) external onlyOwner {
        StakedDineroStorage storage $ = _getStakedDineroStorage();

        if (
            _redemptionLockDuration == 0 ||
            _redemptionLockDuration <= $.redemptionLockDuration
        ) revert Errors.InvalidDuration();

        emit SetRedemptionLockDuration(_redemptionLockDuration);

        $.redemptionLockDuration = _redemptionLockDuration;
    }

    /**
     * @notice Notify and sync the newly added rewards to be streamed over time.
     * @dev    Rewards are streamed following the duration set in REWARDS_DURATION.
     */
    function notifyRewardAmount() external updateReward(false) {
        StakedDineroStorage storage $ = _getStakedDineroStorage();

        if (msg.sender != $.distributor) revert Errors.Unauthorized();

        // Rewards transferred directly to this contract are not added to totalStaked
        // To get the rewards w/o relying on a potentially incorrect passed in arg,
        // we can use the difference between the asset balance and totalStaked + pendingRedemptions
        // Additionally, to avoid re-distributing rewards, deduct the output of `earned`
        uint256 rewardBalance = $.asset.balanceOf(address(this)) -
            $.pendingRedemptions -
            $.totalStaked -
            earned();

        uint256 rate = rewardBalance / REWARDS_DURATION;

        if (rate == 0) revert Errors.NoRewards();

        $.rewardRate = rate;
        $.lastUpdateTime = block.timestamp;
        $.periodFinish = block.timestamp + REWARDS_DURATION;

        emit RewardAdded(rewardBalance);
    }

    /*//////////////////////////////////////////////////////////////
                                VIEWS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns the asset token contract.
     * @return IERC20  Asset token contract.
     */
    function asset() external view returns (IERC20) {
        return _getStakedDineroStorage().asset;
    }

    /**
     * @notice Returns the migrator address.
     * @return address  Migrator address.
     */
    function migrator() external view returns (address) {
        return _getStakedDineroStorage().migrator;
    }

    /**
     * @notice Returns the distributor address.
     * @return address  Distributor address.
     */
    function distributor() external view returns (address) {
        return _getStakedDineroStorage().distributor;
    }

    /**
     * @notice Return the total amount of staked assets.
     * @return uint256  Assets.
     */
    function totalStaked() external view returns (uint256) {
        return _getStakedDineroStorage().totalStaked;
    }

    /**
     * @notice Returns the reward rate.
     * @return uint256  Reward rate.
     */
    function rewardRate() external view returns (uint256) {
        return _getStakedDineroStorage().rewardRate;
    }

    /**
     * @notice Returns the last reward update time.
     * @return uint256  Last update time.
     */
    function lastUpdateTime() external view returns (uint256) {
        return _getStakedDineroStorage().lastUpdateTime;
    }

    /**
     * @notice Returns the timestamp when the current rewards period will end.
     * @return uint256  Reward period ending time.
     */
    function periodFinish() public view returns (uint256) {
        return _getStakedDineroStorage().periodFinish;
    }

    /**
     * @notice Returns the accumulated reward per token stored.
     * @return uint256  Reward per token stored.
     */
    function rewardPerTokenStored() external view returns (uint256) {
        return _getStakedDineroStorage().rewardPerTokenStored;
    }

    /**
     * @notice Returns the last calculated reward per token paid to stakers.
     * @return uint256  Reward per token paid.
     */
    function rewardPerTokenPaid() external view returns (uint256) {
        return _getStakedDineroStorage().rewardPerTokenPaid;
    }

    /**
     * @notice Returns the total rewards available for distribution.
     * @return uint256  Rewards.
     */
    function rewards() external view returns (uint256) {
        return _getStakedDineroStorage().rewards;
    }

    /**
     * @notice Return the duration of the deposit lock period.
     * @return uint256  Deposit lock duration.
     */
    function depositLockDuration() external view returns (uint256) {
        return _getStakedDineroStorage().depositLockDuration;
    }

    /**
     * @notice Return the duration of the redemption lock period.
     * @return uint256  Redemption lock duration.
     */
    function redemptionLockDuration() external view returns (uint256) {
        return _getStakedDineroStorage().redemptionLockDuration;
    }

    /**
     * @notice Returns the expiry of the account's deposit lock.
     * @param  account  address  Account address.
     * @return          uint256  Lock expiry time.
     */
    function depositLockExpiryTime(
        address account
    ) public view returns (uint256) {
        return _getStakedDineroStorage().depositLockExpiryTime[account];
    }

    /**
     * @notice Returns the list of pending (both redeemable and future) redemptions of the account.
     * @param  account         address              Account address.
     * @return redemptionList  PendingRedemption[]  List of pending redemption records.
     */
    function pendingRedemptionList(
        address account
    )
        external
        view
        returns (DataTypes.PendingRedemption[] memory redemptionList)
    {
        StakedDineroStorage storage $ = _getStakedDineroStorage();

        DataTypes.PendingRedemptionQueue memory queue = $
            .pendingRedemptionQueue[account];
        uint256 count = queue.redeemedCount;
        DataTypes.PendingRedemption[] memory redemptions = queue
            .pendingRedemptions;
        uint256 queueLen = redemptions.length;

        redemptionList = new DataTypes.PendingRedemption[](queueLen - count);
        uint256 idx = 0;

        // Skip redeemed records
        for (uint256 i = count; i < queueLen; ) {
            DataTypes.PendingRedemption memory record = redemptions[i];
            redemptionList[idx] = record;

            unchecked {
                ++i;
                ++idx;
            }
        }

        return redemptionList;
    }

    /**
     * @notice Returns the last effective timestamp of the current reward period.
     * @return uint256  Last applicable timestamp.
     */
    function lastTimeRewardApplicable() public view returns (uint256) {
        uint256 _periodFinish = periodFinish();
        return
            block.timestamp < _periodFinish ? block.timestamp : _periodFinish;
    }

    /**
     * @notice Returns the total amount of pending redemptions.
     * @return uint256  Total amount of pending redemptions.
     */
    function pendingRedemptions() external view returns (uint256) {
        return _getStakedDineroStorage().pendingRedemptions;
    }

    /**
     * @notice Returns the amount of rewards per staked token/asset.
     * @return uint256  Rewards amount.
     */
    function rewardPerToken() public view returns (uint256) {
        StakedDineroStorage storage $ = _getStakedDineroStorage();
        uint256 _totalStaked = $.totalStaked;

        if (_totalStaked == 0) {
            return $.rewardPerTokenStored;
        }

        return
            $.rewardPerTokenStored +
            ((((lastTimeRewardApplicable() - $.lastUpdateTime) * $.rewardRate) *
                1e18) / _totalStaked);
    }

    /**
     * @notice Returns the earned rewards amount so far.
     * @return uint256  Rewards amount.
     */
    function earned() public view returns (uint256) {
        StakedDineroStorage storage $ = _getStakedDineroStorage();
        return
            (($.totalStaked * (rewardPerToken() - $.rewardPerTokenPaid)) /
                1e18) + $.rewards;
    }

    /**
     * @notice Returns the estimated shares amount on deposit.
     * @return uint256  Shares amount.
     */
    function previewDeposit(uint256 assets) public view returns (uint256) {
        uint256 supply = totalSupply();

        return supply == 0 ? assets : assets.mulDivDown(supply, totalAssets());
    }

    /**
     * @notice Returns the estimated assets amount on initiateRedemption.
     * @return uint256  Assets amount.
     */
    function previewInitiateRedemption(
        uint256 shares
    ) public view returns (uint256) {
        uint256 supply = totalSupply();

        return supply == 0 ? 0 : shares.mulDivDown(totalAssets(), supply);
    }

    /**
     * @notice Return the amount of assets per 1 (1e18) share.
     * @return uint256  Assets.
     */
    function assetsPerShare() external view returns (uint256) {
        return previewInitiateRedemption(1e18);
    }

    /**
     * @notice Get the amount of available DINERO in the contract.
     * @dev    Rewards are streamed for the duration set in REWARDS_DURATION.
     * @return uint256  Total assets including accrued rewards.
     */
    function totalAssets() public view returns (uint256) {
        StakedDineroStorage storage $ = _getStakedDineroStorage();

        // Based on the current totalStaked and available rewards
        uint256 _totalStaked = $.totalStaked;
        uint256 _rewards = ((_totalStaked *
            (rewardPerToken() - $.rewardPerTokenPaid)) / 1e18) + $.rewards;

        return _totalStaked + _rewards;
    }

    /*//////////////////////////////////////////////////////////////
                            INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev    Internal method to keep track of the total amount of staked token/asset on deposits.
     * @param  amount  uint256  Amount.
     */
    function _stake(uint256 amount) internal updateReward(true) {
        StakedDineroStorage storage $ = _getStakedDineroStorage();
        $.totalStaked += amount;
    }

    /*//////////////////////////////////////////////////////////////
                        ERC20Upgradeable OVERRIDES
    //////////////////////////////////////////////////////////////*/

    /**
     * @inheritdoc ERC20Upgradeable
     * @notice     Override transfer logic.
     * @dev        This function overrides the standard transfer logic to check for deposit lock.
     * @param      to      address  Transfer destination.
     * @param      amount  uint256  Amount.
     * @return             bool     Transfer success status.
     */
    function transfer(
        address to,
        uint256 amount
    )
        public
        override(ERC20Upgradeable)
        checkDepositLock(msg.sender)
        returns (bool)
    {
        return super.transfer(to, amount);
    }

    /**
     * @inheritdoc ERC20Upgradeable
     * @notice     Override transferFrom logic.
     * @dev        This function overrides the standard transferFrom logic to check for deposit lock.
     * @param      from    address  Address of the transfer origin.
     * @param      to      address  Address of the transfer destination.
     * @param      amount  uint256  Amount of tokens to transfer.
     * @return             bool     Transfer success status.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public override(ERC20Upgradeable) checkDepositLock(from) returns (bool) {
        return super.transferFrom(from, to, amount);
    }

    /*//////////////////////////////////////////////////////////////
                            MUTATIVE FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Handle user deposits in DINERO.
     * @dev    This function processes user deposits in DINERO and mint sDINERO shares in return.
     * @param  assets    uint256  Assets amount.
     * @param  receiver  address  Address of the deposit receiver.
     * @return           uint256  Shares amount.
     */
    function deposit(
        uint256 assets,
        address receiver
    ) external nonReentrant returns (uint256) {
        StakedDineroStorage storage $ = _getStakedDineroStorage();

        // Note, receiver defaults to the caller, unless the caller is the migrator
        address sender = msg.sender;
        address sharesReceiver = (sender == $.migrator ? receiver : sender);
        uint256 shares = previewDeposit(assets);

        if (shares == 0) revert Errors.ZeroAmount();
        if (sharesReceiver == address(0)) revert Errors.ZeroAddress();

        // Refresh the timer for last deposit tracking
        // Note that it applies to all shares of the user including from previous deposits
        $.depositLockExpiryTime[sharesReceiver] =
            block.timestamp +
            $.depositLockDuration;

        emit Deposit(sender, sharesReceiver, assets, shares);

        $.asset.safeTransferFrom(sender, address(this), assets);

        // Mint shares and stake the new assets
        _mint(sharesReceiver, shares);
        _stake(assets);

        return shares;
    }

    /**
     * @notice Initiate redemption by burning sDINERO shares and then queue up a pending redemption record.
     * @dev    This function starts the redemption process for the users.
     * @param  shares  uint256  Shares amount.
     * @return         uint256  Pending assets amount.
     */
    function initiateRedemption(
        uint256 shares
    ) external checkDepositLock(msg.sender) returns (uint256) {
        uint256 assets = previewInitiateRedemption(shares);

        if (assets == 0) revert Errors.ZeroAmount();

        StakedDineroStorage storage $ = _getStakedDineroStorage();

        // Perform harvest to make sure that totalStaked is always equal or larger than assets to be withdrawn
        if (assets > $.totalStaked) harvest();

        $.totalStaked -= assets;

        // Make sure these assets are marked as part of pending redemptions
        $.pendingRedemptions += assets;

        _burn(msg.sender, shares);

        // Add a new pending redemption record for the user to the queue
        DataTypes.PendingRedemptionQueue storage queue = $
            .pendingRedemptionQueue[msg.sender];
        DataTypes.PendingRedemption memory redemption;
        redemption.activeTime = block.timestamp + $.redemptionLockDuration;
        redemption.amount = assets;
        queue.pendingRedemptions.push(redemption);

        emit InitiateRedemption(msg.sender, assets, shares);

        return assets;
    }

    /**
     * @notice Complete eligible redemptions after the designated active time and perform the assets transfer.
     * @dev    This function completes the redemption process for the users on all eligible pending redemptions.
     * @param  receiver  address  Address of the receiver.
     * @param  maxCount  uint256  Max number of pending records to be processed (0 for no limit).
     * @return           uint256  Assets amount.
     */
    function redeem(
        address receiver,
        uint256 maxCount
    ) external nonReentrant returns (uint256) {
        if (receiver == address(0)) revert Errors.ZeroAddress();

        StakedDineroStorage storage $ = _getStakedDineroStorage();

        DataTypes.PendingRedemptionQueue storage queue = $
            .pendingRedemptionQueue[msg.sender];
        uint256 count = queue.redeemedCount;
        DataTypes.PendingRedemption[] storage redemptions = queue
            .pendingRedemptions;
        uint256 queueLen = redemptions.length;

        if (count == queueLen) revert Errors.ZeroAmount();

        uint256 redeemAmount = 0;
        uint256 currentTime = block.timestamp;
        uint256 limit = maxCount > 0 ? maxCount : queueLen;

        // Skip redeemed records and check for eligible pending redemptions
        // based on the expiry of the redemption lock.
        // Note that the method processes all eligible/unlocked redemptions within the limit
        for (uint256 i = count; i < queueLen; ++i) {
            DataTypes.PendingRedemption memory record = redemptions[i];

            if (record.activeTime <= currentTime && limit > 0) {
                redeemAmount += record.amount;

                ++count;
                --limit;
            } else {
                // Can safely break here since subsequent records will have further expiry time
                // or if we hit the max number of processed records
                break;
            }
        }

        if (redeemAmount == 0) revert Errors.ZeroAmount();

        emit Redeem(msg.sender, receiver, redeemAmount);

        // Update the redeemed record count and perform assets transfer
        queue.redeemedCount = count;
        $.pendingRedemptions -= redeemAmount;
        $.asset.safeTransfer(receiver, redeemAmount);

        return redeemAmount;
    }

    /**
     * @notice Harvest and stake available rewards.
     * @dev    This function claims and stakes the available rewards.
     */
    function harvest() public updateReward(true) {
        StakedDineroStorage storage $ = _getStakedDineroStorage();
        uint256 _rewards = $.rewards;

        if (_rewards != 0) {
            $.rewards = 0;

            _stake(_rewards);

            emit Harvest(msg.sender, _rewards);
        }
    }
}
