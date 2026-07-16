// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { Address } from "@openzeppelin/contracts/utils/Address.sol";
import { Clones } from "@openzeppelin/contracts/proxy/Clones.sol";
import "solady/src/utils/FixedPointMathLib.sol";
import { Pausable } from "@openzeppelin/contracts/utils/Pausable.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { ProtocolModule, ProtocolGovernor } from "../system/ProtocolModule.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { ILendingPool } from "../interfaces/ILendingPool.sol";
import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { UD60x18, ud, UNIT, ZERO } from "@prb/math/src/UD60x18.sol";
import { BaseAccount } from "../accounts/BaseAccount.sol";
import { IAccount } from "../interfaces/IAccount.sol";
import { IAssetPriceOracle } from "../interfaces/IAssetPriceOracle.sol";
import { InternalAccount } from "../accounts/InternalAccount.sol";
import { ExternalAccount } from "../accounts/ExternalAccount.sol";
import "../interfaces/IStrategyVault.sol";
import "../interfaces/IAccountManager.sol";
import "../interfaces/IInternalAccount.sol";
import "../interfaces/IAssetPriceProvider.sol";
import "../interfaces/ILiquidationReceiver.sol";
import "../libraries/accounts/AccountLib.sol";
import "../libraries/Errors.sol";

/// @title Account Factory Events
/// @dev Place all events used by the AccountManager contract here
abstract contract AccountManagerEvents {
    /// @notice Additional fees charged to an account (in addition to their lending pool debt).
    event FeesCharged(address indexed account, uint256 amount);
    /// @notice Account liquidation started
    event AccountLiquidationStarted(address indexed account);
    /// @notice Account liquidation completed
    event AccountLiquidationCompleted(address indexed account);
    /// @notice A user has borrowed.
    event AccountBorrowed(address indexed owner, address indexed account, uint256 amount);
    /// @notice A user has repaid.
    event AccountRepaid(address indexed owner, address indexed account, uint256 amount);
    event LiquidationFeesTaken(
        address indexed feeCollector, address indexed liquidator, uint256 protocolShare, uint256 liquidatorShare
    );
    /// @dev LiquidationReceiver is created per (account, liquidationFeeTo).
    event LiquidationReceiverCreated(
        address indexed account, address indexed liquidationFeeTo, address liquidationReceiver
    );
    /// @notice User claimed assets from their account.
    event AccountClaimed(address indexed owner, address indexed account, uint256 amount);

    /// @notice Account allowed status updated.
    event AllowedAccountStatusUpdated(address indexed account, bool status);

    /// @notice Allowed accounts mode updated.
    event AllowedAccountsModeUpdated(bool status);

    event RepaymentModeUpdated(address indexed account, bool status);
}

