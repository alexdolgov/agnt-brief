// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.28;

import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/MulticallUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "../interfaces/IAppStaking.sol";
import "../interfaces/IPermissionedERC20.sol";
import "./AppAccessControlled.sol";

/// @title AppStaking
/// @notice Implementation of the staking system that allows users to stake RZR tokens and earn rewards
/// @dev This contract handles staking positions as NFTs, with harberger tax and reward distribution
contract AppStaking is
    IAppStaking,
    AppAccessControlled,
    ERC721EnumerableUpgradeable,
    ReentrancyGuardUpgradeable,
    MulticallUpgradeable
{
    using SafeERC20 for IERC20;

    uint256 public immutable BASIS_POINTS = 10000;
    uint256 public immutable EPOCH_DURATION = 8 hours;

    // Configurable parameters
    uint256 public harbergerTaxRate;
    uint256 public resellFeeRate;
    uint256 public withdrawCooldownPeriod;
    uint256 public rewardCooldownPeriod;

    // State variables
    IERC20 public override appToken;
    IPermissionedERC20 public trackingToken;

    // Mapping from token ID to Position
    mapping(uint256 => Position) private _positions;

    uint256 public lastId;

    /// @inheritdoc IAppStaking
    uint256 public periodFinish;

    /// @inheritdoc IAppStaking
    uint256 public rewardRate;

    /// @inheritdoc IAppStaking
    uint256 public lastUpdateTime;

    /// @inheritdoc IAppStaking
    uint256 public rewardPerTokenStored;

    /// @inheritdoc IAppStaking
    uint256 public override totalStaked;

    /// @inheritdoc IAppStaking
    address public burner;

    // Mapping from token ID to buy cooldown end timestamp
    mapping(uint256 => uint256) private _buyCooldownEnd;

    /// @inheritdoc IAppStaking
    uint256 public buyCooldownPeriod;

    // Mapping from token ID to withdraw cooldown end timestamp
    mapping(uint256 => uint256) private _withdrawCooldownStart;

    /// @inheritdoc IAppStaking
    function initialize(address _appToken, address _trackingToken, address _authority, address _burner)
        public
        reinitializer(10)
    {
        if (lastId == 0) lastId = 1;

        __ERC721_init("RZR Staking Position", "RZR-POS");
        __ReentrancyGuard_init();
        __AppAccessControlled_init(_authority);
        __Multicall_init();

        uint256 _harbergerTaxRate = 500;
        uint256 _resellFeeRate = 100;
        uint256 _withdrawCooldownPeriod = 3 days;
        uint256 _rewardCooldownPeriod = 1 days;
        uint256 _buyCooldownPeriod = 1 days;

        require(_appToken != address(0), "Invalid RZR token address");
        require(_trackingToken != address(0), "Invalid tracking token address");
        require(_harbergerTaxRate <= BASIS_POINTS, "Invalid harberger tax rate");
        require(_resellFeeRate <= BASIS_POINTS, "Invalid resell fee rate");
        require(_withdrawCooldownPeriod > 0, "Invalid withdraw cooldown period");
        require(_rewardCooldownPeriod > 0, "Invalid reward cooldown period");
        require(_buyCooldownPeriod > 0, "Invalid buy cooldown period");

        appToken = IERC20(_appToken);
        trackingToken = IPermissionedERC20(_trackingToken);
        burner = _burner;

        harbergerTaxRate = _harbergerTaxRate;
        resellFeeRate = _resellFeeRate;
        withdrawCooldownPeriod = _withdrawCooldownPeriod;
        rewardCooldownPeriod = _rewardCooldownPeriod;
        buyCooldownPeriod = _buyCooldownPeriod;
    }

    /// @notice Sets the harberger tax rate
    /// @param _harbergerTaxRate The new harberger tax rate
    function setHarbergerTaxRate(uint256 _harbergerTaxRate) external onlyGovernor {
        require(_harbergerTaxRate <= BASIS_POINTS, "Invalid harberger tax rate");
        uint256 oldValue = harbergerTaxRate;
        harbergerTaxRate = _harbergerTaxRate;
        emit HarbergerTaxRateUpdated(oldValue, _harbergerTaxRate);
    }

    /// @notice Sets the withdraw cooldown period
    /// @param _withdrawCooldownPeriod The new withdraw cooldown period
    function setWithdrawCooldownPeriod(uint256 _withdrawCooldownPeriod) external onlyGovernor {
        require(_withdrawCooldownPeriod > 0, "Invalid withdraw cooldown period");
        uint256 oldValue = withdrawCooldownPeriod;
        withdrawCooldownPeriod = _withdrawCooldownPeriod;
        emit WithdrawCooldownPeriodUpdated(oldValue, _withdrawCooldownPeriod);
    }

    /// @notice Sets the reward cooldown period
    /// @param _rewardCooldownPeriod The new reward cooldown period
    function setRewardCooldownPeriod(uint256 _rewardCooldownPeriod) external onlyPolicy {
        require(_rewardCooldownPeriod > 0, "Invalid reward cooldown period");
        uint256 oldValue = rewardCooldownPeriod;
        rewardCooldownPeriod = _rewardCooldownPeriod;
        emit RewardCooldownPeriodUpdated(oldValue, _rewardCooldownPeriod);
    }

    /// @inheritdoc IAppStaking
    function positions(uint256 tokenId) external view override returns (Position memory) {
        return _positions[tokenId];
    }

    /// @notice Sets the buy cooldown period
    /// @param _buyCooldownPeriod The new buy cooldown period
    function setBuyCooldownPeriod(uint256 _buyCooldownPeriod) external onlyGovernor {
        require(_buyCooldownPeriod > 0, "Invalid buy cooldown period");
        uint256 oldValue = buyCooldownPeriod;
        buyCooldownPeriod = _buyCooldownPeriod;
        emit BuyCooldownPeriodUpdated(oldValue, _buyCooldownPeriod);
    }

    /// @notice Gets the buy cooldown end timestamp for a position
    /// @param tokenId The position ID
    /// @return The timestamp when buy cooldown ends, or 0 if not in cooldown
    function getBuyCooldownEnd(uint256 tokenId) external view returns (uint256) {
        return _buyCooldownEnd[tokenId];
    }

    /// @inheritdoc IAppStaking
    function lastTimeRewardApplicable() public view override returns (uint256) {
        return block.timestamp < periodFinish ? block.timestamp : periodFinish;
    }

    /// @inheritdoc IAppStaking
    function rewardPerToken() public view override returns (uint256) {
        if (totalStaked == 0) return rewardPerTokenStored;
        // Round down at each step to prevent over-distribution
        uint256 timeElapsed = lastTimeRewardApplicable() - lastUpdateTime;
        uint256 rewardPerTokenDelta = (timeElapsed * rewardRate * 1e18) / totalStaked;
        return rewardPerTokenStored + rewardPerTokenDelta;
    }

    /// @inheritdoc IAppStaking
    function notifyRewardAmount(uint256 reward) external override onlyPolicy {
        require(reward > 0, "No reward");
        require(totalStaked > 0, "No stakers");

        // Update rewards
        _updateReward(0);
        appToken.safeTransferFrom(msg.sender, address(this), reward);

        if (block.timestamp >= periodFinish) {
            // If no reward is currently being distributed, the new rate is just `reward / duration`
            rewardRate = reward / EPOCH_DURATION;
        } else {
            // Otherwise, cancel the future reward and add the amount left to distribute to reward
            uint256 remaining = periodFinish - block.timestamp;
            uint256 leftover = remaining * rewardRate;
            rewardRate = (reward + leftover) / EPOCH_DURATION;
        }

        // Ensures the provided reward amount is not more than the balance in the contract.
        // This keeps the reward rate in the right range, preventing overflows due to
        // very high values of `rewardRate` in the earned and `rewardsPerToken` functions;
        // Reward + leftover must be less than 2^256 / 10^18 to avoid overflow.
        uint256 balance = appToken.balanceOf(address(this));
        require(rewardRate <= balance / EPOCH_DURATION, "Reward rate too high");

        // Update period finish
        lastUpdateTime = block.timestamp;
        periodFinish = block.timestamp + EPOCH_DURATION;

        emit RewardAdded(reward);
    }

    /// @inheritdoc IAppStaking
    function createPosition(address to, uint256 amount, uint256 declaredValue, uint256 minLockDuration)
        external
        override
        nonReentrant
        returns (uint256 tokenId, uint256 taxPaid)
    {
        require(false, "paused");
    }

    /// @inheritdoc IAppStaking
    function startUnstaking(uint256 tokenId) external override nonReentrant {
        require(false, "paused");
    }

    /// @inheritdoc IAppStaking
    function completeUnstaking(uint256 tokenId) external override nonReentrant {
        require(false, "paused");
    }

    function updateWithdrawCooldown(uint256 tokenId, uint256 newCooldownEnd) external onlyGovernor {
        require(false, "paused");
    }

    /// @inheritdoc IAppStaking
    function buyPosition(uint256 tokenId) external override nonReentrant {
        require(false, "paused");
    }

    /// @inheritdoc IAppStaking
    function claimRewards(uint256 tokenId) external override nonReentrant returns (uint256 reward) {
        reward = _claimRewards(tokenId);
    }

    /// @inheritdoc IAppStaking
    function earned(uint256 tokenId) public view override returns (uint256) {
        Position storage position = _positions[tokenId];
        if (position.amount == 0) return 0;

        uint256 currentRewardPerToken = rewardPerToken();
        // Round down at each step to prevent over-distribution
        uint256 rewardDelta = (position.amount * (currentRewardPerToken - position.rewardPerTokenPaid)) / 1e18;
        return rewardDelta + position.rewards;
    }

    /// @inheritdoc IAppStaking
    function increaseAmount(uint256 tokenId, uint256 additionalAmount, uint256 addtionalDeclaredValue)
        external
        override
        nonReentrant
        returns (uint256 taxPaid)
    {
        require(false, "paused");
    }

    /// @inheritdoc IAppStaking
    function cancelUnstaking(uint256 tokenId) external override nonReentrant {
        require(false, "paused");
    }

    /// @inheritdoc IAppStaking
    function splitPosition(uint256 tokenId, uint256 splitRatio, address to)
        external
        override
        nonReentrant
        returns (uint256 newTokenId)
    {
        require(false, "paused");
    }

    /// @inheritdoc IAppStaking
    function mergePositions(uint256 tokenId1, uint256 tokenId2)
        external
        override
        nonReentrant
        returns (uint256 mergedTokenId)
    {
        require(false, "paused");
    }

    function increaseDeclaredValue(uint256 tokenId, uint256 additionalDeclaredValue)
        external
        nonReentrant
        returns (uint256 taxPaid)
    {
        require(false, "paused");
    }

    /// @inheritdoc IAppStaking
    function isInBuyCooldown(uint256 tokenId) external view override returns (bool) {
        return _buyCooldownEnd[tokenId] > 0 && block.timestamp < _buyCooldownEnd[tokenId];
    }

    /// @inheritdoc IAppStaking
    function isInWithdrawCooldown(uint256 tokenId) external view override returns (bool, uint256) {
        return (
            _withdrawCooldownStart[tokenId] > 0 && block.timestamp < _withdrawCooldownStart[tokenId],
            _withdrawCooldownStart[tokenId]
        );
    }

    /// @notice Cancels the unstaking process and resets cooldown variables
    /// @param tokenId The position ID
    function _cancelUnstaking(uint256 tokenId) internal {
        require(false, "paused");
    }

    /// @notice Claims rewards for a position
    /// @param tokenId The position ID
    /// @return reward The amount of rewards claimed
    function _claimRewards(uint256 tokenId) internal returns (uint256 reward) {
        require(false, "paused");
    }

    /// @notice Hooks into ERC721 transfers/mints/burns to keep trackingToken in sync.
    /// @dev When a position NFT moves between addresses, burn tracking tokens from the sender and mint to the receiver
    ///      equivalent to the position.amount. Mints and burns keep their existing behaviour.
    function _update(address to, uint256 tokenId, address auth) internal override returns (address from) {
        require(false, "paused");
    }

    /// @notice Distributes the tax to the operations treasury and protocol treasury
    /// @param amount The amount of RZR to distribute
    /// @return taxPaid The total amount of tax paid
    function _distributeTax(uint256 amount) internal returns (uint256 taxPaid) {
        taxPaid = (amount * harbergerTaxRate) / BASIS_POINTS;
        appToken.safeTransfer(burner, taxPaid); // burn the tax so that the floor price increases
    }

    /// @notice Updates the reward for a position
    /// @param tokenId The position ID
    function _updateReward(uint256 tokenId) internal {
        rewardPerTokenStored = rewardPerToken();
        lastUpdateTime = lastTimeRewardApplicable();

        if (tokenId > 0) {
            Position storage position = _positions[tokenId];
            position.rewards = earned(tokenId);
            position.rewardPerTokenPaid = rewardPerTokenStored;
        }
    }

    function refundTokens(address to, uint256 amount) external onlyGovernor {
        appToken.safeTransfer(to, amount);
    }

    /// @notice Returns the base URI for the NFT metadata
    /// @return The base URI string
    function _baseURI() internal view virtual override returns (string memory) {
        return "https://uri.rezerve.money/api/staking/";
    }
}
