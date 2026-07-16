// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import "../managers/StrategyAccountManager.sol";
import "../interfaces/IAssetPriceProvider.sol";
import "../libraries/accounts/AccountLib.sol";
import "../libraries/Errors.sol";
import "../system/ERC20CollateralVault.sol";
import "../system/ProtocolModule.sol";

abstract contract CollateralAccountManagerEvents {
    /// @notice A user has created an account.
    event AccountCreated(address indexed owner, address account);
    /// @notice A user has deposited WETH into the contract.
    event CollateralDeposit(address indexed owner, address account, address sender, uint256 amount);
    /// @notice A user has withdrawn WETH from the contract.
    event CollateralWithdrawal(address indexed owner, address account, address receiver, uint256 amount);
    /// @notice CollateralLiquidation
    event CollateralLiquidation(
        address account, uint256 collateralAmount, uint256 bonusCollateral, uint256 debtAmountNeeded
    );
    event LiquidationParametersUpdated(UD60x18 maxLtv, UD60x18 riskThreshold, UD60x18 liquidationThreshold);
}

/// @title CollateralAccountManager supports one account implementation
/// @notice The AccountManager contract deploys Account contracts.
abstract contract CollateralAccountManager is
    StrategyAccountManager,
    CollateralAccountManagerEvents,
    ERC20CollateralVault
{
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeERC20 for IERC20;
    using Address for address;

    UD60x18 public constant LIQUIDATION_BONUS = UD60x18.wrap(1.05e18); // 105% or 5%

    /// @notice The max loan to value for Accounts
    /// @dev If 200%, loan can be maximum 200% of their collateral value
    UD60x18 public maxLtv;

    /// @notice The risk threshold for accounts
    /// @dev (Investment value + Equity value) / Debt value > riskThreshold
    UD60x18 public riskThreshold;

    /// @notice The risk threshold for accounts
    /// @dev (Investment value + Equity value) / Debt value > liquidationThreshold
    UD60x18 public liquidationThreshold;

    /// @notice The implementation address of the Internal/External
    /// Account contracts to use for cloning
    address public immutable accountImplementation;

    mapping(address => address) internal _ownerAccountCache;

    struct InitParams {
        address account;
        address liquidationReceiver;
        address collateral;
        UD60x18 maxLtv;
        UD60x18 riskThreshold;
        UD60x18 liquidationThreshold;
        string name;
        string symbol;
        uint8 decimals;
    }

    /// @notice Constructs the factory
    /// @param params The parameters
    constructor(
        address protocolGovernor_,
        InitParams memory params
    )
        StrategyAccountManager(protocolGovernor_, params.liquidationReceiver)
        ERC20CollateralVault(params.collateral, params.name, params.symbol, params.decimals)
        nonZeroAddressAndContract(params.account)
    {
        accountImplementation = params.account;

        _validateLiquidationParameters(params.maxLtv, params.riskThreshold, params.liquidationThreshold);

        maxLtv = params.maxLtv;
        riskThreshold = params.riskThreshold;
        liquidationThreshold = params.liquidationThreshold;
    }

    function _validateLiquidationParameters(
        UD60x18 maxLtv_,
        UD60x18 riskThreshold_,
        UD60x18 liquidationThreshold_
    )
        internal
        pure
    {
        if (riskThreshold_ > maxLtv_ || liquidationThreshold_ > maxLtv_ || liquidationThreshold_ > riskThreshold_) {
            revert Errors.InvalidParams();
        }
    }

    /// @dev Updates maxLtv and riskThreshold.
    /// riskThreshold must always be less than maxLtv.
    function updateLiquidationParameters(
        UD60x18 maxLtv_,
        UD60x18 riskThreshold_,
        UD60x18 liquidationThreshold_
    )
        external
        onlyOwner
    {
        _validateLiquidationParameters(maxLtv_, riskThreshold_, liquidationThreshold);
        maxLtv = maxLtv_;
        riskThreshold = riskThreshold_;
        liquidationThreshold = liquidationThreshold_;
        emit LiquidationParametersUpdated(maxLtv, riskThreshold, liquidationThreshold);
    }

    /// @dev This call requires that this contract is the account manager on the lending pool
    function createAccount() public nonReentrant returns (address payable account) {
        account = _createAccount(msg.sender);
    }

    function _createAccount(address caller) internal returns (address payable account) {
        address owner = caller;

        if (_ownerAccountCache[owner] != address(0)) {
            revert Errors.InvalidParams();
        }

        account = payable(Clones.cloneDeterministic(accountImplementation, _salt(owner)));

        // Record the account was created
        isCreatedAccount[account] = true;
        _ownerAccountCache[owner] = account;
        _accountOwnerCache[account] = owner;
        accountCount += 1;

        emit AccountCreated(owner, account);

        // Initialize the account
        IAccount(account).initialize(owner);
    }

    /// @dev Takes assets from `msg.sender`, deposits them into the contract, and mints shares to the receiver.
    /// The shares are nontransferrable and reside in the receiver's address, but are used to credit the receiver's
    /// account contract.
    function deposit(
        uint256 assets,
        address receiver
    )
        public
        virtual
        override
        nonReentrant
        returns (uint256 updatedAssets, uint256 shares)
    {
        (updatedAssets, shares) = _deposit(assets, msg.sender, receiver);
    }

    function _deposit(
        uint256 assets,
        address caller,
        address receiver
    )
        internal
        returns (uint256 updatedAssets, uint256 shares)
    {
        address _receiverAccount = getAccount(receiver);
        if (!isCreatedAccount[_receiverAccount]) {
            revert Errors.InvalidParams();
        }
        (updatedAssets, shares) = super.deposit(assets, receiver);
        emit CollateralDeposit(receiver, _receiverAccount, caller, updatedAssets);
    }

    /// @dev Burns shares from the account of `msg.sender` and sends them to the receiver.
    /// `msg.sender` must be owner of account that owns the shares.
    function withdraw(
        uint256 shares,
        address receiver
    )
        public
        virtual
        override
        nonReentrant
        returns (uint256 updatedAssets, uint256 updatedShares)
    {
        (updatedAssets, updatedShares) = _withdraw(msg.sender, receiver, shares);
    }

    function _withdraw(
        address caller,
        address receiver,
        uint256 shares
    )
        internal
        override
        returns (uint256 updatedAssets, uint256 updatedShares)
    {
        (updatedAssets, updatedShares) = super._withdraw(caller, receiver, shares);
        address account = getAccount(caller);
        _requireSolventCheckBorrow(account, true);
        emit CollateralWithdrawal(caller, getAccount(caller), receiver, updatedAssets);
    }

    ///////////////////////////
    // COLLATERAL LIQUIDATIONS
    ///////////////////////////

    /// @dev This calculation assumes that debt asset and collateral asset have the same decimals and have 18 decimal
    /// precision.
    function liquidateCollateral(address account, uint256 debtToCover, address liquidationFeeTo) public {
        AccountLib.Health memory health = getAccountHealth(account);

        if (!health.isLiquidatable) revert Errors.AccountHealthy();

        // Mark account as liquidatable if it isn't already.
        if (_accountLiquidationStartTime[account] == 0) {
            _accountLiquidationStartTime[account] = block.timestamp;
            emit AccountLiquidationStarted(account);
            this._afterLiquidationStarted(account);
        }

        // The collateral is credited to the owner of the Account, not the Account itself.
        address accountOwner = _accountOwnerCache[account];
        uint256 debtAmount = getDebtAmount(account);

        AccountLib.CollateralLiquidation memory _result =
            _simulateCollateralLiquidation(accountOwner, debtAmount, debtToCover);

        // Transfer collateral to caller and their fee wallet
        _withdrawAssets(accountOwner, msg.sender, _result.collateralAmount - _result.bonusCollateral);
        _withdrawAssets(accountOwner, liquidationFeeTo, _result.bonusCollateral);

        // Transfer debt from sender to account.
        _lendAsset.safeTransferFrom(msg.sender, account, _result.actualDebtToLiquidate);
        IAccount(account).repay(_result.actualDebtToLiquidate);

        emit CollateralLiquidation(
            account, _result.collateralAmount, _result.bonusCollateral, _result.actualDebtToLiquidate
        );
    }

    function simulateCollateralLiquidation(
        address account,
        uint256 debtToCover
    )
        external
        view
        returns (AccountLib.CollateralLiquidation memory)
    {
        // The collateral is credited to the owner of the Account, not the Account itself.
        address accountOwner = _accountOwnerCache[account];
        uint256 debtAmount = getDebtAmount(account);

        return _simulateCollateralLiquidation(accountOwner, debtAmount, debtToCover);
    }

    function _simulateCollateralLiquidation(
        address accountOwner,
        uint256 debtAmount,
        uint256 debtToCover
    )
        public
        view
        returns (AccountLib.CollateralLiquidation memory)
    {
        uint256 actualDebtToLiquidate = debtToCover > debtAmount ? debtAmount : debtToCover;
        uint256 collateralBalance = balanceOfAssets(accountOwner);
        (uint256 collateralAmount, uint256 bonusCollateral, uint256 debtAmountNeeded) =
            _calculateAvailableCollateralToLiquidate(actualDebtToLiquidate, collateralBalance);

        if (debtAmountNeeded < actualDebtToLiquidate) {
            actualDebtToLiquidate = debtAmountNeeded;
        }

        return AccountLib.CollateralLiquidation({
            actualDebtToLiquidate: actualDebtToLiquidate,
            collateralAmount: collateralAmount,
            bonusCollateral: bonusCollateral
        });
    }

    function _calculateAvailableCollateralToLiquidate(
        uint256 debtToCover,
        uint256 collateralBalance
    )
        internal
        view
        returns (uint256 collateralAmount, uint256 bonusCollateral, uint256 debtAmountNeeded)
    {
        UD60x18 collateralPrice = ud(_getPriceProvider().getAssetPrice(address(_collateral)));

        uint256 maxCollateralAssetsToLiquidate = ud(debtToCover).mul(LIQUIDATION_BONUS).div(collateralPrice).unwrap();
        if (maxCollateralAssetsToLiquidate > collateralBalance) {
            collateralAmount = collateralBalance;
            debtAmountNeeded = collateralPrice.mul(ud(collateralAmount)).div(LIQUIDATION_BONUS).unwrap();
        } else {
            collateralAmount = maxCollateralAssetsToLiquidate;
            debtAmountNeeded = debtToCover;
        }

        UD60x18 debtAmountInCollateral = ud(debtAmountNeeded).div(collateralPrice);
        bonusCollateral = ud(collateralAmount).sub(debtAmountInCollateral).unwrap();
    }

    function _getAccountMaxLtv(address) internal view override returns (UD60x18) {
        return maxLtv;
    }

    /////////////////////////
    // Account Views
    /////////////////////////

    /// @notice Returns the Account contract address for a given owner, even if it hasn't been created yet.
    /// Returns address(0) if the account is not valid
    /// @param owner_  The owner of the Account contract
    function getAccount(address owner_) public view returns (address account) {
        account = _ownerAccountCache[owner_];
        if (account == address(0)) {
            account = Clones.predictDeterministicAddress(accountImplementation, _salt(owner_));
        }
    }

    function getAccountHealth(address account) public view override returns (AccountLib.Health memory health) {
        uint256 investmentValue = getTotalAccountValue(account);
        uint256 collateralValue = getTotalCollateralValue(account);
        uint256 debtAmount = getDebtAmount(account);
        uint256 equity = collateralValue + investmentValue;

        health = AccountLib.Health({
            isLiquidatable: false,
            isRisky: false,
            hasBadDebt: false,
            healthFactor: ZERO,
            debtAmount: debtAmount,
            collateralValue: collateralValue,
            investmentValue: investmentValue
        });

        if (debtAmount > 0 && equity > 0) {
            health.healthFactor = ud(equity).div(ud(debtAmount));
            health.isRisky = health.healthFactor < riskThreshold;
            health.isLiquidatable = health.healthFactor < liquidationThreshold;
        } else if (debtAmount > 0) {
            health.hasBadDebt = true;
        }
    }

    /// @dev The nontransferrable collateral vault shares are assigned to the owner of the account so we base
    /// @dev the value
    function getTotalCollateralValue(address account) public view override returns (uint256 totalValue) {
        address owner = _accountOwnerCache[account];
        uint256 assets = balanceOfAssets(owner);
        uint256 price = _getPriceProvider().getAssetPrice(address(_collateral));
        totalValue = (assets * price) / (10 ** _collateralAssetDecimals);
    }
}
