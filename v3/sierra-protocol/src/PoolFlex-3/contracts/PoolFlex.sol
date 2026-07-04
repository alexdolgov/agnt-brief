// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./interfaces/IPoolFlex.sol";
import "./interfaces/IVault.sol";

import "./interfaces/IPoolRegistry.sol";
import "./interfaces/IServiceConfigurationV3.sol";
import "./interfaces/IPoolAccessControl.sol";
import "./factories/interfaces/IPoolAccessControlFactory.sol";

import "./factories/interfaces/IBusinessDayRegistryFactory.sol";
import "./controllers/interfaces/IWithdrawDepositControllerFlex.sol";
import "./controllers/interfaces/IPoolControllerFlex.sol";
import "./factories/interfaces/IWithdrawDepositControllerFactoryFlex.sol";
import "./factories/interfaces/IPoolControllerFactoryFlex.sol";
import "./factories/interfaces/IVaultFactory.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {IERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {SafeERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import {SafeMath} from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import "./libraries/PoolLibFlex.sol";

import "./upgrades/BeaconImplementation.sol";

/**
 * @title Liquidity pool for Perimeter.
 * @dev Used through a beacon proxy.
 */

contract PoolFlex is IPoolFlex, ERC20Upgradeable, BeaconImplementation {
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using SafeMath for uint256;
    using EnumerableSet for EnumerableSet.AddressSet;
    /**
     * @dev The reference to the access control contract
     */
    IPoolAccessControl public poolAccessControl;
    uint256 private todo = 666;
    IPoolType private _poolType;
    event PoolCreated();

    event PoolDeposit(
        address indexed lender,
        uint256 assets,
        uint256 shares,
        uint256 transferInDayTimestamp
    );

    event RedeemRequested(
        address indexed lender,
        uint256 assets,
        uint256 shares
    );
    event RedeemReleased(
        address indexed lender,
        uint256 shares,
        uint256 assets
    );
    event RepayLoanToLender(
        address indexed lender,
        uint256 indexed eventId,
        uint256 shares,
        uint256 assets
    );
    event RepayToPoolProcessed(
        address indexed lender,
        uint256 indexed eventId,
        uint256 shares,
        uint256 assets
    );
    event Redeem(address indexed lender, uint256 shares, uint256 assets);

    /**
     * @dev Reference to the global service configuration.
     */
    IServiceConfigurationV3 private _serviceConfiguration;

    /**
     * @dev Reference to the underlying liquidity asset for the pool.
     */
    IERC20Upgradeable private _liquidityAsset;

    /**
     * @dev Various accounting statistics updated throughout the pool lifetime.
     */
    IPoolAccountingsFlex private _accountings;

    /**
     * @dev Reference to the withdraw controller for the pool.
     */
    IWithdrawDepositControllerFlex public withdrawDepositController;

    /**
     * @dev Reference to the admin's controller for the pool.
     */
    IPoolControllerFlex public poolController;

    IBusinessDayRegistry public businessDayRegistry;

    /**
     * @inheritdoc IPoolBase
     */
    uint256 public activatedAt;

    error ZeroDeposit(uint256, uint256, address);
    error ExceedsMaxDeposit(uint256, uint256, address);
    error ExcessWithdraw(uint256, uint256, uint256);
    error NotPoolController();
    error NotWithdrawController();
    error NotLender();
    error NotBorrowerManager();
    error NotPoolAdmin();
    error PoolNotActive();
    error InvalidAccess();
    error InvalidLoan();
    error PoolInvalidState();
    error PoolPaused();
    error TransferDisabled();
    error AccuralCalledTooEarly(uint256, uint256);
    error ExcessFeePayment();
    error InvalidPoolSetting();
    error InvalidRepayment();
    /**
     * @dev Modifier to ensure only the PoolController calls a method.
     */
    modifier onlyPoolController() {
        if (msg.sender != address(poolController)) revert NotPoolController();
        _;
    }

    /**
     * @dev Modifier that checks that the caller is a pool lender
     */
    modifier onlyLenderWithPPT() {
        if (balanceOf(msg.sender) <= 0) revert NotLender();

        _;
    }

    /**
     * @dev Modifier to check that the pool has ever been activated
     */
    modifier onlyActivatedPool() {
        if (activatedAt == 0) revert PoolNotActive();
        _;
    }
    modifier onlyWithdrawController() {
        if (msg.sender != address(withdrawDepositController))
            revert NotWithdrawController();
        _;
    }
    modifier onlyAutomationOrAdmin() {
        if (
            !_serviceConfiguration.isAutomation(msg.sender) &&
            !_serviceConfiguration.isPoolAdmin(msg.sender)
        ) revert NotPoolAdmin();
        _;
    }
    /**
     * @dev Modifier to check that the protocol is not paused
     */
    modifier onlyNotPaused() {
        if (_serviceConfiguration.paused() == true) revert PoolPaused();
        _;
    }

    /**
     * @dev Modifier that checks that the pool is Initialized or Active
     */
    modifier atState(IPoolLifeCycleStateFlex state_) {
        if (poolController.state() != state_) revert PoolInvalidState();
        _;
    }

    function version() public pure returns (uint16) {
        return 256 * 1 + 0;
    }

    function decimals() public pure override returns (uint8) {
        return 6;
    }

    function updatePoolData() internal {
        IPoolRegistry(_serviceConfiguration.getPoolRegistry()).updatePoolData(
            address(this)
        );
    }

    modifier onlyPermittedLender() {
        if (!poolAccessControl.isAllowed(msg.sender)) revert NotLender();

        if (
            IPoolControllerFlex(poolController).borrowerManagerAddr() ==
            msg.sender
        ) revert NotLender();

        _;
    }
    modifier onlyBorrowerManger() {
        if (
            !_serviceConfiguration.isBorrower(msg.sender) ||
            IPoolControllerFlex(poolController).borrowerManagerAddr() !=
            msg.sender
        ) revert NotBorrowerManager();

        _;
    }

    modifier onlyPoolAdmin() {
        if (
            !_serviceConfiguration.isPoolAdmin(msg.sender) ||
            IPoolControllerFlex(poolController).admin() != msg.sender
        ) revert NotPoolAdmin();

        _;
    }

    function isPermittedLender(address receiver) public view returns (bool) {
        return poolAccessControl.isAllowed(receiver);
    }

    /**
     * @dev Initializer for Pool

     * @param poolSettings configurable settings for the pool
     * @param tokenName Name used for issued pool tokens
     * @param tokenSymbol Symbol used for issued pool tokens
     */
    function initialize(
        PoolAddressListFlex memory poolAddressListFlex,
        IPoolConfigurableSettingsFlex memory poolSettings,
        string memory tokenName,
        string memory tokenSymbol
    ) public initializer {
        __ERC20_init(tokenName, tokenSymbol);
        _serviceConfiguration = IServiceConfigurationV3(
            poolAddressListFlex.serviceConfiguration
        );
        _poolType = IPoolType.FlexRatePool;

        if (
            poolSettings.dailyOriginationFeeRate > 1e18 ||
            poolSettings.originationFee > 100000 ||
            poolSettings.maxCapacity < 1e6 ||
            poolSettings.maxCapacity > 1e24 ||
            poolSettings.borrowerManagerAddr == address(0) ||
            poolSettings.borrowerWalletAddr == address(0) ||
            poolSettings.closeOfDepositTime > 1 days ||
            poolSettings.closeOfWithdrawTime > 1 days ||
            poolSettings.transferInDays > 5 ||
            poolSettings.transferOutDays > 5
        ) {
            revert InvalidPoolSetting();
        }

        poolSettings.dailyOriginationFeeRate = PoolLibFlex.annualAPRToDailyRate(
            poolSettings.originationFee,
            ((poolSettings.originationFee * 1e18) / 1e4 / 400)
        );

        if (!_serviceConfiguration.isPoolAdmin(poolAddressListFlex.poolAdmin)) {
            revert InvalidAccess();
        }
        _liquidityAsset = IERC20Upgradeable(poolAddressListFlex.liquidityAsset);

        // Build the withdraw controller
        // Build the admin controller
        poolController = IPoolControllerFlex(
            IPoolControllerFactoryFlex(
                poolAddressListFlex.poolControllerFactoryFlex
            ).createController(
                    address(this),
                    poolAddressListFlex.serviceConfiguration,
                    poolAddressListFlex.poolAdmin,
                    poolAddressListFlex.liquidityAsset,
                    poolSettings
                )
        );
        poolAccessControl = IPoolAccessControl(
            IPoolAccessControlFactory(
                poolAddressListFlex.poolAccessControlFactory
            ).create(address(this))
        );
        IBusinessDayRegistry _businessDayRegistry = IBusinessDayRegistry(
            IBusinessDayRegistryFactory(
                poolAddressListFlex.businessDayRegistryFactory
            ).create(address(this))
        );
        businessDayRegistry = _businessDayRegistry;

        uint256 lastDayAccrued;
        if (block.timestamp % 1 days < poolController.closeOfDepositTime()) {
            lastDayAccrued = _businessDayRegistry.toMidnight(
                uint64(block.timestamp) - 1 days
            );
        } else {
            lastDayAccrued = _businessDayRegistry.toMidnight(
                uint64(block.timestamp)
            );
        }

        _accountings = IPoolAccountingsFlex({
            interestRate: 0,
            dailyInterestRate: 0,
            totalPrincipalEarningInterest: 0,
            totalInterestAccrued: 0,
            totalAssetsDeposited: 0,
            totalAssetsWithdrawn: 0,
            exchangeRate: 1e18,
            lastDayAccrued: lastDayAccrued,
            totalFees: 0,
            feesOutstanding: 0,
            interstRateSetTime: 0
        });

        withdrawDepositController = IWithdrawDepositControllerFlex(
            IWithdrawDepositControllerFactoryFlex(
                poolAddressListFlex.withdrawDepositControllerFactoryFlex
            ).createController(
                    address(this),
                    address(poolAddressListFlex.vaultFactory),
                    address(poolSettings.borrowerWalletAddr)
                )
        );

        // Allow the contract to move infinite amount of vault liquidity assets
        _liquidityAsset.safeApprove(address(this), type(uint256).max);
        emit PoolCreated();
    }

    /**
     * @inheritdoc IPoolBase
     */
    function serviceConfiguration()
        public
        view
        returns (IServiceConfigurationV3)
    {
        return _serviceConfiguration;
    }

    function poolType() external view returns (IPoolType) {
        return _poolType;
    }

    /**
     * @inheritdoc IPoolFlex
     */
    function settings()
        public
        view
        returns (IPoolConfigurableSettingsFlex memory poolSettings)
    {
        return poolController.settings();
    }

    function nonBusinessDays() public view returns (uint64[] memory) {
        return businessDayRegistry.nonBusinessDays();
    }

    function updateNonBusinessDays(
        uint64[] memory _timestamps
    ) external onlyPoolAdmin {
        updatePoolData();
        return businessDayRegistry.updateNonBusinessDays(_timestamps);
    }

    function state() public view returns (IPoolLifeCycleStateFlex) {
        return poolController.state();
    }

    /**
     * @inheritdoc IPoolBase
     */
    function admin() external view override returns (address) {
        return poolController.admin();
    }

    function borrowerManagerAddr() external view override returns (address) {
        return poolController.borrowerManagerAddr();
    }

    function borrowerWalletAddr() external view override returns (address) {
        return poolController.borrowerWalletAddr();
    }

    function transferInDays() external view returns (uint256) {
        return poolController.transferInDays();
    }

    function transferOutDays() external view returns (uint256) {
        return poolController.transferOutDays();
    }

    /**
     * @inheritdoc IPoolFlex
     */
    function onActivated() external onlyPoolController {
        updatePoolData();
        activatedAt = block.timestamp;
    }

    /**
     * @inheritdoc IPoolFlex
     */
    function accountings()
        external
        view
        override
        returns (IPoolAccountingsFlex memory)
    {
        return _accountings;
    }

    /**
     * @inheritdoc IPoolFlex
     */
    function totalAvailableAssets() public view returns (uint256 assets) {
        return
            _accountings.totalPrincipalEarningInterest +
            withdrawDepositController.totalAssetsTransitioningIn();
    }

    function interestRate() public view override returns (uint256 assets) {
        return _accountings.interestRate;
    }

    function annualAPRToDailyRate(
        uint256 annualAPR,
        uint256 estimatedDailyRate
    ) external pure returns (uint256 _dailyInterestRate) {
        return PoolLibFlex.annualAPRToDailyRate(annualAPR, estimatedDailyRate);
    }

    function setDailyInterestRate(
        uint256 _interestRate,
        uint256 _estimatedDailyRate
    ) public onlyBorrowerManger {
        uint256 _dailyInterestRate = PoolLibFlex.annualAPRToDailyRate(
            _interestRate,
            _estimatedDailyRate
        );
        _accountings.dailyInterestRate = _dailyInterestRate;
        _accountings.interestRate = _interestRate;
        _accountings.interstRateSetTime = block.timestamp;
        updatePoolData();
    }

    function dailyInterestAccural() public onlyAutomationOrAdmin {
        uint256 midnight = uint256(
            block.timestamp - (block.timestamp % 1 days)
        );

        if (block.timestamp % 1 days < poolController.closeOfDepositTime()) {
            midnight = midnight - 1 days;
        }

        if (midnight <= _accountings.lastDayAccrued) {
            revert AccuralCalledTooEarly(midnight, _accountings.lastDayAccrued);
        }

        uint256 numberOfDaysToAccrue = (midnight -
            _accountings.lastDayAccrued) / 1 days;

        uint256 currentDay = _accountings.lastDayAccrued;

        for (uint256 i = 0; i < numberOfDaysToAccrue; i++) {
            currentDay = currentDay + 1 days;
            _accountings.exchangeRate = _accountings
                .exchangeRate
                .mul(_accountings.dailyInterestRate + 1e18)
                .div(1e18);

            uint256 todaysInterest = (_accountings
                .totalPrincipalEarningInterest *
                (_accountings.dailyInterestRate)) / 1e18;
            uint256 todaysFees = (_accountings.totalPrincipalEarningInterest *
                (poolController.dailyOriginationFeeRate())) / 1e18;
            _accountings.totalPrincipalEarningInterest += todaysInterest;
            _accountings.totalInterestAccrued += todaysInterest;
            _accountings.totalFees += todaysFees;
            _accountings.feesOutstanding += todaysFees;

            uint256 inflows = withdrawDepositController.dailyInterestAccural(
                currentDay
            );

            _accountings.totalPrincipalEarningInterest += inflows;
        }

        uint256 newlastDayAccrued = uint256(
            block.timestamp - (block.timestamp % 1 days)
        );

        if (block.timestamp % 1 days < poolController.closeOfDepositTime()) {
            newlastDayAccrued = newlastDayAccrued - 1 days;
        }

        _accountings.lastDayAccrued = newlastDayAccrued;
        updatePoolData();
    }

    function feesPaidDown(uint256 paidAmount) public onlyPoolAdmin {
        if (paidAmount > _accountings.feesOutstanding) {
            revert ExcessFeePayment();
        }
        _accountings.feesOutstanding -= paidAmount;
        updatePoolData();
    }

    function applyDailyRate(uint256 principal) public view returns (uint256) {
        return (principal * (1e18 + _accountings.dailyInterestRate)) / 1e18;
    }

    /**
     * @inheritdoc IPoolFlex
     */
    function totalAvailableSupply()
        public
        view
        override
        returns (uint256 shares)
    {
        return
            totalSupply() -
            withdrawDepositController.totalSharesTransitioningIn() -
            withdrawDepositController.totalRequestedShares();
    }

    /**
     * @inheritdoc IPoolBase
     */
    function liquidityPoolAssets() public view returns (uint256 assets) {
        return
            _accountings.totalPrincipalEarningInterest +
            withdrawDepositController.totalAssetsTransitioningIn();
    }

    /**
     * @inheritdoc IRequestWithdrawable
     */
    function previewRedeemRequest(
        uint256 shares
    ) external view returns (uint256 assets) {
        assets = convertToAssets(shares);
    }

    /**
     * @inheritdoc IRequestWithdrawable
     */
    function previewWithdrawRequest(
        uint256 assets
    ) external view returns (uint256 shares) {
        shares = convertToShares(assets);
    }

    /**
     * @inheritdoc IRequestWithdrawable
     */
    function requestRedeem(
        uint256 shares
    )
        external
        onlyNotPaused
        onlyActivatedPool
        onlyPermittedLender
        onlyLenderWithPPT
        returns (uint256 assets)
    {
        assets = convertToAssets(shares);
        if (assets > _accountings.totalPrincipalEarningInterest) {
            assets = _accountings.totalPrincipalEarningInterest;
        }

        withdrawDepositController.performRequest(msg.sender, shares, assets);

        _accountings.totalPrincipalEarningInterest -= assets;

        updatePoolData();

        emit RedeemRequested(msg.sender, assets, shares);
    }

    /**
     * @inheritdoc IRequestWithdrawable
     */
    function maxRedeemRequest(
        address owner
    ) public view returns (uint256 maxShares) {
        maxShares = withdrawDepositController.maxRedeemRequest(owner);
    }

    /**
     * @inheritdoc IRequestWithdrawable
     */
    function maxWithdrawRequest(
        address owner
    ) public view returns (uint256 maxAssets) {
        maxAssets = convertToAssets(maxRedeemRequest(owner));
    }

    function exchangeRate()
        public
        view
        override
        returns (uint256 _exchangeRate)
    {
        _exchangeRate = _accountings.exchangeRate;
    }

    /*//////////////////////////////////////////////////////////////
                        ERC-4626 Methods
    //////////////////////////////////////////////////////////////*/

    function liquidityAssetAddr() public view returns (address) {
        return address(_liquidityAsset);
    }

    function totalAssets() public view returns (uint256) {
        return
            _accountings.totalPrincipalEarningInterest +
            withdrawDepositController.totalAssetsTransitioningIn();
    }

    function convertToShares(
        uint256 assets
    ) public view override returns (uint256 shares) {
        return (assets * 1e18) / exchangeRate();
    }

    function convertToAssets(
        uint256 shares
    ) public view override returns (uint256 assets) {
        return shares.mul(exchangeRate()).div(1e18);
    }

    function closeOfDepositTime() external view returns (uint256) {
        return poolController.closeOfDepositTime();
    }

    function closeOfWithdrawTime() external view returns (uint256) {
        return poolController.closeOfWithdrawTime();
    }

    function getPoolConfiguration()
        external
        view
        returns (IPoolConfigurationStateFlex memory)
    {
        return PoolLibFlex.getPoolFlexConfigurationState(address(this));
    }

    function getPoolOverview()
        external
        view
        returns (IPoolOverviewStateFlex memory)
    {
        return PoolLibFlex.getPoolFlexOverviewState(address(this));
    }

    function getPoolAccountState(
        address accountAddr
    ) external view returns (IPoolAccountStateFlex memory) {
        IPoolAccountStateFlex memory ret = PoolLibFlex.getPoolAccountState(
            address(this),
            accountAddr
        );

        return ret;
    }

    function maxDeposit(address owner) public view override returns (uint256) {
        if (
            _serviceConfiguration.paused() == true ||
            !isPermittedLender(owner) ||
            poolController.state() != IPoolLifeCycleStateFlex.Active
        ) {
            return 0;
        }

        return 1e18;
    }

    function topOffSharesDueToExchangeRateDecrease(
        address lender,
        uint256 catchupShares
    ) external onlyWithdrawController {
        _mint(lender, catchupShares);
    }

    function deposit(
        uint256 assets,
        address lender
    )
        public
        override
        onlyNotPaused
        atState(IPoolLifeCycleStateFlex.Active)
        onlyPermittedLender
        returns (uint256 shares, uint256 transferInDayTimestamp)
    {
        if (
            poolController.state() ==
            IPoolLifeCycleStateFlex.DisruptionOrDefault ||
            msg.sender != lender
        ) revert PoolInvalidState();
        if (assets > maxDeposit(lender)) {
            revert ExceedsMaxDeposit(maxDeposit(lender), assets, lender);
        }
        if (assets == 0) {
            revert ZeroDeposit(maxDeposit(lender), assets, lender);
        }
        uint256 inflows;

        (inflows, shares, transferInDayTimestamp) = withdrawDepositController
            .deposit(
                lender,
                assets,
                _accountings.exchangeRate,
                _accountings.dailyInterestRate
            );

        _accountings.totalAssetsDeposited += assets;

        _liquidityAsset.safeTransferFrom(msg.sender, address(this), assets);
        _mint(lender, shares);
        _liquidityAsset.safeTransferFrom(
            address(this),
            borrowerVaultAddr(),
            assets
        );

        withdrawDepositController.drawDownToBorrowerWallet(assets);
        _accountings.totalPrincipalEarningInterest += inflows;
        emit PoolDeposit(lender, assets, shares, transferInDayTimestamp);
    }

    /**
     * @dev Redeem a number of shares for a given number of assets. This method
     * will transfer `assets` from the vault to the `receiver`, and burn `shares`
     * from `owner`.
     */
    function _performWithdrawTransfer(
        address owner,
        uint256 shares,
        uint256 assets
    ) internal {
        // Transfer assets

        _liquidityAsset.safeTransferFrom(address(this), owner, assets);

        // Burn the shares
        _burn(owner, shares);

        emit Withdraw(owner, owner, owner, assets, shares);
        updatePoolData();
    }

    /*//////////////////////////////////////////////////////////////
                            ERC-20 Overrides
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Disables Perimeter Pool Token transfers.
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._beforeTokenTransfer(from, to, amount);

        if (to != address(0) && from != address(0)) {
            if (
                !poolAccessControl.isAllowed(from) ||
                !poolAccessControl.isAllowed(to)
            ) {
                revert TransferDisabled();
            }
            if (maxRedeemRequest(from) < amount) {
                revert TransferDisabled();
            }
        }

        if (from != address(0) && to != address(0)) {
            uint256 assetAmount = convertToAssets(amount);
            withdrawDepositController.tokenTransfer(from, to, assetAmount);
        }
    }

    function totalAssetsDueForWithdraws() public view returns (uint256) {
        return withdrawDepositController.totalAssetsDueForWithdraws();
    }

    function borrowerVaultAddr() public view override returns (address) {
        return withdrawDepositController.borrowerVaultAddr();
    }

    function withdrawEvents()
        public
        view
        returns (IPoolLenderWithdrawEvent[] memory)
    {
        return withdrawDepositController.withdrawEvents();
    }

    function releaseWithdrawal(
        uint256 eventId
    ) public onlyPoolAdmin returns (IPoolLenderWithdrawEvent memory ev) {
        ev = withdrawDepositController.releaseWithdrawal(eventId);
        emit RepayLoanToLender(
            ev.lender,
            eventId,
            ev.requestedShares,
            ev.requestedAssets
        );

        _performWithdrawTransfer(
            ev.lender,
            ev.requestedShares,
            ev.requestedAssets
        );
        _accountings.totalAssetsWithdrawn += ev.requestedAssets;
        updatePoolData();
    }

    function repayLoans(
        uint256 assets,
        uint256 eventId
    ) public onlyBorrowerManger {
        IPoolLenderWithdrawEvent[]
            memory _withdrawEvents = withdrawDepositController.withdrawEvents();
        IPoolLenderWithdrawEvent memory ev;
        bool isFound = false;

        for (uint i = 0; i < _withdrawEvents.length; i++) {
            if (_withdrawEvents[i].eventId == eventId) {
                ev = _withdrawEvents[i];
                isFound = true;
            }
        }
        if (!isFound || ev.requestedAssets > assets) {
            revert InvalidRepayment();
        }

        withdrawDepositController.repayLoans(assets);

        emit RepayToPoolProcessed(
            ev.lender,
            eventId,
            ev.requestedShares,
            ev.requestedAssets
        );

        updatePoolData();
    }
}
