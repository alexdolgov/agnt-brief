// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

//                   ██
//                   ██
//                   ██
//                   ██
//                   ██
//      █████████████████████████████████████████
//                                 ██
//                                 ██
//                                 ██
//                                 ██
//                                 ██

import { Roles } from "src/libs/Roles.sol";
import { Errors } from "src/utils/Errors.sol";
import { AutopoolDebt } from "src/vault/libs/AutopoolDebt.sol";
import { Pausable } from "src/security/Pausable.sol";
import { VaultTypes } from "src/vault/VaultTypes.sol";
import { NonReentrantUpgradeable } from "src/utils/NonReentrantUpgradeable.sol";
import { SecurityBase } from "src/security/SecurityBase.sol";
import { IAutopool } from "src/interfaces/vault/IAutopool.sol";
import { AutopoolFees } from "src/vault/libs/AutopoolFees.sol";
import { AutopoolToken } from "src/vault/libs/AutopoolToken.sol";
import { Autopool4626 } from "src/vault/libs/Autopool4626.sol";
import { IStrategy } from "src/interfaces/strategy/IStrategy.sol";
import { ISystemSecurity } from "src/interfaces/security/ISystemSecurity.sol";
import { Math } from "openzeppelin-contracts/utils/math/Math.sol";
import { WithdrawalQueue } from "src/strategy/WithdrawalQueue.sol";
import { AutopoolDestinations } from "src/vault/libs/AutopoolDestinations.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { ISystemComponent } from "src/interfaces/ISystemComponent.sol";
import { IAutopoolStrategy } from "src/interfaces/strategy/IAutopoolStrategy.sol";
import { IMainRewarder } from "src/interfaces/rewarders/IMainRewarder.sol";
import { StructuredLinkedList } from "src/strategy/StructuredLinkedList.sol";
import { Initializable } from "openzeppelin-contracts/proxy/utils/Initializable.sol";
import { EnumerableSet } from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { IERC3156FlashBorrower } from "openzeppelin-contracts/interfaces/IERC3156FlashBorrower.sol";
import { AutopoolState, ProcessRebalanceParams, AutopoolStorage } from "src/vault/libs/AutopoolState.sol";
import { AutopoolStrategyHooks } from "src/vault/libs/AutopoolStrategyHooks.sol";
import { IStrategyHook, HookFunctionIndex } from "src/interfaces/strategy/IStrategyHook.sol";

// solhint-disable max-states-count,const-name-snakecase

