// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { Allocation, IRewardVault } from "./interfaces/IRewardVault.sol";
import { ISmartVault, RewardConfig, VaultConfig } from "./interfaces/ISmartVault.sol";
import { SmartVaultMath } from "./libraries/SmartVaultMath.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

import { IStakingVault } from "../dependencies/satoshi-staking-pool/interfaces/IStakingVault.sol";

import { IStrategy } from "../strategy/interfaces/IStrategy.sol";
import { ISmartVaultManager } from "./interfaces/ISmartVaultManager.sol";
import { ERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import { IERC20 } from "@openzeppelin/contracts/interfaces/IERC20.sol";

import { IERC20Metadata } from "@openzeppelin/contracts/interfaces/IERC20Metadata.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract SmartVault is ISmartVault, ERC20Upgradeable, PausableUpgradeable {
    using SafeERC20 for IERC20;
    using Math for uint256;

    /// @inheritdoc ISmartVault
    uint256 public constant STAKING_PRECISION = 1e4; // 1e4 = 100%
    /// @inheritdoc ISmartVault
    uint256 public constant DECIMAL_PRECISION = 1e18;

    // --- state variables ---

    /// @inheritdoc ISmartVault
    IERC20 public underlyingAsset;
    /// @inheritdoc ISmartVault
    ISmartVaultManager public smartVaultManager;
    /// @inheritdoc ISmartVault
    IRewardVault public rewardVault;

    /// smart vault configuration
    VaultConfig internal _vaultConfig;
    /// debt token minted amount
    uint256 internal _mintedDebt;
    /// debt token staking amount
    uint256 internal _stakingAmount;
    /// last update time
    uint256 internal _lastUpdateTime;
    /// reward token list
    IERC20[] internal _rewardTokenList;
    /// total deposited underlying asset amount
    uint256 internal _totalDepositedUnderlying;

    /// strategy address => whitelisted
    mapping(address => bool) internal _strategies;
    /// last reward per token for each asset (reward token => reward per token)
    mapping(IERC20 => uint256) internal _lastRewardPerToken;
    /// reward token => reward config
    mapping(IERC20 => RewardConfig) internal _rewardConfigs;

    /// asset => account => reward
    mapping(IERC20 => mapping(address => uint256)) internal _lastUserRewardPerToken;
    /// asset => account => pending reward
    mapping(IERC20 => mapping(address => uint256)) internal _pendingRewards;
    /// address => whitelisted
    mapping(address => bool) internal _whitelisted;

    /// @notice Only manager modifier
    modifier onlyManager() {
        if (msg.sender != address(smartVaultManager)) {
            revert InvalidSmartVaultManager(msg.sender);
        }

        _;
    }

    /// @notice No extra logic is needed in the constructor
    constructor() {
        _disableInitializers();
    }

    /// @inheritdoc ISmartVault
    function initialize(
        address _underlyingAsset,
        address _smartVaultManager,
        address _rewardVault,
        VaultConfig memory vaultConfig,
        string memory name_,
        string memory symbol_
    )
        public
        initializer
    {
        _checkIsNotZeroAddress(_underlyingAsset);
        _checkIsNotZeroAddress(_smartVaultManager);
        _checkIsNotZeroAddress(_rewardVault);
        _checkVaultConfig(vaultConfig);

        __Pausable_init();
        __ERC20_init(name_, symbol_);

        underlyingAsset = IERC20(_underlyingAsset);
        smartVaultManager = ISmartVaultManager(_smartVaultManager);
        rewardVault = IRewardVault(_rewardVault);
        _vaultConfig = vaultConfig;

        emit VaultConfigUpdated(vaultConfig);
    }

    /// @inheritdoc ISmartVault
    function pause() external onlyManager {
        _pause();
    }

    /// @inheritdoc ISmartVault
    function unpause() external onlyManager {
        _unpause();
    }

    /// @inheritdoc ISmartVault
    function setStrategy(address strategy, bool whitelisted) external onlyManager {
        _strategies[strategy] = whitelisted;

        emit StrategyUpdated(strategy, whitelisted);
    }

    /// @inheritdoc ISmartVault
    function setWhitelistMode(bool isWhitelistMode_) external onlyManager {
        _vaultConfig.isWhitelistMode = isWhitelistMode_;
        emit WhitelistModeUpdated(isWhitelistMode_);
    }

    /// @inheritdoc ISmartVault
    function setWhitelisted(address account, bool whitelisted) external onlyManager {
        _whitelisted[account] = whitelisted;
        emit WhitelistedUpdated(account, whitelisted);
    }

    /// @inheritdoc ISmartVault
    function updateVaultConfig(VaultConfig memory vaultConfig) external onlyManager {
        _checkVaultConfig(vaultConfig);

        _vaultConfig = vaultConfig;
        _updateVaultConfig();

        emit VaultConfigUpdated(vaultConfig);
    }

    /// @inheritdoc ISmartVault
    function updateStakingFactor(uint256 factor) external onlyManager {
        if (factor > STAKING_PRECISION) revert InvalidConfigStakingFactor(factor);
        _vaultConfig.stakingFactor = factor;
        _updateVaultConfig();
        emit StakingFactorUpdated(factor);
    }

    /// @inheritdoc ISmartVault
    function updateStakingEnabled(bool enabled) external onlyManager {
        _vaultConfig.isStakingEnabled = enabled;
        _updateVaultConfig();
        emit StakingEnabledUpdated(enabled);
    }

    /// @inheritdoc ISmartVault
    function updateRewardConfig(IERC20 rewardToken, RewardConfig memory rewardConfig) external onlyManager {
        _updateAllLastRewardPerToken();
        _rewardConfigs[rewardToken] = rewardConfig;

        emit RewardConfigUpdated(rewardToken, rewardConfig);
    }

    /// @inheritdoc ISmartVault
    function updateRewardTokenList(IERC20[] memory rewardTokenList) external onlyManager {
        _updateAllLastRewardPerToken();
        delete _rewardTokenList;
        for (uint256 i; i < rewardTokenList.length; i++) {
            IERC20 rewardToken = rewardTokenList[i];
            _checkIsNotZeroAddress(address(rewardToken));
            _rewardTokenList.push(rewardToken);
        }

        emit RewardTokenListUpdated(rewardTokenList);
    }

    /// @inheritdoc ISmartVault
    function addTokenToRewardList(IERC20 rewardToken) external onlyManager {
        _checkIsNotZeroAddress(address(rewardToken));
        _updateAllLastRewardPerToken();
        _rewardTokenList.push(rewardToken);

        emit RewardTokenAdded(rewardToken);
    }

    /// @inheritdoc ISmartVault
    function increaseRewardPerToken(IERC20 asset, uint256 amount) external onlyManager {
        _updateAllLastRewardPerToken();

        uint256 totalShare = totalSupply();

        if (totalShare == 0) revert InvalidIncreaseRewardPerToken();

        _lastRewardPerToken[asset] += amount.mulDiv(SmartVaultMath.REWARD_PER_TOKEN_PRECISION, totalShare);

        emit RewardPerTokenIncreased(asset, amount);
    }

    /// @inheritdoc ISmartVault
    function executeStrategy(address _strategy, bytes calldata data) external onlyManager {
        _checkIsStrategy(_strategy);
        underlyingAsset.approve(address(_strategy), type(uint256).max);
        IStrategy(_strategy).execute(data);

        emit StrategyExecuted(_strategy, data);
    }

    /// @inheritdoc ISmartVault
    function withdrawFromStakingVault(uint256 amount) external onlyManager {
        smartVaultManager.stakingVault().withdraw(amount, address(smartVaultManager), address(this));
    }

    function claimRewardFromStakingVault() external onlyManager {
        smartVaultManager.stakingVault().claimReward();
    }

    function transferToken(IERC20 asset, address recipient, uint256 amount) external onlyManager {
        asset.safeTransfer(recipient, amount);
    }

    /// @inheritdoc ISmartVault
    function depositERC20(uint256 amount, address depositor, address receiver) external onlyManager whenNotPaused {
        _beforeDeposit(amount, depositor, receiver);

        _depositERC20(amount, depositor, receiver);

        _manageDebtAndStake();
    }

    /// @inheritdoc ISmartVault
    function withdraw(uint256 amount, address owner, address receiver) external onlyManager whenNotPaused {
        _beforeWithdraw(amount, owner, receiver);

        _withdraw(amount, owner, receiver);

        _manageDebtAndStake();
    }

    /// @inheritdoc ISmartVault
    function claim(address owner, address receiver) external onlyManager whenNotPaused {
        _beforeClaim(owner, receiver);

        _claim(owner, receiver);

        _manageDebtAndStake();
    }

    /// @inheritdoc ISmartVault
    function manageDebtAndStake() external onlyManager whenNotPaused {
        _manageDebtAndStake();
    }

    /// @inheritdoc ISmartVault
    function previewReward(IERC20 asset, address addr) external view returns (uint256) {
        uint256 rewardAmount = _prevUserReward(asset, addr);
        return rewardAmount + _pendingRewards[asset][addr];
    }

    /// @inheritdoc ISmartVault
    function lastRewardPerToken(IERC20 asset) external view returns (uint256) {
        return _lastRewardPerToken[asset];
    }

    /// @inheritdoc ISmartVault
    function lastUpdateTime() external view returns (uint256) {
        return _lastUpdateTime;
    }

    /// @inheritdoc ISmartVault
    function getLastUserRewardPerToken(IERC20 asset, address addr) external view returns (uint256) {
        return _lastUserRewardPerToken[asset][addr];
    }

    /// @inheritdoc ISmartVault
    function getPendingReward(IERC20 asset, address addr) external view returns (uint256) {
        return _pendingRewards[asset][addr];
    }

    /// @inheritdoc ISmartVault
    function getVaultConfig() external view returns (VaultConfig memory) {
        return _vaultConfig;
    }

    /// @inheritdoc ISmartVault
    function stakingFactor() external view returns (uint256) {
        return _vaultConfig.stakingFactor;
    }

    /// @inheritdoc ISmartVault
    function getStakingAmount() external view returns (uint256) {
        return _stakingAmount;
    }

    /// @inheritdoc ISmartVault
    function getMintedDebt() external view returns (uint256) {
        return _mintedDebt;
    }

    /// @inheritdoc ISmartVault
    function getRewardTokenList() external view returns (IERC20[] memory) {
        return _rewardTokenList;
    }

    /// @inheritdoc ISmartVault
    function getRewardConfig(IERC20 asset) external view returns (RewardConfig memory) {
        return _rewardConfigs[asset];
    }

    /// @inheritdoc ISmartVault
    function getTotalDepositedUnderlying() external view returns (uint256) {
        return _totalDepositedUnderlying;
    }

    /// @inheritdoc ISmartVault
    function isDepositEnabled() external view returns (bool) {
        return _isDepositEnabled();
    }

    /// @inheritdoc ISmartVault
    function isClaimable() external view returns (bool) {
        return _isClaimable();
    }

    /// @inheritdoc ISmartVault
    function isStrategy(address _strategy) external view returns (bool) {
        return _isStrategy(_strategy);
    }

    /// @inheritdoc ISmartVault
    function isWhitelistMode() external view returns (bool) {
        return _isWhitelistMode();
    }

    /// @inheritdoc ISmartVault
    function isWhitelisted(address account) external view returns (bool) {
        return _isWhitelisted(account);
    }

    // --- internal functions ---

    /**
     * @notice Before deposit hook
     * @param amount The amount to deposit
     * @param depositor The depositor address
     * @param receiver The receiver address
     */
    function _beforeDeposit(uint256 amount, address depositor, address receiver) internal {
        if (amount == 0) revert InvalidZeroAmount();

        _checkIsDepositEnabled();

        if (_isWhitelistMode() && !_isWhitelisted(depositor)) {
            revert NotWhitelisted(depositor);
        }

        uint8 decimals = IERC20Metadata(address(underlyingAsset)).decimals();

        uint256 scaledAmount = SmartVaultMath.scaleToDecimals18(amount, decimals, Math.Rounding.Ceil);
        uint256 depositCap = SmartVaultMath.scaleToDecimals18(_vaultConfig.depositCap, decimals, Math.Rounding.Floor);
        uint256 depositCapPerUser =
            SmartVaultMath.scaleToDecimals18(_vaultConfig.depositCapPerUser, decimals, Math.Rounding.Floor);

        if (totalSupply() + scaledAmount > depositCap) {
            revert DepositCapExceeded(amount, _vaultConfig.depositCap);
        }

        if (balanceOf(receiver) + scaledAmount > depositCapPerUser) {
            revert DepositCapPerUserExceeded(amount, _vaultConfig.depositCapPerUser);
        }

        _updateReward(receiver);
    }

    /**
     * @notice Deposit ERC20 token
     * @param amount The amount to deposit
     * @param depositor The depositor address
     * @param receiver The receiver address
     */
    function _depositERC20(uint256 amount, address depositor, address receiver) internal {
        smartVaultManager.transferCallback(underlyingAsset, depositor, amount);

        // Track total deposited underlying asset
        _totalDepositedUnderlying += amount;

        _updateShares(amount, receiver, true);

        emit Deposit(amount, depositor, receiver);
    }

    /**
     * @notice Before withdraw hook
     * @param amount The amount to withdraw
     * @param owner The owner address
     */
    function _beforeWithdraw(uint256 amount, address owner, address /* receiver */ ) internal {
        _checkIsWithdrawAvailable();

        uint256 ownerShares = SmartVaultMath.scaleToOriginalDecimals(
            balanceOf(owner), IERC20Metadata(address(underlyingAsset)).decimals(), Math.Rounding.Floor
        );
        if (amount > ownerShares) revert AmountExceedsShares(amount, ownerShares);

        _updateReward(owner);
    }

    /**
     * @notice Withdraw underlying asset
     * @param amount The amount to withdraw
     * @param owner The owner address
     * @param receiver The receiver address
     */
    function _withdraw(uint256 amount, address owner, address receiver) internal {
        _updateShares(amount, owner, false);

        // Update total deposited underlying asset
        _totalDepositedUnderlying -= amount;

        underlyingAsset.safeTransfer(receiver, amount);

        emit Withdraw(amount, owner, receiver);
    }

    /**
     * @notice Before claim hook
     * @param owner The owner address
     */
    function _beforeClaim(address owner, address /* receiver */ ) internal {
        _checkIsClaimable();

        _updateReward(owner);
    }

    /**
     * @notice Claim rewards
     * @param owner The owner address
     * @param receiver The receiver address
     */
    function _claim(address owner, address receiver) internal {
        for (uint256 i; i < _rewardTokenList.length; i++) {
            IERC20 asset = _rewardTokenList[i];
            uint256 pendingRewards = _pendingRewards[asset][owner];

            if (pendingRewards != 0) {
                _updatePendingReward(asset, owner, pendingRewards, false);

                Allocation memory allocation = Allocation(asset, receiver, pendingRewards);
                rewardVault.transferAllocatedTokens(allocation);

                emit Claimed(owner, receiver, asset, pendingRewards);
            }
        }
    }

    /**
     * @notice Update the state when the balance of an account changes
     * @dev override the `_update` function in the ERC20Upgradeable contract
     * @param from The address to transfer from
     * @param to The address to transfer to
     * @param amount The amount to transfer
     */
    function _update(address from, address to, uint256 amount) internal override {
        _updateReward(from);
        _updateReward(to);
        super._update(from, to, amount);
        _manageDebtAndStake();
    }

    /**
     * @notice Update the shares of an account
     * @param amount The amount to update
     * @param addr The address to update
     * @param add Add or subtract the amount
     */
    function _updateShares(uint256 amount, address addr, bool add) internal {
        // scale the amount to decimals 18
        Math.Rounding rounding = add ? Math.Rounding.Floor : Math.Rounding.Ceil;
        amount = SmartVaultMath.scaleToDecimals18(amount, IERC20Metadata(address(underlyingAsset)).decimals(), rounding);
        if (add) {
            _mint(addr, amount);
        } else {
            _burn(addr, amount);
        }
    }

    /**
     * @notice Update the reward state
     * @param addr The address to update
     */
    function _updateReward(address addr) internal {
        _updateAllLastRewardPerToken();
        _updateUserReward(addr);
    }

    /**
     * @notice Update the reward state for an account
     * @param addr The account address
     */
    function _updateUserReward(address addr) internal {
        // update user reward state
        for (uint256 i; i < _rewardTokenList.length; i++) {
            IERC20 asset = _rewardTokenList[i];
            uint256 rewardAmount = _calcUserReward(asset, addr);
            _updateLastUserRewardPerToken(asset, addr, _lastRewardPerToken[asset]);
            _updatePendingReward(asset, addr, rewardAmount, true);
        }
    }

    /**
     * @notice Update the last reward per token for all reward tokens
     */
    function _updateAllLastRewardPerToken() internal {
        if (_lastUpdateTime == block.timestamp) return;
        for (uint256 i; i < _rewardTokenList.length; i++) {
            IERC20 asset = _rewardTokenList[i];
            _updateLastRewardPerToken(asset, _calcRewardPerToken(asset));
        }

        _lastUpdateTime = block.timestamp;
    }

    /**
     * @notice Update the last reward per token for a reward token
     * @param asset The reward token address
     * @param rewardPerToken The reward per token
     */
    function _updateLastRewardPerToken(IERC20 asset, uint256 rewardPerToken) internal {
        _lastRewardPerToken[asset] = rewardPerToken;
        emit LastRewardPerTokenUpdated(asset, rewardPerToken);
    }

    /**
     * @notice Update the last user reward per token for an account
     * @param asset The reward token address
     * @param addr The account address
     * @param rewardPerToken The reward per token
     */
    function _updateLastUserRewardPerToken(IERC20 asset, address addr, uint256 rewardPerToken) internal {
        _lastUserRewardPerToken[asset][addr] = rewardPerToken;
        emit UserRewardPerTokenUpdated(asset, addr, rewardPerToken);
    }

    /**
     * @notice Update the pending reward for an account
     * @param asset The reward token address
     * @param addr The account address
     * @param amount The amount to update
     * @param add Add or subtract the amount
     */
    function _updatePendingReward(IERC20 asset, address addr, uint256 amount, bool add) internal {
        if (add) {
            _pendingRewards[asset][addr] += amount;
        } else {
            _pendingRewards[asset][addr] -= amount;
        }
        emit PendingRewardUpdated(asset, addr, amount, add);
    }

    /**
     * @notice Manage the debt and staking amount
     */
    function _manageDebtAndStake() internal {
        if (!_vaultConfig.isStakingEnabled) return;

        // scale to decimals 18, assume the value of 1 debtToken = 1 USD
        uint256 underlyingValue = _calculateUnderlyingTokenValue();
        uint256 target = underlyingValue.mulDiv(_vaultConfig.stakingFactor, STAKING_PRECISION);

        if (target > _mintedDebt) {
            uint256 mintAmount = target - _mintedDebt;
            _mintDebtToken(mintAmount);
            _adjustStaking(target);
        } else {
            _adjustStaking(target);
            uint256 burnAmount = _mintedDebt - target;
            _burnDebtToken(burnAmount);
        }
    }

    /**
     * @notice Adjust the staking amount
     * @param target The target staking amount
     */
    function _adjustStaking(uint256 target) internal {
        if (target > _stakingAmount) {
            uint256 stakeAmount = target - _stakingAmount;
            _stakeDebtToken(stakeAmount);
        } else {
            uint256 unstakeAmount = _stakingAmount - target;
            _unstakeDebtToken(unstakeAmount);
        }
    }

    /**
     * @notice Stake debt token
     * @param amount The amount to stake
     * @return shares The shares received
     */
    function _stakeDebtToken(uint256 amount) internal returns (uint256) {
        _stakingAmount += amount;
        address stakingVault = address(smartVaultManager.stakingVault());
        smartVaultManager.debtToken().approve(stakingVault, amount);
        uint256 shares = IStakingVault(stakingVault).deposit(amount, address(this));
        emit StakedDebtToken(amount, shares);
        return shares;
    }

    /**
     * @notice Unstake debt token
     * @param amount The amount to unstake
     * @return debtAmount The debt amount received
     */
    function _unstakeDebtToken(uint256 amount) internal returns (uint256) {
        if (amount == 0) return 0;
        _stakingAmount -= amount;
        uint256 shares = IStakingVault(smartVaultManager.stakingVault()).withdraw(amount, address(this), address(this));
        emit UnstakedDebtToken(amount, shares);
        return shares;
    }

    /**
     * @notice Mint debt token
     * @param amount The amount to mint
     */
    function _mintDebtToken(uint256 amount) internal {
        if (amount == 0) return;

        _mintedDebt += amount;

        uint256 balanceBefore = smartVaultManager.debtToken().balanceOf(address(this));
        smartVaultManager.vaultMintDebtTokenCallback(amount);
        uint256 balanceAfter = smartVaultManager.debtToken().balanceOf(address(this));
        uint256 balanceChange = balanceAfter - balanceBefore;

        if (balanceChange != amount) revert DebtTokenBalanceChangedUnexpectedly(balanceChange, amount);

        emit MintedDebtToken(amount);
    }

    /**
     * @notice Burn debt token
     * @param amount The amount to burn
     */
    function _burnDebtToken(uint256 amount) internal {
        if (amount == 0) return;

        _mintedDebt -= amount;

        uint256 balanceBefore = smartVaultManager.debtToken().balanceOf(address(this));
        smartVaultManager.vaultBurnDebtTokenCallback(amount);
        uint256 balanceAfter = smartVaultManager.debtToken().balanceOf(address(this));
        uint256 balanceChange = balanceBefore - balanceAfter;

        if (balanceChange != amount) revert DebtTokenBalanceChangedUnexpectedly(balanceChange, amount);

        emit BurnedDebtToken(amount);
    }

    /**
     * @notice Calculate the value of the underlying token
     * @dev The value will be scaled to 18 decimals
     * @return value The value of the underlying token in 18 decimals
     */
    function _calculateUnderlyingTokenValue() internal returns (uint256) {
        uint256 price = _getAssetPrice(); // 1e18
        // some underlyingToken may be deposited to other vaults, so we use totalSupply here
        uint256 amount = totalSupply(); // 1e18
        return amount.mulDiv(price, 1e18); // scale to 1e18
    }

    /**
     * @notice Get the price of the underlying asset
     * @dev The price will be scaled to 1e18 in fetchPrice function
     * @return price The price of the underlying asset in 18 decimals
     */
    function _getAssetPrice() internal returns (uint256) {
        return smartVaultManager.fetchPrice(underlyingAsset);
    }

    /**
     * @notice Calculate the reward amount for an account
     * @param asset The reward token address
     * @param addr The account address
     * @return reward The reward amount
     */
    function _calcUserReward(IERC20 asset, address addr) internal view returns (uint256) {
        // calculate reward amount
        return SmartVaultMath.computeReward(
            balanceOf(addr), _lastRewardPerToken[asset], _lastUserRewardPerToken[asset][addr]
        );
    }

    /**
     * @notice Preview the reward amount for an account
     * @param asset The reward token address
     * @param addr The account address
     * @return reward The reward amount
     */
    function _prevUserReward(IERC20 asset, address addr) internal view returns (uint256) {
        // calculate reward amount
        return SmartVaultMath.computeReward(
            balanceOf(addr), _calcRewardPerToken(asset), _lastUserRewardPerToken[asset][addr]
        );
    }

    /**
     * @notice Calculate the reward per token
     * @param asset The reward token address
     * @return rewardPerToken The reward per token
     */
    function _calcRewardPerToken(IERC20 asset) internal view returns (uint256) {
        // calculate reward per token
        return SmartVaultMath.computeLatestRewardPerToken(
            _lastRewardPerToken[asset],
            _rewardConfigs[asset].rewardRate,
            SmartVaultMath.computeInterval(
                block.timestamp,
                _lastUpdateTime,
                _rewardConfigs[asset].rewardStartTime,
                _rewardConfigs[asset].rewardEndTime
            ),
            totalSupply()
        );
    }

    /// @notice Check if deposit is enabled
    function _checkIsDepositEnabled() internal view {
        if (!_isDepositEnabled()) {
            revert InvalidDepositTime(block.timestamp, _vaultConfig.depositStartTime, _vaultConfig.depositEndTime);
        }
    }

    /// @notice Check if claim is enabled
    function _checkIsClaimable() internal view {
        if (!_isClaimable()) revert InvalidClaimTime(block.timestamp);
    }

    /// @notice Check if withdraw is available
    function _checkIsWithdrawAvailable() internal view {
        if (block.timestamp < _vaultConfig.withdrawStartTime) {
            revert InvalidWithdrawTime(block.timestamp, _vaultConfig.withdrawStartTime);
        }
    }

    /// @notice Check if the strategy is valid
    function _checkIsStrategy(address _strategy) internal view {
        if (!_isStrategy(_strategy)) revert InvalidStrategy(_strategy);
    }

    /// @notice Deposit is enabled or not
    function _isDepositEnabled() internal view returns (bool) {
        return block.timestamp >= _vaultConfig.depositStartTime && block.timestamp <= _vaultConfig.depositEndTime;
    }

    /// @notice Claim is enabled or not
    function _isClaimable() internal view returns (bool) {
        return block.timestamp >= _vaultConfig.claimStartTime && block.timestamp <= _vaultConfig.claimEndTime;
    }

    /// @notice Strategy is valid or not
    function _isStrategy(address _strategy) internal view returns (bool) {
        return _strategies[_strategy];
    }

    /// @notice Whitelist mode is enabled or not
    function _isWhitelistMode() internal view returns (bool) {
        return _vaultConfig.isWhitelistMode;
    }

    /// @notice Check if the address is whitelisted
    function _isWhitelisted(address account) internal view returns (bool) {
        return _whitelisted[account];
    }

    /**
     * @notice Check if the address is not zero
     * @param addr The address to check
     */
    function _checkIsNotZeroAddress(address addr) internal pure {
        if (addr == address(0)) revert InvalidZeroAddress();
    }

    /**
     * @notice Check vault configuration parameters
     * @param vaultConfig The vault configuration
     */
    function _checkVaultConfig(VaultConfig memory vaultConfig) internal pure {
        if (vaultConfig.depositEndTime < vaultConfig.depositStartTime) {
            revert InvalidConfigDepositTime(vaultConfig.depositStartTime, vaultConfig.depositEndTime);
        }
        if (vaultConfig.claimEndTime < vaultConfig.claimStartTime) {
            revert InvalidConfigClaimTime(vaultConfig.claimStartTime, vaultConfig.claimEndTime);
        }
        if (vaultConfig.depositCap < vaultConfig.depositCapPerUser) {
            revert InvalidConfigDepositCap(vaultConfig.depositCap, vaultConfig.depositCapPerUser);
        }
        if (vaultConfig.stakingFactor > STAKING_PRECISION) {
            revert InvalidConfigStakingFactor(vaultConfig.stakingFactor);
        }
    }

    function _updateVaultConfig() internal {
        if (!_vaultConfig.isStakingEnabled) {
            _unstakeDebtToken(_stakingAmount);
            _burnDebtToken(_mintedDebt);
        }
        _manageDebtAndStake();
    }
}