/// @title AccountManager
/// @notice The AccountManager contract deploys Account contracts.
/// Investment Accounts are only createable by the owner of this contract or
/// accounts approved by the admin (known as account creators).
abstract contract AccountManager is IAccountManager, Pausable, AccountManagerEvents, ProtocolModule, ReentrancyGuard {
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeERC20 for IERC20;
    using Address for address;
    using FixedPointMathLib for uint256;

    error OldAccountDoesNotExist();
    error HealthFactorSnapshotNotFound();
    error RemainingDebtLeft();

    /// @notice The LendingPool contract address for Investment Accounts to use
    ILendingPool internal immutable _lendingPool;

    IERC20 internal immutable _lendAsset;

    /// @notice An mapping of all Account contracts that have been created
    mapping(address => bool) public isCreatedAccount;

    /// @notice Account to their owner.
    mapping(address => address) internal _accountOwnerCache;

    mapping(address => uint256) internal _accountLiquidationStartTime;
    mapping(address => mapping(address => ILiquidationReceiver)) public liquidationReceiver;

    /// @notice If true, account cannot repay.
    mapping(address => bool) public repaymentMode;
    mapping(address => bool) internal _isLiquidationReceiver;

    /// @notice Counter to keep track of the number of Account contracts that have been created
    uint256 public accountCount;

    bool public allowedAccountsMode;

    mapping(address => bool) public isAccountAllowed;

    /// @dev Used for storing the health factor of an account for comparison before and after some action.
    mapping(address => UD60x18) internal _accountHealthFactorSnapshot;

    // Account configurations
    ///////////////////////////
    address immutable liquidationReceiverImpl;

    modifier onlyAccount() {
        if (!isCreatedAccount[msg.sender]) {
            revert Errors.Unauthorized();
        }
        if (allowedAccountsMode && !isAccountAllowed[msg.sender]) {
            revert Errors.Unauthorized();
        }
        _;
    }

    /// @notice Constructs the factory
    constructor(
        address protocolGovernor_,
        address liquidationReceiverImpl_
    )
        ProtocolModule(protocolGovernor_)
        nonZeroAddressAndContract(address(_getPriceProvider()))
        nonZeroAddressAndContract(_getLendingPool())
        nonZeroAddressAndContract(liquidationReceiverImpl_)
    {
        liquidationReceiverImpl = liquidationReceiverImpl_;
        _lendingPool = ILendingPool(_getLendingPool());
        _lendAsset = IERC20(_getLendAsset());
        allowedAccountsMode = true;
    }

    //////////////////////////
    // Account Administration
    //////////////////////////

    function setRepaymentMode(address[] memory accounts, bool status) external onlyOwner {
        for (uint256 i = 0; i < accounts.length; i++) {
            repaymentMode[accounts[i]] = status;
            emit RepaymentModeUpdated(accounts[i], status);
        }
    }

    // TODO: update this to be by owner address
    function setAllowedAccountsMode(bool status) external onlyOwner {
        allowedAccountsMode = status;
        emit AllowedAccountsModeUpdated(status);
    }

    function setAllowedAccountStatus(address account, bool status) external onlyOwner {
        isAccountAllowed[account] = status;
        emit AllowedAccountStatusUpdated(account, status);
    }

    function isLiquidationReceiver(address receiver) external view returns (bool) {
        return _isLiquidationReceiver[receiver];
    }

    function getAccountOwner(address account) external view returns (address owner) {
        owner = _accountOwnerCache[account];
    }

    /// @notice Let the owner pause deposits and borrows
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Let the owner unpause deposits and borrows
    function unpause() external onlyOwner {
        _unpause();
    }

    /// @notice Lets the admin pause the account
    function pauseAccount(address account) external onlyOwner {
        IAccount(account).pause();
    }

    /// @notice Lets the admin unpause the account
    function unpauseAccount(address account) external onlyOwner {
        IAccount(account).unpause();
    }

    /////////////////////////////
    // Account Functionality
    /////////////////////////////

    function borrow(uint256 amount) external virtual onlyAccount nonReentrant returns (uint256 borrowed) {
        borrowed = _borrow(msg.sender, amount);
    }

    function _borrow(address caller, uint256 amount) internal whenNotPaused returns (uint256 borrowed) {
        borrowed = _lendingPool.borrow(amount, caller);

        _requireSolventCheckBorrow(caller, true);
        _completeLiquidation(caller);

        emit AccountBorrowed(_accountOwnerCache[caller], caller, borrowed);

        this._afterBorrow(caller, borrowed);
    }

    function repay(address account, uint256 amount) external virtual nonReentrant returns (uint256 repaid) {
        if (repaymentMode[account]) {
            revert Errors.Unauthorized();
        }

        // Debt repaid is onBehalfOf, funds are transferred from `from`.
        repaid = _lendingPool.repay(amount, account, msg.sender);

        emit AccountRepaid(_accountOwnerCache[account], account, repaid);

        this._afterRepay(account, repaid);
    }

    /// @notice Called by Account when its Owner wants to withdraw excess funds.
    /// @param amount The amount to withdraw
    /// @param recipient The address to send the assets to
    function claim(uint256 amount, address recipient) external nonZeroAddress(recipient) onlyAccount nonReentrant {
        _lendAsset.safeTransferFrom(msg.sender, recipient, amount);
        _requireSolventCheckBorrow(msg.sender, true);
        _completeLiquidation(msg.sender);

        emit AccountClaimed(_accountOwnerCache[msg.sender], msg.sender, amount);
    }

    /// @dev Account cannot do any actions involving snapshots if it is being liquidated.
    function snapshotAccountHealthFactor() external onlyAccount {
        AccountLib.Health memory health = getAccountHealth(msg.sender);
        if (health.isLiquidatable) revert Errors.AccountBeingLiquidated();
        _accountHealthFactorSnapshot[msg.sender] = health.healthFactor;
    }

    /// @notice Mark an account as liquidatable.
    function liquidate(
        address account,
        address liquidationFeeTo
    )
        external
        returns (ILiquidationReceiver liquidationReceiver_)
    {
        (liquidationReceiver_,) = _startLiquidation(account, liquidationFeeTo);
        liquidationReceiver_.repay();
    }

    function emitLiquidationFeeEvent(
        address feeCollector_,
        address liquidationFeeTo,
        uint256 protocolShare,
        uint256 liquidatorShare
    )
        external
    {
        if (!_isLiquidationReceiver[msg.sender]) revert Errors.Unauthorized();
        emit LiquidationFeesTaken(feeCollector_, liquidationFeeTo, protocolShare, liquidatorShare);
    }

    /// @dev Starts the liquidation process on an Account if it is liquidatable and creates a liquidation receiver if
    /// one
    /// does not exist.
    function _startLiquidation(
        address account,
        address liquidationFeeTo
    )
        internal
        returns (ILiquidationReceiver liquidationReceiver_, uint256 initialRepaymentFunds)
    {
        _markLiquidatable(account);

        liquidationReceiver_ = liquidationReceiver[account][liquidationFeeTo];

        // Create the liquidator receiver.
        if (address(liquidationReceiver_) == address(0)) {
            liquidationReceiver_ = ILiquidationReceiver(
                Clones.cloneDeterministic(liquidationReceiverImpl, keccak256(abi.encode(account, liquidationFeeTo)))
            );
            liquidationReceiver_.initialize(
                ILiquidationReceiver.Props({
                    account: IAccount(account),
                    manager: IAccountManager(address(this)),
                    liquidationFeeTo: liquidationFeeTo,
                    asset: _lendAsset
                })
            );
            liquidationReceiver[account][liquidationFeeTo] = liquidationReceiver_;
            _isLiquidationReceiver[address(liquidationReceiver_)] = true;
            emit LiquidationReceiverCreated(account, liquidationFeeTo, address(liquidationReceiver_));
        }

        // Account has idle borrowed funds, transfer them to the liquidator receiver.
        initialRepaymentFunds = _lendAsset.balanceOf(address(account));
        if (initialRepaymentFunds > 0) {
            _lendAsset.safeTransferFrom(address(account), address(liquidationReceiver_), initialRepaymentFunds);
        }
    }

    function _markLiquidatable(address account) internal {
        AccountLib.Health memory health = getAccountHealth(account);

        if (!health.isLiquidatable) {
            revert Errors.AccountHealthy();
        } else {
            // Mark account as liquidatable if it isn't already.
            if (_accountLiquidationStartTime[account] == 0) {
                _accountLiquidationStartTime[account] = block.timestamp;
                emit AccountLiquidationStarted(account);
                this._afterLiquidationStarted(account);
            }
        }
    }

    /// @dev Account can be made healthy again if either debt is repaid, collateral is deposited, or lend asset is
    /// transferred to subaccount.
    /// @notice This is called after every action to check if the account is no longer liquidatable.
    function _completeLiquidation(address account) internal {
        if (_accountLiquidationStartTime[account] > 0) {
            AccountLib.Health memory health = getAccountHealth(account);
            if (!health.isLiquidatable) {
                delete _accountLiquidationStartTime[account];
                emit AccountLiquidationCompleted(account);
                this._afterLiquidationCompleted(account);
            }
        }
    }

    /// @dev Used to get the health factor of an account at the current block number.
    function _getLatestAccountHealthFactorSnapshot(address account) internal view returns (UD60x18 healthFactor) {
        healthFactor = _accountHealthFactorSnapshot[account];
        if (healthFactor == ZERO) revert HealthFactorSnapshotNotFound();
    }

    /////////////////////////
    // Account Views
    /////////////////////////

    function lendingPool() external view returns (address) {
        return address(_lendingPool);
    }

    function getLiquidationReceiver(
        address account,
        address liquidationFeeTo
    )
        external
        view
        returns (ILiquidationReceiver)
    {
        return ILiquidationReceiver(
            Clones.predictDeterministicAddress(
                liquidationReceiverImpl, keccak256(abi.encode(account, liquidationFeeTo))
            )
        );
    }

    function getFeeCollector() external view returns (address) {
        return _getFeeCollector();
    }

    function getLendAsset() external view returns (IERC20) {
        return _lendingPool.getAsset();
    }

    function getAccountLiquidationStatus(address account) external view returns (AccountLib.LiquidationStatus memory) {
        return AccountLib.LiquidationStatus({
            isLiquidating: _accountLiquidationStartTime[account] > 0,
            liquidationStartTime: _accountLiquidationStartTime[account]
        });
    }

    function getLiquidationFee() external view returns (AccountLib.LiquidationFee memory fee) {
        fee.protocolShare = _protocolLiquidationShare();
        fee.liquidatorShare = _liquidatorShare();
    }

    function getDebtAmount(address account) public view virtual returns (uint256) {
        return _lendingPool.getDebtAmount(account);
    }

    function getAccountLoan(address account) public view returns (AccountLib.Loan memory) {
        uint256 collateralValue = getTotalCollateralValue(account);
        uint256 debt = getDebtAmount(account);
        UD60x18 ltv = ZERO;
        if (collateralValue > 0) {
            ltv = ud(debt).div(ud(collateralValue));
        }
        return AccountLib.Loan({
            debtAmount: debt,
            collateralValue: collateralValue,
            ltv: ltv,
            maxLtv: _getAccountMaxLtv(account)
        });
    }

    function getAccountHealth(address) public view virtual returns (AccountLib.Health memory health);

    /// @dev Total value of investments sitting in the Account.
    function getTotalAccountValue(address account) public view virtual returns (uint256 totalValue);

    /// @dev Total value of collateral attributed to the Account.
    function getTotalCollateralValue(address account) public view virtual returns (uint256 totalValue) { }

    /// @notice Used to ensure the account has performed an operation that doesn't put their account into an insolvent
    /// state.
    function _requireSolvent(address account) internal view {
        _requireSolventCheckBorrow(account, false);
    }

    function _requireSolventCheckBorrow(address account, bool checkBorrow) internal view {
        // Actions depending on solvency cannot be performed during liquidation state.
        if (_accountLiquidationStartTime[account] > 0) {
            revert Errors.AccountBeingLiquidated();
        }

        // Only perform solvency check if Account has debt.
        if (getDebtAmount(account) > 0) {
            AccountLib.Health memory health = getAccountHealth(account);

            if (checkBorrow) {
                uint256 borrowLimit = ud(health.collateralValue).mul(_getAccountMaxLtv(account)).unwrap();

                // Check if borrowed debt is fully collateralized based off max ltv.
                if (health.debtAmount > borrowLimit) {
                    revert Errors.AccountInsolvent();
                }
            }

            // If debt is considered fully collateralized, check if the account is at risk (this keeps it some % above
            // the liquidation threshold).
            if (health.isRisky || health.hasBadDebt) {
                revert Errors.AccountInsolvent();
            }
        }
    }

    ///////////////////
    // HOOKS
    ///////////////////

    function _afterRepay(address account, uint256) external virtual onlySelf {
        _completeLiquidation(account);
    }

    function _afterBorrow(address account, uint256 borrowed) external virtual onlySelf { }

    function _afterLiquidationStarted(address account) external virtual onlySelf { }

    function _afterLiquidationCompleted(address account) external virtual onlySelf { }

    //////////////////
    // INTERNAL
    //////////////////

    function _getAccountMaxLtv(address account) internal view virtual returns (UD60x18);

    /// @notice Hashes an address with this contract's address
    /// @param addr The address to convert
    function _salt(address addr) internal view virtual returns (bytes32) {
        return keccak256(abi.encodePacked(addr));
    }
}
