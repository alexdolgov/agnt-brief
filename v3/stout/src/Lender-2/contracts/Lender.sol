// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "./abstract/Ownable.sol";
import {ReentrancyGuard} from "./abstract/ReentrancyGuard.sol";
import {Rebase, AuxRebase} from "./library/AuxRebase.sol";
import {IBaseContracts} from "./interface/IBaseContracts.sol";
import {IDUSXProvider} from "./interface/IDUSXProvider.sol";
import {IERC20Custom} from "./interface/IERC20Custom.sol";
import {IERC20Token} from "./interface/IERC20Token.sol";
import {IFeesWithdrawer} from "./interface/IFees.sol";
import {ILenderOwner} from "./interface/ILenderOwner.sol";
import {IMiscHelper} from "./interface/IMiscHelper.sol";
import {IOracle} from "./interface/IOracle.sol";
import {IVault} from "./interface/IVault.sol";

/**
 * @title Lender
 * @dev Core lending contract managing collateralized borrowing
 * @notice Handles lending operations, collateral management, and liquidations with:
 * · Collateralized borrowing
 * · Dynamic interest rates
 * · Liquidation mechanisms
 * · Fee management
 */
contract Lender is Ownable, ReentrancyGuard {
    using AuxRebase for Rebase;
    /// @notice Structs for managing accrual info and borrow caps
    struct AccrueInfo {
        uint256 lastAccrued;
        uint256 feesEarned;
        uint256 interestPerSecond;
    }
    struct BorrowCap {
        uint256 total;
        uint256 borrowPartPerAddress;
    }
    /// @notice Core state variables
    AccrueInfo public accrueInfo;
    BorrowCap public borrowLimit;
    Rebase public totalBorrow;
    uint256 public collateralRatio;
    uint256 public exchangeRate;
    uint256 public liquidationMultiplier;
    uint256 public totalCollateralShare;
    uint256 public immutable collateralPrecision;
    uint256 public constant HUNDREDK_PRECISION = 100_000;
    uint256 public constant MANTISSA_ONE = 1e18;
    uint256 internal constant LIQUIDATION_FEE = 10;
    uint256 internal constant LIQUIDATION_FEE_PRECISION = 100;
    /// @notice Protocol contracts
    IDUSXProvider public immutable dusxProvider;
    IFeesWithdrawer public immutable feesWithdrawer;
    IERC20Custom public immutable collateral;
    IERC20Token public immutable dusx;
    IMiscHelper public helper;
    IOracle public immutable oracle;
    IVault public immutable vault;
    address public feeTo;
    mapping(address => uint256) public userBorrowPart;
    mapping(address => uint256) public userCollateralShare;
    /// @notice Events
    event Accrued(uint256 accruedAmount);
    event BorrowLimitChanged(uint256 newLimit, uint256 perAddressPart);
    event ExchangeRateChanged(uint256 rate);
    event FeesWithdrawn(address indexed feeTo, uint256 feesEarnedFraction);
    event InterestRateChanged(uint256 oldInterestRate, uint256 newInterestRate);
    event CollateralAdded(
        address indexed from,
        address indexed to,
        uint256 share
    );
    event CollateralRemoved(
        address indexed from,
        address indexed to,
        uint256 share
    );
    event Borrowed(
        address indexed from,
        address indexed to,
        uint256 amount,
        uint256 part
    );
    event Repaid(
        address indexed from,
        address indexed to,
        uint256 amount,
        uint256 part
    );
    event LiquidationExecuted(
        address indexed user,
        address indexed to,
        uint256 collateralShare,
        uint256 borrowAmount,
        uint256 borrowPart
    );
    /// @dev Custom errors
    error AllSolvent();
    error BorrowLimitExceeded();
    error ExchangeRateNotUpdated();
    error InvalidParameter();
    error InvalidSkim();
    error UserInsolvent();
    error ZeroAddress();
    modifier solvent(address msgSender) {
        _;
        uint256 _exchangeRate = _updateExchangeRate();
        if (!_isSolvent(msgSender, _exchangeRate)) {
            revert UserInsolvent();
        }
    }
    modifier onlyHelper() {
        if (address(helper) != _msgSender()) {
            revert UnauthorizedAccount(_msgSender());
        }
        _;
    }

    /**
     * @notice Initializes the lending contract
     * @param baseContracts_ BaseContracts instance for protocol integration
     * @param collateral_ Collateral token address
     * @param collateralRatio_ Initial collateral ratio
     * @param liquidationMultiplier_ Initial liquidation multiplier
     */
    constructor(
        IBaseContracts baseContracts_,
        IERC20Custom collateral_,
        uint256 collateralRatio_,
        uint256 liquidationMultiplier_
    ) {
        _ensureNonzeroAddress(address(baseContracts_));
        _ensureNonzeroAddress(address(collateral_));
        collateral = collateral_;
        // Get immutable contracts from BaseContracts
        vault = baseContracts_.vault();
        dusx = baseContracts_.dusx();
        dusxProvider = baseContracts_.dusxProvider();
        feesWithdrawer = baseContracts_.feesWithdrawer();
        helper = baseContracts_.helper();
        ILenderOwner lenderOwner = baseContracts_.lenderOwner();
        // Validate addresses
        _ensureNonzeroAddress(address(vault));
        _ensureNonzeroAddress(address(dusx));
        _ensureNonzeroAddress(address(dusxProvider));
        _ensureNonzeroAddress(address(feesWithdrawer));
        _ensureNonzeroAddress(address(helper));
        _ensureNonzeroAddress(address(lenderOwner));
        // Set oracle based on collateral type
        IOracle oracle_;
        if (address(collateral_) == address(baseContracts_.veSTTX())) {
            oracle_ = baseContracts_.oracleFloorPrice();
        } else {
            oracle_ = baseContracts_.oracleChainlink();
        }
        _ensureNonzeroAddress(address(oracle_));
        oracle = oracle_;
        // Initialize contract state
        transferOwnership(address(lenderOwner));
        uint8 decimals_ = collateral_.decimals();
        if (decimals_ > 18) {
            revert InvalidParameter();
        }
        collateralPrecision = 10 ** decimals_;
        feeTo = address(feesWithdrawer);
        collateralRatio = collateralRatio_;
        liquidationMultiplier = liquidationMultiplier_;
        accrueInfo.interestPerSecond = 316880879;
        borrowLimit = BorrowCap(0, 0);
        exchangeRate = oracle.getPrice(address(collateral));
        _accrue();
    }

    function updateExchangeRate() external nonReentrant {
        _updateExchangeRate();
    }

    function vaultDepositAddCollateral(
        uint256 amount
    ) external payable nonReentrant {
        uint256 share = vault.toShare(collateral, amount, false);
        userCollateralShare[_msgSender()] += share;
        uint256 oldTotalCollateralShare = totalCollateralShare;
        totalCollateralShare = oldTotalCollateralShare + share;
        vault.deposit(collateral, _msgSender(), _msgSender(), amount, 0);
        _addTokens(collateral, share, oldTotalCollateralShare, false);
        _afterAddCollateral(_msgSender(), share);
        emit CollateralAdded(_msgSender(), _msgSender(), share);
    }

    function changeBorrowLimit(
        uint256 newBorrowLimit,
        uint256 borrowPartPerAddress
    ) external onlyOwner {
        borrowLimit = BorrowCap(newBorrowLimit, borrowPartPerAddress);
        emit BorrowLimitChanged(newBorrowLimit, borrowPartPerAddress);
    }

    function changeInterestRate(uint256 newInterestRate) external onlyOwner {
        uint256 oldInterestRate = accrueInfo.interestPerSecond;
        _accrue();
        accrueInfo.interestPerSecond = newInterestRate;
        emit InterestRateChanged(oldInterestRate, newInterestRate);
    }

    // Core lending functions
    function accrue() external nonReentrant {
        _accrue();
    }

    function borrowVaultWithdraw(
        address msgSender,
        uint256 amount
    )
        external
        nonReentrant
        solvent(msgSender)
        onlyHelper
        returns (uint256 part, uint256 share)
    {
        _accrue();
        (part, share) = _borrow(msgSender, amount);
        uint256 maxAmount = vault.toAmount(
            dusx,
            vault.balanceOf(dusx, msgSender),
            false
        );
        amount = maxAmount > amount ? amount : maxAmount;
        vault.withdraw(dusx, msgSender, msgSender, amount, 0);
    }

    function removeCollateralVaultWithdraw(
        uint256 amount
    ) external nonReentrant solvent(_msgSender()) {
        uint256 share = vault.toShare(collateral, amount, false);
        _accrue();
        _removeCollateral(_msgSender(), share);
        vault.withdraw(collateral, _msgSender(), _msgSender(), 0, share);
    }

    // User operations
    function addCollateral(
        address to,
        bool skim,
        uint256 share
    ) external nonReentrant {
        userCollateralShare[to] += share;
        uint256 oldTotalCollateralShare = totalCollateralShare;
        totalCollateralShare = oldTotalCollateralShare + share;
        _addTokens(collateral, share, oldTotalCollateralShare, skim);
        _afterAddCollateral(to, share);
        emit CollateralAdded(skim ? address(vault) : _msgSender(), to, share);
    }

    function removeCollateral(
        address to,
        uint256 share
    ) external nonReentrant solvent(_msgSender()) {
        _accrue();
        _removeCollateral(to, share);
    }

    function borrow(
        address msgSender,
        uint256 amount
    )
        external
        nonReentrant
        solvent(msgSender)
        onlyHelper
        returns (uint256 part, uint256 share)
    {
        _accrue();
        (part, share) = _borrow(msgSender, amount);
    }

    function repay(
        address payer,
        address to,
        bool skim,
        uint256 part
    ) external nonReentrant onlyHelper returns (uint256 amount) {
        _accrue();
        (totalBorrow, amount) = totalBorrow.sub(part, true);
        if (part > userBorrowPart[to]) {
            part = userBorrowPart[to];
        }
        userBorrowPart[to] -= part;
        uint256 share = vault.toShare(dusx, amount, true);
        vault.transfer(
            dusx,
            skim ? address(vault) : payer,
            address(this),
            share
        );
        emit Repaid(skim ? address(vault) : payer, to, amount, part);
    }

    function liquidate(
        address liquidator,
        address[] memory users,
        uint256[] memory maxBorrowParts,
        address to
    ) external nonReentrant onlyHelper {
        uint256 _exchangeRate = _updateExchangeRate();
        _accrue();
        uint256 allCollateralShare = 0;
        uint256 allBorrowAmount = 0;
        uint256 allBorrowPart = 0;
        Rebase memory vaultTotals = vault.totals(collateral);
        _beforeUsersLiquidated(users, maxBorrowParts);
        uint256 length = users.length;
        for (uint256 i; i < length; i++) {
            address user = users[i];
            if (!_isSolvent(user, _exchangeRate)) {
                uint256 borrowPart;
                uint256 availableBorrowPart = userBorrowPart[user];
                borrowPart = maxBorrowParts[i] > availableBorrowPart
                    ? availableBorrowPart
                    : maxBorrowParts[i];
                uint256 borrowAmount = totalBorrow.toElastic(borrowPart, false);
                uint256 collateralShare = vaultTotals.toBase(
                    (borrowAmount *
                        liquidationMultiplier *
                        collateralPrecision) /
                        _exchangeRate /
                        HUNDREDK_PRECISION,
                    false
                );
                _beforeUserLiquidated(
                    user,
                    borrowPart,
                    borrowAmount,
                    collateralShare
                );
                userBorrowPart[user] = availableBorrowPart - borrowPart;
                userCollateralShare[user] -= collateralShare;
                _afterUserLiquidated(user, collateralShare);
                emit CollateralRemoved(user, to, collateralShare);
                emit Repaid(liquidator, user, borrowAmount, borrowPart);
                emit LiquidationExecuted(
                    user,
                    to,
                    collateralShare,
                    borrowAmount,
                    borrowPart
                );
                allCollateralShare += collateralShare;
                allBorrowAmount += borrowAmount;
                allBorrowPart += borrowPart;
            }
        }
        if (allBorrowAmount == 0) {
            revert AllSolvent();
        }
        totalBorrow.elastic -= allBorrowAmount;
        totalBorrow.base -= allBorrowPart;
        totalCollateralShare -= allCollateralShare;
        {
            uint256 liquidationFee = ((((allBorrowAmount *
                liquidationMultiplier) / HUNDREDK_PRECISION) -
                allBorrowAmount) * LIQUIDATION_FEE) / LIQUIDATION_FEE_PRECISION;
            allBorrowAmount += liquidationFee;
            accrueInfo.feesEarned += liquidationFee;
        }
        uint256 allBorrowShare = vault.toShare(dusx, allBorrowAmount, true);
        vault.transfer(dusx, liquidator, address(this), allBorrowShare);
        vault.transfer(collateral, address(this), to, allCollateralShare);
    }

    function withdrawFees(uint256 amountToProvide) external nonReentrant {
        if (_msgSender() != address(feesWithdrawer))
            revert UnauthorizedAccount(_msgSender());
        _accrue();
        uint256 _feesEarned = accrueInfo.feesEarned;
        uint256 share = vault.toShare(dusx, _feesEarned, false);
        accrueInfo.feesEarned = 0;
        dusxProvider.provide(amountToProvide);
        vault.transfer(dusx, address(this), feeTo, share);
        emit FeesWithdrawn(feeTo, _feesEarned);
    }

    function isSolvent(address user) external view returns (bool) {
        return _isSolvent(user, exchangeRate);
    }

    function _afterAddCollateral(
        address user,
        uint256 collateralShare
    ) internal virtual {}

    function _afterRemoveCollateral(
        address from,
        address to,
        uint256 collateralShare
    ) internal virtual {}

    function _preBorrowAction(
        address to,
        uint256 amount,
        uint256 newBorrowPart,
        uint256 part
    ) internal virtual {}

    function _beforeUsersLiquidated(
        address[] memory users,
        uint256[] memory maxBorrowPart
    ) internal virtual {}

    function _beforeUserLiquidated(
        address user,
        uint256 borrowPart,
        uint256 borrowAmount,
        uint256 collateralShare
    ) internal virtual {}

    function _afterUserLiquidated(
        address user,
        uint256 collateralShare
    ) internal virtual {}

    function _accrue() private {
        AccrueInfo memory _accrueInfo = accrueInfo;
        uint256 elapsedTime = block.timestamp - _accrueInfo.lastAccrued;
        if (elapsedTime == 0) return;
        Rebase memory _totalBorrow = totalBorrow;
        if (_totalBorrow.base == 0) {
            _accrueInfo.lastAccrued = block.timestamp;
            accrueInfo = _accrueInfo;
            return;
        }
        uint256 extraAmount = (_totalBorrow.elastic *
            _accrueInfo.interestPerSecond *
            elapsedTime) / MANTISSA_ONE;
        _totalBorrow.elastic += extraAmount;
        totalBorrow = _totalBorrow;
        _accrueInfo.feesEarned += extraAmount;
        _accrueInfo.lastAccrued = block.timestamp;
        accrueInfo = _accrueInfo;
        emit Accrued(extraAmount);
    }

    function _addTokens(
        IERC20Custom token,
        uint256 share,
        uint256 total,
        bool skim
    ) private {
        if (skim) {
            if (share > vault.balanceOf(token, address(this)) - total) {
                revert InvalidSkim();
            }
        } else {
            vault.transfer(token, _msgSender(), address(this), share);
        }
    }

    function _removeCollateral(address to, uint256 share) private {
        userCollateralShare[_msgSender()] -= share;
        totalCollateralShare -= share;
        _afterRemoveCollateral(_msgSender(), to, share);
        emit CollateralRemoved(_msgSender(), to, share);
        vault.transfer(collateral, address(this), to, share);
    }

    function _borrow(
        address to,
        uint256 amount
    ) private returns (uint256 part, uint256 share) {
        (totalBorrow, part) = totalBorrow.add(amount, true);
        BorrowCap memory cap = borrowLimit;
        if (totalBorrow.elastic > cap.total) {
            revert BorrowLimitExceeded();
        }
        uint256 newBorrowPart = userBorrowPart[to] + part;
        if (newBorrowPart > cap.borrowPartPerAddress) {
            revert BorrowLimitExceeded();
        }
        _preBorrowAction(to, amount, newBorrowPart, part);
        userBorrowPart[to] = newBorrowPart;
        uint256 lenderDUSXAmount = vault.toAmount(
            dusx,
            vault.balanceOf(dusx, address(this)),
            false
        );
        uint256 amountToProvide;
        if (amount > lenderDUSXAmount) {
            amountToProvide = amount - lenderDUSXAmount;
        } else {
            amountToProvide = 0;
        }
        dusxProvider.provide(amountToProvide);
        share = vault.toShare(dusx, amount, false);
        vault.transfer(dusx, address(this), to, share);
        emit Borrowed(to, to, amount, part);
    }

    function _updateExchangeRate() private returns (uint256) {
        uint256 newExchangeRate = oracle.getPrice(address(collateral));
        if (newExchangeRate == 0) revert ExchangeRateNotUpdated();
        exchangeRate = newExchangeRate;
        emit ExchangeRateChanged(newExchangeRate);
        return exchangeRate;
    }

    function _isSolvent(
        address user,
        uint256 exchangeRate_
    ) private view returns (bool) {
        uint256 borrowPart = userBorrowPart[user];
        uint256 collateralShare = userCollateralShare[user];
        if (borrowPart == 0) {
            return true;
        } else if (collateralShare == 0) {
            return false;
        } else {
            Rebase memory _totalBorrow = totalBorrow;
            return
                vault.toAmount(
                    collateral,
                    (collateralShare * collateralRatio) / HUNDREDK_PRECISION,
                    false
                ) >=
                (borrowPart * _totalBorrow.elastic * collateralPrecision) /
                    _totalBorrow.base /
                    exchangeRate_;
        }
    }

    // Validates that an address is not zero
    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }
}