contract AutopoolETH is
    ISystemComponent,
    Initializable,
    IAutopool,
    IStrategy,
    SecurityBase,
    Pausable,
    NonReentrantUpgradeable
{
    using EnumerableSet for EnumerableSet.AddressSet;
    using Math for uint256;
    using WithdrawalQueue for StructuredLinkedList.List;
    using AutopoolToken for AutopoolToken.TokenData;
    using AutopoolDestinations for AutopoolState;
    using AutopoolFees for AutopoolState;
    using Autopool4626 for AutopoolState;
    using AutopoolDebt for AutopoolState;
    using AutopoolStrategyHooks for AutopoolState;

    /// Be careful around the use of totalSupply and balanceOf. If you go directly to the _token struct you may miss
    /// out on the profit share unlock logic or the checking the balance of the pool itself

    /// =====================================================
    /// Constant Vars
    /// =====================================================

    /// @notice Amount of base asset to be sent to vault on initialization.
    uint256 public constant BASE_ASSET_INIT_DEPOSIT = 100_000;

    // @notice Decimals of the Autopool
    uint8 internal constant AUTOPOOL_DECIMALS = 18;

    /// @notice 100% == 10000
    uint256 internal constant FEE_DIVISOR = 10_000;

    /// @notice Dead address for init share burn.
    address internal constant DEAD_ADDRESS = 0x000000000000000000000000000000000000dEaD;

    // solhint-disable-next-line var-name-mixedcase
    uint256 public constant ONE = 10 ** AUTOPOOL_DECIMALS;

    /// @notice The strategy logic for the Autopool
    /// @dev Intentionally set to dead
    IAutopoolStrategy public constant autoPoolStrategy = IAutopoolStrategy(DEAD_ADDRESS);

    /// =====================================================
    /// Immutable Vars
    /// =====================================================

    /// @notice Overarching baseAsset type
    bytes32 public immutable vaultType = VaultTypes.GENERAL_V1;

    /// @notice Amount to pad scaling operations by
    uint256 public immutable decimalPad;

    /// @notice Instance of this system this vault is tied to
    /// @dev Exposed via `getSystemRegistry()`
    ISystemRegistry internal immutable _systemRegistry;

    /// @notice The asset that is deposited into the vault
    /// @dev Exposed via `asset()`
    IERC20Metadata internal immutable _baseAsset;

    /// @notice Decimals of the base asset
    uint8 internal immutable _baseAssetDecimals;

    /// =====================================================
    /// Modifiers
    /// =====================================================

    /// @notice Reverts if nav/share decreases during a deposit/mint/withdraw/redeem
    /// @dev Increases are allowed. Ignored when supply is 0
    modifier noNavPerShareDecrease(
        TotalAssetPurpose purpose
    ) {
        (uint256 oldNav, uint256 startingTotalSupply) = _snapStartNav(purpose);
        _;
        _ensureNoNavPerShareDecrease(oldNav, startingTotalSupply, purpose);
    }

    /// @notice Reverts if any nav/share changing operations are in progress across the system
    /// @dev Any rebalance or debtReporting on any pool
    modifier ensureNoNavOps() {
        _checkNoNavOps();
        _;
    }

    /// @notice Globally track operations that change nav/share in a vault
    /// @dev Doesn't revert, only meant to track so that `ensureNoNavOps()` can revert when appropriate
    modifier trackNavOps() {
        ISystemSecurity systemSecurity = _systemRegistry.systemSecurity();
        systemSecurity.enterNavOperation();
        _;
        // slither-disable-next-line reentrancy-no-eth
        systemSecurity.exitNavOperation();
    }

    /// =====================================================
    /// Functions - Construction
    /// =====================================================

    constructor(
        ISystemRegistry systemRegistry,
        address _vaultAsset
    ) SecurityBase(address(systemRegistry.accessController())) Pausable(systemRegistry) {
        Errors.verifyNotZero(address(systemRegistry), "systemRegistry");

        AutopoolState storage $ = AutopoolStorage.load();

        _systemRegistry = systemRegistry;

        _baseAssetDecimals = IERC20Metadata(_vaultAsset).decimals();
        _baseAsset = IERC20Metadata(_vaultAsset);
        $.symbol = string(abi.encodePacked("autopool", IERC20Metadata(_vaultAsset).symbol(), "Template"));
        $.name = string(abi.encodePacked($.symbol, " Token"));

        _disableInitializers();

        if (_baseAssetDecimals > AUTOPOOL_DECIMALS) {
            revert InvalidDecimals();
        }
        decimalPad = 10 ** (AUTOPOOL_DECIMALS - _baseAssetDecimals);
    }

    function initialize(
        string memory symbolSuffix,
        string memory descPrefix,
        bytes memory
    ) external virtual initializer {
        NonReentrantUpgradeable.initialize();

        Errors.verifyNotEmpty(symbolSuffix, "symbolSuffix");
        Errors.verifyNotEmpty(descPrefix, "descPrefix");

        AutopoolState storage $ = AutopoolStorage.load();

        $.symbol = symbolSuffix;
        $.name = descPrefix;
        $.factory = msg.sender;

        $.initializeFeeSettings();

        // slither-disable-start reentrancy-no-eth

        // Send 100_000 shares to dead address to prevent nav / share inflation attack that can happen
        // with very small shares and totalAssets amount.
        uint256 sharesMinted = deposit(BASE_ASSET_INIT_DEPOSIT, DEAD_ADDRESS);

        if (sharesMinted != Autopool4626.changeDecimals(BASE_ASSET_INIT_DEPOSIT, _baseAssetDecimals, AUTOPOOL_DECIMALS))
        {
            revert ValueSharesMismatch(BASE_ASSET_INIT_DEPOSIT, sharesMinted);
        }
        // slither-disable-end reentrancy-no-eth

        AutopoolFees.setProfitUnlockPeriod($, 86_400);
    }

    /// =====================================================
    /// Functions - External
    /// =====================================================

    /// @notice Enable or disable the high water mark on the rebalance fee
    /// @dev Will revert if set to the same value
    function setRebalanceFeeHighWaterMarkEnabled(
        bool enabled
    ) external {
        _ensureCallerHasRole(Roles.AUTO_POOL_FEE_UPDATER);
        AutopoolState storage $ = AutopoolStorage.load();
        AutopoolFees.setRebalanceFeeHighWaterMarkEnabled($.feeSettings, enabled);
    }

    /// @notice Set the fee that will be taken when profit is realized
    /// @dev Resets the high water to current value
    /// @param fee Percent. 100% == 10000
    function setStreamingFeeBps(
        uint256 fee
    ) external nonReentrant {
        _ensureCallerHasRole(Roles.AUTO_POOL_FEE_UPDATER);
        AutopoolState storage $ = AutopoolStorage.load();
        $.setStreamingFeeBps(fee, $.oldestDebtReporting());
    }

    /// @notice Set the periodic fee taken.
    /// @dev Depending on time until next fee take, may update periodicFeeBps directly or queue fee.
    /// @param fee Fee to update periodic fee to.
    function setPeriodicFeeBps(
        uint256 fee
    ) external {
        _ensureCallerHasRole(Roles.AUTO_POOL_PERIODIC_FEE_UPDATER);
        AutopoolState storage $ = AutopoolStorage.load();
        $.setPeriodicFeeBps(fee, $.oldestDebtReporting());
    }

    /// @notice Set the address that will receive fees
    /// @param newFeeSink Address that will receive fees
    function setFeeSink(
        address newFeeSink
    ) external {
        _ensureCallerHasRole(Roles.AUTO_POOL_FEE_UPDATER);
        AutopoolFees.setFeeSink(AutopoolStorage.load().feeSettings, newFeeSink);
    }

    /// @notice Sets the address that will receive periodic fees.
    /// @dev Zero address allowable.  Disables fees.
    /// @param newPeriodicFeeSink New periodic fee address.
    function setPeriodicFeeSink(
        address newPeriodicFeeSink
    ) external {
        _ensureCallerHasRole(Roles.AUTO_POOL_PERIODIC_FEE_UPDATER);
        AutopoolFees.setPeriodicFeeSink(AutopoolStorage.load().feeSettings, newPeriodicFeeSink);
    }

    /// @notice Change the length of time it takes for profits to unlock
    /// @dev If set to 0, existing shares will unlock immediately and increase nav/share.
    function setProfitUnlockPeriod(
        uint48 newUnlockPeriodSeconds
    ) external {
        _ensureCallerHasRole(Roles.AUTO_POOL_MANAGER);
        AutopoolFees.setProfitUnlockPeriod(AutopoolStorage.load(), newUnlockPeriodSeconds);
    }

    /// @notice Set the rewarder contract used by the Autopool.
    /// @param newRewarder Address of new rewarder.
    function setRewarder(
        address newRewarder
    ) external {
        AutopoolState storage $ = AutopoolStorage.load();
        // Factory needs to be able to call for vault creation.
        if (msg.sender != $.factory && !_hasRole(Roles.AUTO_POOL_REWARD_MANAGER, msg.sender)) {
            revert Errors.AccessDenied();
        }

        $.setRewarder(newRewarder);
    }

    /// @notice Allow the updating of symbol/desc for the vault (only AFTER shutdown)
    /// @param newSymbol Symbol the Autopool will use going forward
    /// @param newName Name the Autopool will use going forward
    function setSymbolAndDescAfterShutdown(string memory newSymbol, string memory newName) external {
        _ensureCallerHasRole(Roles.AUTO_POOL_MANAGER);
        AutopoolStorage.load().setSymbolAndDescAfterShutdown(newSymbol, newName);
    }

    /// @notice Transfer out eligible tokens
    /// @param tokens List of tokens to transfer
    /// @param amounts Amount of those tokens to transfer
    /// @param destinations Recipient wallets of the transferred tokens
    function recover(
        address[] calldata tokens,
        uint256[] calldata amounts,
        address[] calldata destinations
    ) external virtual override {
        _ensureCallerHasRole(Roles.TOKEN_RECOVERY_MANAGER);
        Autopool4626.recover(tokens, amounts, destinations);
    }

    /// @inheritdoc IAutopool
    function shutdown(
        VaultShutdownStatus reason
    ) external {
        _ensureCallerHasRole(Roles.AUTO_POOL_MANAGER);
        Autopool4626.shutdownVault(AutopoolStorage.load(), reason);
    }

    /// @notice Add Destinations to the Autopool
    function addDestinations(
        address[] calldata destinations
    ) external {
        _ensureCallerHasRole(Roles.AUTO_POOL_DESTINATION_UPDATER);
        AutopoolStorage.load().addDestinations(destinations, _systemRegistry);
    }

    /// @notice Remove Destinations from the Autopool
    /// @dev If Destination currently has deployments the Destination will be removed when its empty
    function removeDestinations(
        address[] calldata destinations
    ) external {
        _ensureCallerHasRole(Roles.AUTO_POOL_DESTINATION_UPDATER);
        AutopoolStorage.load().removeDestinations(destinations);
    }

    /// @notice Update our cached values of the deployed Destinations
    /// @param numToProcess The number of Destinations in the list to process
    function updateDebtReporting(
        uint256 numToProcess
    ) external nonReentrant trackNavOps {
        _ensureCallerHasRole(Roles.AUTO_POOL_REPORTING_EXECUTOR);

        AutopoolState storage $ = AutopoolStorage.load();

        bytes memory hooks = $.getHookBytes();

        // slither-disable-next-line reentrancy-no-eth
        AutopoolDebt.AssetChanges memory result = AutopoolDebt.updateDebtReporting($, numToProcess, hooks);

        _feeAndProfitHandling(result, hooks, true);
    }

    /// @notice Add a set of hooks to the Autopool configuration
    /// @param newHooks Set of hooks to add to the Autopool
    /// @param data Set of onRegister data to pass to the onRegistered function of the hook
    function addHooks(IStrategyHook[] memory newHooks, bytes[] memory data) external {
        _ensureCallerHasRole(Roles.STRATEGY_HOOK_CONFIGURATION);
        AutopoolStorage.load().addHooks(newHooks, data);
    }

    /// @notice Remove a hook from the Autopools configuration
    /// @param hookToRemove Hook to remove from to the Autopool
    /// @param cleanupData Data to pass to the onUnregistered function of the hook
    function removeHook(IStrategyHook hookToRemove, bytes calldata cleanupData) external {
        _ensureCallerHasRole(Roles.STRATEGY_HOOK_CONFIGURATION);
        AutopoolStorage.load().removeHook(hookToRemove, cleanupData);
    }

    /// @notice Get hooks configured on the Autopool
    /// @dev Do not use in any executing code
    function getHooks() external view returns (AutopoolStrategyHooks.HookConfiguration memory) {
        return AutopoolStorage.load().getHooks();
    }

    /// @notice Returns the main rewarder for this contract
    function rewarder() external view returns (IMainRewarder) {
        return AutopoolStorage.load().rewarder;
    }

    /// @inheritdoc IAutopool
    function isPastRewarder(
        address _pastRewarder
    ) external view returns (bool) {
        return AutopoolStorage.load().pastRewarders.contains(_pastRewarder);
    }

    /// @inheritdoc IAutopool
    function isShutdown() external view returns (bool) {
        return AutopoolStorage.load().shutdown;
    }

    /// @inheritdoc IAutopool
    function shutdownStatus() external view returns (VaultShutdownStatus) {
        return AutopoolStorage.load().shutdownStatus;
    }

    /// @notice Returns state and settings related to gradual profit unlock
    function getProfitUnlockSettings() external view returns (IAutopool.ProfitUnlockSettings memory) {
        return AutopoolStorage.load().profitUnlockSettings;
    }

    /// @notice Returns state and settings related to periodic and streaming fees
    function getFeeSettings() external view returns (IAutopool.AutopoolFeeSettings memory) {
        return AutopoolStorage.load().feeSettings;
    }

    /// @notice Returns amount of assets for shares provided in an ideal scenario where all the conditions are met.
    function convertToAssets(
        uint256 shares
    ) external view virtual returns (uint256 assets) {
        assets = convertToAssets(shares, totalAssets(TotalAssetPurpose.Global), totalSupply(), Math.Rounding.Down);
    }

    /// @notice Returns the system instance this contract is tied to
    function getSystemRegistry() external view override returns (address) {
        return address(_systemRegistry);
    }

    /// @notice Returns the full list of Destinations configured on the Autopool
    function getDestinations() external view override(IAutopool, IStrategy) returns (address[] memory) {
        return AutopoolStorage.load().destinations.values();
    }

    /// @notice Returns the ordered list of Destinations that users will withdraw from when required
    function getWithdrawalQueue() external view returns (address[] memory) {
        return AutopoolStorage.load().withdrawalQueue.getList();
    }

    /// @notice Returns the list of Destinations that should be debt reported on
    function getDebtReportingQueue() external view returns (address[] memory) {
        return AutopoolStorage.load().debtReportQueue.getList();
    }

    /// @inheritdoc IAutopool
    function isDestinationRegistered(
        address destination
    ) external view returns (bool) {
        return AutopoolStorage.load().destinations.contains(destination);
    }

    /// @notice Returns all destination currently queued for removal
    function getRemovalQueue() external view override returns (address[] memory) {
        return AutopoolStorage.load().removalQueue.values();
    }

    /// @notice Factory contract that created this vault
    function factory() external view returns (address) {
        return AutopoolStorage.load().factory;
    }

    /// @inheritdoc IAutopool
    function getDestinationInfo(
        address destVault
    ) external view returns (AutopoolDebt.DestinationInfo memory) {
        return AutopoolStorage.load().destinationInfo[destVault];
    }

    /// @notice Return the timestamp of the oldest debt reporting
    function oldestDebtReporting() external view returns (uint256) {
        return AutopoolStorage.load().oldestDebtReporting();
    }

    /// @inheritdoc IAutopool
    function isDestinationQueuedForRemoval(
        address dest
    ) external view returns (bool) {
        return AutopoolStorage.load().removalQueue.contains(dest);
    }

    /// =====================================================
    /// Functions - Public
    /// =====================================================

    /// @notice Mints Vault shares to receiver by depositing exactly amount of underlying tokens
    /// @dev No nav/share changing operations, debt reportings or rebalances,
    /// can be happening throughout the entire system
    function deposit(
        uint256 assets,
        address receiver
    )
        public
        virtual
        override
        nonReentrant
        noNavPerShareDecrease(TotalAssetPurpose.Deposit)
        ensureNoNavOps
        returns (uint256 shares)
    {
        AutopoolState storage $ = AutopoolStorage.load();
        shares = Autopool4626.deposit($, address(_baseAsset), assets, receiver, paused(), _baseAssetDecimals);
        onDeposit(assets, shares, receiver);
    }

    /// @notice Mints exactly shares Vault shares to receiver by depositing amount of underlying tokens.
    function mint(
        uint256 shares,
        address receiver
    )
        public
        virtual
        override
        nonReentrant
        noNavPerShareDecrease(TotalAssetPurpose.Deposit)
        ensureNoNavOps
        returns (uint256 assets)
    {
        AutopoolState storage $ = AutopoolStorage.load();
        // Handles the vault being paused, returns 0
        if (shares > maxMint(receiver)) {
            revert ERC4626MintExceedsMax(shares, maxMint(receiver));
        }

        uint256 ta = $.totalAssetsTimeChecked(TotalAssetPurpose.Deposit);
        assets = convertToAssets(shares, ta, totalSupply(), Math.Rounding.Up);

        $.transferAndMint(_baseAsset, assets, shares, receiver);

        onDeposit(assets, shares, receiver);
    }

    /// @notice Burns shares from owner and sends exactly assets of underlying tokens to receiver.
    function withdraw(
        uint256 assets,
        address receiver,
        address owner
    )
        external
        virtual
        override
        nonReentrant
        whenNotPaused
        noNavPerShareDecrease(TotalAssetPurpose.Withdraw)
        ensureNoNavOps
        returns (uint256 shares)
    {
        Errors.verifyNotZero(assets, "assets");
        AutopoolState storage $ = AutopoolStorage.load();

        //slither-disable-next-line unused-return
        (uint256 actualAssets, uint256 actualShares,) =
            AutopoolDebt.withdraw($, assets, $.totalAssetsTimeChecked(TotalAssetPurpose.Withdraw));

        shares = actualShares;

        _completeWithdrawal($, actualAssets, shares, owner, receiver);
    }

    /// @notice Burns exactly shares from owner and sends assets of underlying tokens to receiver.
    function redeem(
        uint256 shares,
        address receiver,
        address owner
    )
        external
        virtual
        override
        nonReentrant
        whenNotPaused
        noNavPerShareDecrease(TotalAssetPurpose.Withdraw)
        ensureNoNavOps
        returns (uint256 assets)
    {
        AutopoolState storage $ = AutopoolStorage.load();

        uint256 ta = $.totalAssetsTimeChecked(TotalAssetPurpose.Withdraw);

        {
            uint256 maxShares = _maxRedeem(owner, ta);
            if (shares > maxShares) {
                revert ERC4626ExceededMaxRedeem(owner, shares, maxShares);
            }
        }

        uint256 possibleAssets = convertToAssets(shares, ta, totalSupply(), Math.Rounding.Down);
        Errors.verifyNotZero(possibleAssets, "possibleAssets");

        //slither-disable-next-line unused-return
        (uint256 actualAssets, uint256 actualShares,) = AutopoolDebt.redeem($, possibleAssets, ta);

        assets = actualAssets;

        assert(actualShares <= shares);

        _completeWithdrawal($, actualAssets, shares, owner, receiver);
    }

    /// @notice Sets a `value` amount of tokens as the allowance of `spender` over the caller's tokens.
    function approve(address spender, uint256 value) public virtual returns (bool) {
        AutopoolState storage $ = AutopoolStorage.load();
        return $.token.approve(spender, value);
    }

    /// @notice Moves a `value` amount of tokens from `from` to `to` using the allowance mechanism.
    /// `value` is then deducted from the caller's allowance.
    function transferFrom(address from, address to, uint256 value) public virtual whenNotPaused returns (bool) {
        AutopoolState storage $ = AutopoolStorage.load();
        return $.token.transferFrom(from, to, value);
    }

    /// @notice Moves a `value` amount of tokens from the caller's account to `to`
    function transfer(address to, uint256 value) public virtual whenNotPaused returns (bool) {
        AutopoolState storage $ = AutopoolStorage.load();
        return $.token.transfer(to, value);
    }

    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public virtual {
        AutopoolState storage $ = AutopoolStorage.load();
        $.token.permit(owner, spender, value, deadline, v, r, s);
    }

    /// @notice Returns the maximum amount of the underlying asset that can be
    /// deposited into the Vault for the receiver, through a deposit call
    function maxDeposit(
        address wallet
    ) public virtual override returns (uint256 maxAssets) {
        AutopoolState storage $ = AutopoolStorage.load();
        maxAssets = Autopool4626.maxDeposit($, wallet, paused(), _baseAssetDecimals);
    }

    /// @notice Simulate the effects of the deposit at the current block, given current on-chain conditions.
    function previewDeposit(
        uint256 assets
    ) public virtual returns (uint256 shares) {
        AutopoolState storage $ = AutopoolStorage.load();
        shares = convertToShares(
            assets, $.totalAssetsTimeChecked(TotalAssetPurpose.Deposit), totalSupply(), Math.Rounding.Down
        );
    }

    /// @notice Returns the maximum amount of the Vault shares that
    /// can be minted for the receiver, through a mint call.
    function maxMint(
        address wallet
    ) public virtual override returns (uint256 maxShares) {
        AutopoolState storage $ = AutopoolStorage.load();
        maxShares = Autopool4626.maxMint($, wallet, paused());
    }

    /// @notice Returns the maximum amount of the underlying asset that can
    /// be withdrawn from the owner balance in the Vault, through a withdraw call
    function maxWithdraw(
        address owner
    ) public virtual returns (uint256 maxAssets) {
        AutopoolState storage $ = AutopoolStorage.load();

        uint256 ownerShareBalance = balanceOf(owner);
        uint256 taChecked = $.totalAssetsTimeChecked(TotalAssetPurpose.Withdraw);

        if (paused() || ownerShareBalance == 0 || taChecked == 0) {
            return 0;
        }

        uint256 convertedAssets = convertToAssets(ownerShareBalance, taChecked, totalSupply(), Math.Rounding.Down);

        // slither-disable-next-line unused-return
        (maxAssets,) = AutopoolDebt.preview(
            $, true, convertedAssets, taChecked, abi.encodeCall(this.previewWithdraw, (convertedAssets))
        );
    }

    /// @notice Returns the maximum amount of Vault shares that can be redeemed
    /// from the owner balance in the Vault, through a redeem call
    function maxRedeem(
        address owner
    ) public virtual returns (uint256 maxShares) {
        AutopoolState storage $ = AutopoolStorage.load();
        maxShares = _maxRedeem(owner, $.totalAssetsTimeChecked(TotalAssetPurpose.Withdraw));
    }

    /// @notice Simulate the effects of a mint at the current block, given current on-chain conditions
    function previewMint(
        uint256 shares
    ) public virtual returns (uint256 assets) {
        AutopoolState storage $ = AutopoolStorage.load();
        uint256 ta = $.totalAssetsTimeChecked(TotalAssetPurpose.Deposit);
        assets = convertToAssets(shares, ta, totalSupply(), Math.Rounding.Up);
        Errors.verifyNotZero(assets, "assets");
    }

    /// @notice Simulate the effects of their withdrawal at the current block, given current on-chain conditions.
    function previewWithdraw(
        uint256 assets
    ) public virtual returns (uint256 shares) {
        AutopoolState storage $ = AutopoolStorage.load();
        // slither-disable-next-line unused-return
        (, shares) = AutopoolDebt.preview(
            $,
            true,
            assets,
            $.totalAssetsTimeChecked(TotalAssetPurpose.Withdraw),
            abi.encodeCall(this.previewWithdraw, (assets))
        );
    }

    /// @notice Simulate the effects of their redemption at the current block, given current on-chain conditions.
    function previewRedeem(
        uint256 shares
    ) public virtual override returns (uint256 assets) {
        AutopoolState storage $ = AutopoolStorage.load();

        // These values are not needed until the recursive call, gas savings.
        uint256 applicableTotalAssets = 0;
        uint256 convertedAssets = 0;
        if (msg.sender == address(this)) {
            applicableTotalAssets = $.totalAssetsTimeChecked(TotalAssetPurpose.Withdraw);
            convertedAssets = convertToAssets(shares, applicableTotalAssets, totalSupply(), Math.Rounding.Down);
        }

        // slither-disable-next-line unused-return
        (assets,) = AutopoolDebt.preview(
            $, false, convertedAssets, applicableTotalAssets, abi.encodeCall(this.previewRedeem, (shares))
        );
    }

    /// @inheritdoc IStrategy
    function flashRebalance(
        IERC3156FlashBorrower receiver,
        RebalanceParams memory rebalanceParams,
        bytes calldata data
    ) public nonReentrant whenNotPaused trackNavOps {
        _ensureCallerHasRole(Roles.SOLVER);

        emit RebalanceStarted(address(receiver), rebalanceParams);

        AutopoolState storage $ = AutopoolStorage.load();
        bytes memory hooks = $.getHookBytes();

        ProcessRebalanceParams memory params =
            ProcessRebalanceParams({ baseAsset: _baseAsset, receiver: receiver, rebalanceParams: rebalanceParams });
        AutopoolDebt.AssetChanges memory updatedAssets = AutopoolDebt.processRebalance($, params, data, hooks);

        _feeAndProfitHandling(updatedAssets, hooks, false);

        AutopoolStrategyHooks.executeHooks(
            hooks,
            uint256(HookFunctionIndex.onRebalanceFeeProfitHandlingComplete),
            abi.encodeCall(IStrategyHook.onRebalanceFeeProfitHandlingComplete, (params, msg.sender))
        );

        // Ensure the destinations are in the queues they should be
        $.manageQueuesForDestination(rebalanceParams.destinationOut, false);
        $.manageQueuesForDestination(rebalanceParams.destinationIn, true);

        AutopoolStrategyHooks.executeHooks(
            hooks,
            uint256(HookFunctionIndex.onRebalanceComplete),
            abi.encodeCall(IStrategyHook.onRebalanceComplete, (params, msg.sender))
        );

        emit RebalanceCompleted(updatedAssets);
    }

    /// @notice Returns the name of the token
    function name() public view virtual override returns (string memory) {
        return AutopoolStorage.load().name;
    }

    /// @notice Returns the symbol of the token
    function symbol() public view virtual override returns (string memory) {
        return AutopoolStorage.load().symbol;
    }

    /// @notice Returns the decimals of the autoPool token, always denominated in 18 decimals
    function decimals() public view virtual override returns (uint8) {
        return AUTOPOOL_DECIMALS;
    }

    /// @notice Returns the address of the underlying token used for the Vault for accounting, depositing, and
    /// withdrawing.
    function asset() public view virtual override returns (address) {
        return address(_baseAsset);
    }

    /// @notice Returns the total amount of the underlying asset that is “managed” by Vault.
    /// @dev Utilizes the "Global" purpose internally
    function totalAssets() public view override returns (uint256) {
        return Autopool4626.totalAssets(AutopoolStorage.load().assetBreakdown, TotalAssetPurpose.Global);
    }

    /// @notice Returns total amount of the asset() that is “managed” by the Autopool
    /// @dev Value changes based on purpose. Global is an avg. Deposit is valued higher. Withdraw is valued lower.
    /// @param purpose The calculation the total assets will be used in
    function totalAssets(
        TotalAssetPurpose purpose
    ) public view returns (uint256) {
        return Autopool4626.totalAssets(AutopoolStorage.load().assetBreakdown, purpose);
    }

    /// @notice Returns the amount of shares that the Vault would exchange for the amount of assets provided,
    /// in an ideal scenario where all the conditions are met
    function convertToShares(
        uint256 assets
    ) public view virtual returns (uint256 shares) {
        shares = convertToShares(assets, totalAssets(TotalAssetPurpose.Global), totalSupply(), Math.Rounding.Down);
    }

    /// @notice Returns the amount of shares that the Vault would exchange for the amount of assets provided,
    /// in an ideal scenario where all the conditions are met
    function convertToShares(
        uint256 assets,
        uint256 totalAssetsForPurpose,
        uint256 supply,
        Math.Rounding rounding
    ) public view virtual returns (uint256 shares) {
        shares = Autopool4626.convertToShares(assets, totalAssetsForPurpose, supply, rounding, _baseAssetDecimals);
    }

    /// @notice Returns the amount of assets that the Vault would exchange for the amount of shares provided, in an
    /// ideal
    /// scenario where all the conditions are met.
    function convertToAssets(
        uint256 shares,
        uint256 totalAssetsForPurpose,
        uint256 supply,
        Math.Rounding rounding
    ) public view virtual returns (uint256 assets) {
        assets = Autopool4626.convertToAssets(shares, totalAssetsForPurpose, supply, rounding, _baseAssetDecimals);
    }

    /// @notice Returns the amount of tokens in existence.
    /// @dev Subtracts any unlocked profit shares that will be burned
    function totalSupply() public view virtual override(IERC20) returns (uint256 shares) {
        shares = Autopool4626.totalSupply();
    }

    /// @notice Returns the amount of tokens owned by account.
    /// @dev Subtracts any unlocked profit shares that will be burned when account is the Vault itself
    function balanceOf(
        address account
    ) public view override(IERC20) returns (uint256) {
        return AutopoolStorage.load().balanceOf(account);
    }

    /// @notice Returns the amount of tokens owned by wallet.
    /// @dev Does not subtract any unlocked profit shares that should be burned when wallet is the Vault itself
    function balanceOfActual(
        address account
    ) public view returns (uint256) {
        return AutopoolStorage.load().token.balances[account];
    }

    /// @notice Returns the remaining number of tokens that `spender` will be allowed to spend on
    /// behalf of `owner` through {transferFrom}. This is zero by default
    /// @dev This value changes when `approve` or `transferFrom` are called
    function allowance(address owner, address spender) public view virtual returns (uint256) {
        return AutopoolStorage.load().token.allowances[owner][spender];
    }

    function getAssetBreakdown() public view override returns (IAutopool.AssetBreakdown memory) {
        return AutopoolStorage.load().assetBreakdown;
    }

    /// @notice Returns the next unused nonce for an address.
    function nonces(
        address owner
    ) public view virtual returns (uint256) {
        AutopoolState storage $ = AutopoolStorage.load();
        return $.token.nonces[owner];
    }

    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() public view virtual returns (bytes32) {
        return keccak256(
            abi.encode(
                AutopoolToken.TYPE_HASH,
                keccak256(bytes("Tokemak")),
                keccak256(bytes("1")),
                block.chainid,
                address(this)
            )
        );
    }

    /// =====================================================
    /// Functions - Internal
    /// =====================================================

    function onDeposit(uint256 assets, uint256 shares, address receiver) internal virtual { }

    function _completeWithdrawal(
        AutopoolState storage $,
        uint256 assets,
        uint256 shares,
        address owner,
        address receiver
    ) internal virtual {
        AutopoolDebt.completeWithdrawal($, assets, shares, owner, receiver, _baseAsset);
    }

    function _feeAndProfitHandling(
        AutopoolDebt.AssetChanges memory assetChanges,
        bytes memory hooks,
        bool collectPeriodicFees
    ) internal {
        AutopoolState storage $ = AutopoolStorage.load();

        uint256 startingTotalAssets = assetChanges.startingIdle + assetChanges.startingDebt;
        uint256 newTotalAssets = assetChanges.newIdle + assetChanges.newDebt;

        // Collect any fees and lock any profit if appropriate
        $.burnUnlockedShares();

        assetChanges.startingTotalSupply = totalSupply();

        assetChanges.endingTotalSupply =
            _collectFees(newTotalAssets, assetChanges.startingTotalSupply, collectPeriodicFees);

        assetChanges.endingTotalSupply = AutopoolFees.calculateProfitLocking(
            $.profitUnlockSettings,
            $.token,
            assetChanges.endingTotalSupply - assetChanges.startingTotalSupply, // new feeShares
            newTotalAssets,
            startingTotalAssets,
            assetChanges.endingTotalSupply,
            balanceOfActual(address(this))
        );

        AutopoolStrategyHooks.executeHooks(
            hooks, uint256(HookFunctionIndex.onNavUpdate), abi.encodeCall(IStrategyHook.onNavUpdate, (assetChanges))
        );

        emit Nav(assetChanges.newIdle, assetChanges.newDebt, assetChanges.endingTotalSupply);
    }

    /// @dev This has been broken it out for testing purposes
    function _collectFees(
        uint256 currentTotalAssets,
        uint256 currentTotalSupply,
        bool collectPeriodicFees
    ) internal virtual returns (uint256) {
        AutopoolState storage $ = AutopoolStorage.load();
        return AutopoolFees.collectFees($, currentTotalAssets, currentTotalSupply, collectPeriodicFees);
    }

    /// @dev Revert if a nav-changing operation is in progress in the system
    function _checkNoNavOps() internal view {
        if (_systemRegistry.systemSecurity().navOpsInProgress() > 0) {
            revert NavOpsInProgress();
        }
    }

    /// @dev Revert if nav/share decreases on withdraw/redeem. No-op when totalSupply is zero.
    function _ensureNoNavPerShareDecrease(
        uint256 oldNav,
        uint256 startingTotalSupply,
        TotalAssetPurpose purpose
    ) internal view virtual {
        uint256 ts = totalSupply();
        // slither-disable-next-line incorrect-equality
        if (ts == 0 || startingTotalSupply == 0) {
            return;
        }
        uint256 newNav = (totalAssets(purpose) * decimalPad * FEE_DIVISOR) / ts;
        if (newNav < oldNav) {
            revert NavDecreased(oldNav, newNav);
        }
    }

    /// =====================================================
    /// Functions - Private
    /// =====================================================

    function _ensureCallerHasRole(
        bytes32 role
    ) private view {
        if (!accessController.hasRole(role, msg.sender)) revert Errors.AccessDenied();
    }

    function _snapStartNav(
        TotalAssetPurpose purpose
    ) private view returns (uint256 oldNav, uint256 startingTotalSupply) {
        startingTotalSupply = totalSupply();
        // slither-disable-next-line incorrect-equality
        if (startingTotalSupply == 0) {
            return (0, 0);
        }
        oldNav = (totalAssets(purpose) * decimalPad * FEE_DIVISOR) / startingTotalSupply;
    }

    /// @dev Local gas-saving function to pass pre-calculated total assets time checked value
    function _maxRedeem(address owner, uint256 _totalAssets) private returns (uint256 maxShares) {
        // If total assets are zero then we are considered uncollateralized and all redeem's will fail
        if (_totalAssets > 0) {
            maxShares = paused() ? 0 : balanceOf(owner);
        }
    }
}
