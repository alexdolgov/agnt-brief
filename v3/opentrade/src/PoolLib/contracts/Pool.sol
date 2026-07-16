// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "./interfaces/ILoan.sol";
import "./interfaces/IPool.sol";
import "./interfaces/IVault.sol";
import "./interfaces/IServiceConfiguration.sol";

import "./interfaces/IPoolRegistry.sol";
import "./interfaces/IPoolAccessControl.sol";
import "./factories/interfaces/IPoolAccessControlFactory.sol";
import "./controllers/interfaces/IWithdrawController.sol";
import "./controllers/interfaces/IPoolController.sol";
import "./factories/interfaces/IWithdrawControllerFactory.sol";
import "./factories/interfaces/IPoolControllerFactory.sol";
import "./factories/interfaces/IVaultFactory.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {IERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {SafeERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import {SafeMath} from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import "./libraries/PoolLib.sol";
import "./upgrades/BeaconImplementation.sol";

/**
 * @title Liquidity pool for Perimeter.
 * @dev Used through a beacon proxy.
 */

contract Pool is IPool, ERC20Upgradeable, BeaconImplementation {
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using SafeMath for uint256;
    using EnumerableSet for EnumerableSet.AddressSet;
    /**
     * @dev The reference to the access control contract
     */
    IPoolAccessControl public poolAccessControl;

    event PoolCreated();
    event LoanCreated(address indexed loan);

    event PoolDeposit(
        address indexed lender,
        address indexed loan,
        uint256 assets,
        uint256 shares
    );
    event LoanApproved(address indexed loan);
    event LoanRolloverInitiated(
        address indexed loan,
        address indexed priorLoan,
        uint256 assetsFromPriorToNextLoan,
        uint256 assetsFromPool,
        uint256 assetToAReturnToPool
    );

    event LoanRolloverFinalized(
        address indexed loan,
        address indexed priorLoan
    );

    event LoanMatured(address indexed loan);

    event LoanRepayment(
        address indexed loan,
        uint256 feeAmount,
        uint256 assetsReturnedToPool
    );

    event RedeemRequested(
        address indexed lender,
        address indexed loan,
        uint256 assets,
        uint256 shares
    );
    event RedeemReleased(
        address indexed lender,
        address indexed loan,
        uint256 shares,
        uint256 assets
    );
    event Redeem(
        address indexed lender,
        address indexed loan,
        uint256 shares,
        uint256 assets
    );
    event WithdrawEarlyRequested(
        address indexed lender,
        address indexed loan,
        uint256 shares,
        uint256 principal
    );
    event WithdrawEarlyAccepted(
        address indexed lender,
        address indexed loan,
        uint256 shares,
        uint256 principal
    );
    event WithdrawEarlyRepay(
        address indexed lender,
        address indexed loan,
        uint256 shares,
        uint256 principal,
        uint256 repayment,
        uint256 fees
    );
    event RequestFeePaid(address indexed lender, uint256 feeShares);
    event WithdrawFeeVault(address indexed receiver, uint256 amount);

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
    IPoolAccountings private _accountings;

    /**
     * @dev Reference to the withdraw controller for the pool.
     */
    IWithdrawController public withdrawController;

    /**
     * @dev Reference to the admin's controller for the pool.
     */
    IPoolController public poolController;
    address public createdLoan;
    address public activeLoan;
    address public requestedLoan;
    address public maturedLoan;
    EnumerableSet.AddressSet private _settledLoans;

    /**
     * @inheritdoc IPoolBase
     */
    uint256 public activatedAt;

    IPoolRegistry public poolRegistry;
    IPoolType private _poolType;

    error NotPoolController();
    error NotLender();
    error NotBorrowerManager();
    error PoolNotActive();
    error InvalidAccess();
    error InvalidLoan();
    error PoolInvalidState();
    error PoolPaused();
    error TransferDisabled();
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
    modifier atState(IPoolLifeCycleState state_) {
        if (poolController.state() != state_) revert PoolInvalidState();
        _;
    }

    function version() public pure returns (uint16) {
        return 256 * 1 + 0;
    }

    function decimals() public pure override returns (uint8) {
        return 6;
    }

    function poolType() external view returns (IPoolType) {
        return _poolType;
    }

    /*//////////////////////////////////////////////////////////////
                       LOAN SET OPERATIONS
//////////////////////////////////////////////////////////////*/

    function rolloverAndFinalizeApr(
        uint256 _apr
    ) external onlyNotPaused onlyBorrowerManger {
        if (activeLoan != address(0)) {
            ILoan(activeLoan).rolloverMaturedLoan();
            emit LoanMatured(msg.sender);
            maturedLoan = activeLoan;
        }

        ILoan(requestedLoan).rolloverAndFinalizeApr(_apr);
        activeLoan = requestedLoan;
        _accountings.totalAvailableAssets += ILoan(activeLoan).interest();
        requestedLoan = address(0);
        emit LoanRolloverFinalized(activeLoan, maturedLoan);
        updatePoolData();
    }

    function settledLoans() external view returns (address[] memory) {
        return _settledLoans.values();
    }

    function loanCreated(address loan) external {
        if (msg.sender != serviceConfiguration().getLoanFactory())
            revert InvalidAccess();

        emit LoanCreated(loan);
        createdLoan = loan;
        updatePoolData();
    }

    function updatePoolData() internal {
        poolRegistry.updatePoolData(address(this));
    }

    function approveLoanForPool(
        address loan
    ) external onlyNotPaused onlyPoolController {
        if (requestedLoan != address(0) || ILoan(loan).pool() != address(this))
            revert InvalidLoan();

        ILoan(loan).approve();
        emit LoanApproved(loan);
        requestedLoan = loan;
        createdLoan = address(0);
        updatePoolData();
    }

    function currentExpectedInterest()
        external
        view
        override
        returns (uint256)
    {
        if (activeLoan != address(0)) {
            return ILoan(activeLoan).interest();
        }
        return 0;
    }

    modifier onlyDepositWindow() {
        if (
            requestedLoan == address(0) ||
            !ILoan(requestedLoan).inDepositWindow()
        ) revert InvalidLoan();

        _;
    }
    modifier onlyPermittedLender() {
        if (!poolAccessControl.isAllowed(msg.sender)) revert NotLender();

        if (IPoolController(poolController).borrowerManager() == msg.sender)
            revert NotLender();

        _;
    }
    modifier onlyBorrowerManger() {
        if (
            IPoolController(poolController).borrowerManager() != msg.sender ||
            !poolAccessControl.isAllowed(msg.sender)
        ) revert NotBorrowerManager();

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
        PoolAddressList memory poolAddressList,
        IPoolConfigurableSettings memory poolSettings,
        string memory tokenName,
        string memory tokenSymbol
    ) public initializer {
        __ERC20_init(tokenName, tokenSymbol);
        _serviceConfiguration = IServiceConfigurationV3(
            poolAddressList.serviceConfiguration
        );
        _poolType = IPoolType.TermPool;

        _liquidityAsset = IERC20Upgradeable(poolAddressList.liquidityAsset);

        // Build the withdraw controller
        // Build the admin controller
        poolController = IPoolController(
            IPoolControllerFactory(poolAddressList.poolControllerFactory)
                .createController(
                    address(this),
                    poolAddressList.serviceConfiguration,
                    poolAddressList.poolAdmin,
                    poolAddressList.liquidityAsset,
                    poolSettings
                )
        );
        poolAccessControl = IPoolAccessControl(
            IPoolAccessControlFactory(poolAddressList.poolAccessControlFactory)
                .create(address(this))
        );

        withdrawController = IWithdrawController(
            IWithdrawControllerFactory(
                poolAddressList.withdrawControllerFactory
            ).createController(
                    address(this),
                    address(poolAddressList.vaultFactory),
                    address(poolSettings.borrowerWalletAddress)
                )
        );

        // Allow the contract to move infinite amount of vault liquidity assets
        _liquidityAsset.safeApprove(address(this), type(uint256).max);
        poolRegistry = IPoolRegistry(poolAddressList.poolRegistry);
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

    /**
     * @inheritdoc IPool
     */
    function settings()
        public
        view
        returns (IPoolConfigurableSettings memory poolSettings)
    {
        return poolController.settings();
    }

    /**
     * @inheritdoc IPool
     */
    function state() public view returns (IPoolLifeCycleState) {
        return poolController.state();
    }

    /**
     * @inheritdoc IPoolBase
     */
    function admin() external view override returns (address) {
        return poolController.admin();
    }

    function borrowerManagerAddr() external view override returns (address) {
        return poolController.borrowerManager();
    }

    function borrowerWalletAddr() external view override returns (address) {
        return poolController.borrowerWalletAddress();
    }

    /**
     * @inheritdoc IPool
     */
    function accountings()
        external
        view
        override
        returns (IPoolAccountings memory)
    {
        return _accountings;
    }

    /**
     * @inheritdoc IPool
     */
    function onActivated() external onlyPoolController {
        activatedAt = block.timestamp;
    }

    function liquidityAssetAddr() public view returns (address) {
        return address(_liquidityAsset);
    }

    function asset() public view returns (address) {
        return address(_liquidityAsset);
    }

    function initiateRollover(
        address loan,
        address priorLoan
    ) external onlyNotPaused onlyPoolController {
        if (!(loan == requestedLoan && priorLoan == activeLoan))
            revert InvalidLoan();

        uint256 _outstandingLoanPrincipals;
        uint256 assetsFromPool;
        uint256 assetsFromPriorToNextLoan;
        uint256 totalSupply_;
        uint256 assetToAReturnToPool;
        (
            _outstandingLoanPrincipals,
            assetsFromPool,
            assetsFromPriorToNextLoan,
            totalSupply_,
            assetToAReturnToPool
        ) = PoolLib.calculateRollover(
            priorLoan,
            address(_liquidityAsset),
            address(this),
            _accountings.outstandingLoanPrincipals
        );

        _liquidityAsset.safeApprove(loan, assetsFromPool);

        ILoan(loan).fundRollover(
            assetsFromPool,
            assetsFromPriorToNextLoan,
            totalSupply_,
            priorLoan
        );
        if (priorLoan != address(0)) {
            ILoan(priorLoan).rolloverAllocation(
                assetsFromPriorToNextLoan,
                assetToAReturnToPool
            );
        }

        _accountings.outstandingLoanPrincipals = _outstandingLoanPrincipals;

        emit LoanRolloverInitiated(
            loan,
            priorLoan,
            assetsFromPriorToNextLoan,
            assetsFromPool,
            assetToAReturnToPool
        );
        updatePoolData();
    }

    function completeRolloverNetPayment(
        address settlingLoan
    ) external onlyNotPaused onlyPoolController {
        uint256 feeVaultAmount;
        uint256 assetsReturnedToPool;
        uint256 interestAccrued;
        (feeVaultAmount, assetsReturnedToPool, interestAccrued) = ILoan(
            settlingLoan
        ).completeRolloverNetPayment();

        if (maturedLoan != settlingLoan) revert InvalidLoan();

        maturedLoan = address(0);
        _settledLoans.add(settlingLoan);
        _accountings.outstandingLoanPrincipals += interestAccrued;
        _accountings.outstandingLoanPrincipals -= assetsReturnedToPool;
        emit LoanRepayment(settlingLoan, feeVaultAmount, assetsReturnedToPool);

        address receiver = serviceConfiguration().getPoolAdminWallet();
        uint256 amount = _liquidityAsset.balanceOf(
            withdrawController.feeVault()
        );
        withdrawController.withdrawFeeVault(amount, receiver);
        emit WithdrawFeeVault(receiver, amount);
        updatePoolData();
    }

    function redemptionState()
        public
        view
        returns (IRedemptionState memory _redemptionState)
    {
        return withdrawController.redemptionState();
    }

    function releaseRolloverRedemption(
        address owner
    ) external onlyPoolController {
        uint256 shares;
        uint256 assets;
        (shares, assets) = withdrawController.releaseRolloverRedemption(owner);
        emit RedeemReleased(owner, maturedLoan, shares, assets);
        updatePoolData();
    }

    /**
     * @inheritdoc IPool
     */
    function totalAvailableAssets() public view returns (uint256 assets) {
        return _accountings.totalAvailableAssets;
    }

    /**
     * @inheritdoc IPool
     */
    function totalAvailableSupply()
        public
        view
        override
        returns (uint256 shares)
    {
        shares = PoolLib.calculateTotalAvailableShares(
            address(this),
            withdrawController.totalRedeemableShares()
        );
    }

    /**
     * @inheritdoc IPoolBase
     */
    function liquidityPoolAssets() public view returns (uint256 assets) {
        uint256 interest = 0;
        if (activeLoan != address(0)) {
            interest = ILoan(activeLoan).interest();
        }

        return
            PoolLib.calculateTotalAssets(
                address(_liquidityAsset),
                address(this),
                0,
                interest
            );

        //        return
        //            _accountings.totalAvailableAssets -
        //            withdrawController.totalWithdrawableAssets();
    }

    function reschedule(
        address loan,
        uint256 accrualStartDayTimestamp,
        uint256 transferInWindowDurationDays,
        uint256 transferOutWindowDurationDays,
        uint256 durationDays
    ) external override onlyPoolController onlyNotPaused {
        if (!(activeLoan == loan || requestedLoan == loan))
            revert InvalidLoan();

        ILoan(loan).reschedule(
            accrualStartDayTimestamp,
            transferInWindowDurationDays,
            transferOutWindowDurationDays,
            durationDays
        );
        updatePoolData();
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

        withdrawController.performRequest(msg.sender, shares, assets);

        emit RedeemRequested(msg.sender, activeLoan, assets, shares);
        updatePoolData();
    }

    /**
     * @inheritdoc IRequestWithdrawable
     */
    function maxRedeemRequest(
        address owner
    ) public view returns (uint256 maxShares) {
        maxShares = withdrawController.maxRedeemRequest(owner);
    }

    /**
     * @inheritdoc IRequestWithdrawable
     */
    function maxWithdrawRequest(
        address owner
    ) public view returns (uint256 maxAssets) {
        maxAssets = convertToAssets(maxRedeemRequest(owner));
    }

    /*//////////////////////////////////////////////////////////////
                        ERC-4626 Methods
    //////////////////////////////////////////////////////////////*/

    function totalAssets() public view returns (uint256) {
        uint256 interest = 0;
        if (activeLoan != address(0)) {
            interest = ILoan(activeLoan).interest();
        }

        return
            PoolLib.calculateTotalAssets(
                address(_liquidityAsset),
                address(this),
                _accountings.outstandingLoanPrincipals,
                interest
            );
    }

    function convertToShares(
        uint256 assets
    ) public view override returns (uint256 shares) {
        if (activeLoan == address(0)) {
            shares = assets;
        } else {
            shares = assets.mul(1e18).div(exchangeRateAtMaturity());
        }
    }

    function exchangeRateAtDeposit()
        public
        view
        override
        returns (uint256 _exchangeRateAtDeposit)
    {
        if (activeLoan != address(0)) {
            ILoan loan = ILoan(activeLoan);
            _exchangeRateAtDeposit = loan.exchangeRateAtDeposit();
        } else {
            _exchangeRateAtDeposit = 1e18;
        }
    }

    function exchangeRateAtMaturity()
        public
        view
        override
        returns (uint256 _exchangeRateAtMaturity)
    {
        if (activeLoan != address(0)) {
            ILoan loan = ILoan(activeLoan);
            _exchangeRateAtMaturity = loan.exchangeRateAtMaturity();
        } else {
            _exchangeRateAtMaturity = 1e18;
        }
    }

    function convertToAssets(
        uint256 shares
    ) public view override returns (uint256 assets) {
        if (activeLoan == address(0)) {
            assets = shares;
        } else {
            assets = exchangeRateAtMaturity().mul(shares).div(1e18);
        }
    }

    function closeOfBusinessTime() external view returns (uint256) {
        return poolController.closeOfBusinessTime();
    }

    function maxDeposit(address owner) public view override returns (uint256) {
        if (
            _serviceConfiguration.paused() == true ||
            !isPermittedLender(owner) ||
            poolController.state() != IPoolLifeCycleState.Active
        ) {
            return 0;
        }
        return
            PoolLib.calculateMaxDeposit(
                poolController.state(),
                settings().maxCapacity,
                totalAvailableAssets()
            );
    }

    function deposit(
        uint256 assets,
        address lender
    )
        public
        virtual
        override
        onlyNotPaused
        atState(IPoolLifeCycleState.Active)
        onlyPermittedLender
        onlyDepositWindow
        returns (uint256 shares)
    {
        if (
            poolController.state() == IPoolLifeCycleState.DisruptionOrDefault ||
            msg.sender != lender
        ) revert PoolInvalidState();

        shares = PoolLib.executeDeposit(
            liquidityAssetAddr(),
            address(this),
            lender,
            assets,
            convertToShares(assets),
            maxDeposit(lender),
            _mint,
            _accountings
        );

        emit PoolDeposit(lender, requestedLoan, assets, shares);
        updatePoolData();
    }

    function maxWithdraw(
        address owner
    ) public view override returns (uint256 assets) {
        if (
            _serviceConfiguration.paused() == true || !isPermittedLender(owner)
        ) {
            return 0;
        }
        assets = withdrawController.maxWithdraw(owner);
    }

    function withdraw(
        uint256 assets,
        address receiver,
        address owner
    )
        public
        virtual
        onlyNotPaused
        onlyPermittedLender
        returns (uint256 shares)
    {
        if (receiver != owner || receiver != msg.sender) revert InvalidAccess();

        // Update the withdraw state
        shares = withdrawController.withdraw(owner, assets);

        // transfer assets, and burn the shares
        _performWithdrawTransfer(owner, shares, assets);
        updatePoolData();
    }

    function withdrawFeeVault(
        uint256 amount,
        address receiver
    ) external onlyNotPaused onlyPoolController {
        withdrawController.withdrawFeeVault(amount, receiver);
        emit WithdrawFeeVault(receiver, amount);
        updatePoolData();
    }

    function maxRedeem(
        address owner
    ) public view override returns (uint256 maxShares) {
        if (
            _serviceConfiguration.paused() == true || !isPermittedLender(owner)
        ) {
            return 0;
        }
        maxShares = withdrawController.maxRedeem(owner);
    }

    function redeem(
        uint256 shares,
        address receiver,
        address owner
    )
        public
        virtual
        onlyNotPaused
        onlyPermittedLender
        returns (uint256 assets)
    {
        if (receiver != owner || receiver != msg.sender) revert InvalidAccess();

        // Update the withdraw state
        assets = withdrawController.redeem(owner, shares);

        // transfer assets, and burn the shares

        _performWithdrawTransfer(owner, shares, assets);

        emit Redeem(owner, maturedLoan, shares, assets);
        updatePoolData();
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
        _accountings.totalAvailableAssets -= assets;

        // Updating accountings
        _accountings.totalAssetsWithdrawn += assets;

        emit Withdraw(owner, owner, owner, assets, shares);
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
    }

    /*//////////////////////////////////////////////////////////////
                           Early Withdraws
    //////////////////////////////////////////////////////////////*/

    function requestEarlyRedeem(
        uint256 shares
    )
        external
        onlyNotPaused
        onlyActivatedPool
        onlyPermittedLender
        onlyLenderWithPPT
    {
        uint256 principal = withdrawController.requestEarlyRedeem(
            msg.sender,
            shares
        );

        emit WithdrawEarlyRequested(msg.sender, activeLoan, shares, principal);
        updatePoolData();
    }

    function acceptEarlyRedeemRequest(
        address investorAddr
    )
        external
        override
        onlyNotPaused
        onlyBorrowerManger
        returns (uint256 principal)
    {
        uint256 shares;
        (shares, principal) = withdrawController.acceptEarlyRedeemRequest(
            investorAddr
        );

        emit WithdrawEarlyAccepted(investorAddr, activeLoan, shares, principal);
        updatePoolData();
    }

    function repayEarlyWithdraw(
        address investorAddr,
        uint256 amount
    )
        external
        override
        onlyNotPaused
        onlyBorrowerManger
        returns (
            uint256 principal,
            uint256 repayment,
            uint256 redeemedShares,
            uint256 fees
        )
    {
        uint256 assetReduction;
        (
            principal,
            repayment,
            redeemedShares,
            fees,
            assetReduction
        ) = withdrawController.repayEarlyWithdraw(investorAddr, amount);

        _burn(investorAddr, redeemedShares);

        _liquidityAsset.safeTransferFrom(
            address(this),
            investorAddr,
            repayment
        );

        ILoan(activeLoan).repayEarlyWithdraw(principal, assetReduction);

        _accountings.outstandingLoanPrincipals -= principal;
        _accountings.totalAvailableAssets -= assetReduction;

        // Updating accountings
        _accountings.totalAssetsWithdrawn += repayment;

        emit WithdrawEarlyRepay(
            investorAddr,
            activeLoan,
            redeemedShares,
            principal,
            repayment,
            fees
        );
        address receiver = serviceConfiguration().getPoolAdminWallet();

        withdrawController.withdrawFeeVault(fees, receiver);
        emit WithdrawFeeVault(receiver, fees);
        updatePoolData();
    }
}
