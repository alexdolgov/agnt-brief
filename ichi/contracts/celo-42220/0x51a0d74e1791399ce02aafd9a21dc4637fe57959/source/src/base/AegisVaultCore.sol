// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.7.6;
pragma abicoder v2;

import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";
import { SafeMath } from "@openzeppelin/contracts/math/SafeMath.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { Pausable } from "@openzeppelin/contracts/utils/Pausable.sol";

import { IQuoter } from "@uniswap/v3-periphery/contracts/interfaces/IQuoter.sol";

import { IICHIVault } from "../interfaces/external/ichi/IICHIVault.sol";

import "./Constants.sol";
import { PctMath } from "../utils/PctMath.sol";
import { UV3Math } from "../lib/UV3Math.sol";

import { IAegisVaultFactory } from "../interfaces/IAegisVaultFactory.sol";

import "../interfaces/vault/IAegisVaultActions.sol";
import "../interfaces/vault/IAegisVaultConstants.sol";
import "../interfaces/vault/IAegisVaultDerivedState.sol";
import "../interfaces/vault/IAegisVaultOwnerActions.sol";
import "../interfaces/vault/IAegisVaultState.sol";

import "../interfaces/external/chainlink/AutomationCompatibleInterface.sol";
import "../interfaces/external/merkl/IMerklDistributor.sol";

import { IAegisVault } from "../interfaces/IAegisVault.sol";

/// @title Aegis Vault Core
/// @notice This abstract contract manages the core functionality of an Aegis vault,
/// which leverages two ICHI vaults (a deposit vault and a target vault) to optimize
/// yield generation and asset allocation.
/// @dev The Aegis vault accepts deposits in the form of deposit tokens or ICHI vault
/// shares of the deposit vault. It aims to gradually convert deposited assets into
/// target tokens managed by the target vault, maximizing yields for both deposit and target tokens.
///
/// Error Codes:
///     IIN - Invalid input
///     IMB - Imbalance
///     IRP - Invalid recipient
///     ITT - Insufficient target tokens
///     PFT - Pending fees cannot be set yet
///     RNA - Roles: not an admin
///     RRD - Roles: not a depositor
///     RRR - Roles: not a rebalancer
///     SET - Slippage exceeded threshold
///     TMS - Too much slippage
///     USW - Unexpected swap
///     VTS - Value too small
///     VHG - Volatility too high
///     VHC - Volatility triggered hysteresis check
///     ZAD - Zero address
///     ZAM - Zero amount
///     ZBL - Zero balance
abstract contract AegisVaultCore is IAegisVault, ReentrancyGuard, AccessControl, Pausable {
    using SafeERC20 for IERC20;
    using SafeERC20 for IICHIVault; // since IICHIVault implements IERC20
    using SafeMath for uint256;

    // Define Roles

    /// @inheritdoc IAegisVaultConstants
    bytes32 public constant override DEPOSITOR_ROLE = keccak256("DEPOSITOR_ROLE");
    /// @inheritdoc IAegisVaultConstants
    bytes32 public constant override REBALANCER_ROLE = keccak256("REBALANCER_ROLE");

    /// @inheritdoc IAegisVaultConstants
    IAegisVaultFactory public override aegisVaultFactory;
    /// @inheritdoc IAegisVaultConstants
    IQuoter public override quoter;
    /// @inheritdoc IAegisVaultConstants
    uint256 public override vaultIndex;

    /// @inheritdoc IAegisVaultConstants
    IICHIVault public override depositVault;
    /// @inheritdoc IAegisVaultConstants
    IICHIVault public override targetVault;
    /// @inheritdoc IAegisVaultConstants
    IERC20 public override depositToken;
    /// @inheritdoc IAegisVaultConstants
    IERC20 public override targetToken;

    /// @inheritdoc IAegisVaultState
    uint256 public override hysteresis;
    /// @inheritdoc IAegisVaultState
    uint256 public override maxVolatility;

    /// @inheritdoc IAegisVaultState
    uint256 public override maxDelta;

    /// @inheritdoc IAegisVaultState
    uint256 public override pendingThreshold;
    /// @inheritdoc IAegisVaultState
    uint256 public override maxRebalanceThreshold;
    /// @inheritdoc IAegisVaultState
    uint256 public override excessTargetTokenThreshold;

    /// @inheritdoc IAegisVaultState
    address public override feeRecipient;
    /// @inheritdoc IAegisVaultState
    uint256 public override baseFee;
    /// @inheritdoc IAegisVaultState
    uint256 public override withdrawFee;

    /// @inheritdoc IAegisVaultState
    uint32 public override twapPeriod;

    /// @dev Struct to hold pending fee updates
    struct PendingFees {
        uint256 timestamp;
        uint256 baseFee;
        uint256 withdrawFee;
    }

    /// @inheritdoc IAegisVaultState
    PendingFees public override pendingFees;

    /// @inheritdoc IAegisVaultState
    bool public override doCheckImpliedSlippage;

    /// @dev True if the depositToken is token1 in the underlying UniswapV3Pool/s
    bool private isInverted;
    /// @dev True if the depositVault and targetVault have the same underlying UniswapV3Pool
    bool private isSamePool;
    /// @dev Address of token0 in the underlying UniswapV3Pool/s
    address private token0;
    /// @dev Address of token1 in the underlying UniswapV3Pool/s
    address private token1;

    /// @notice Initializes the AegisVaultCore contract
    /// @dev This function should be called by the constructor of the implementing contract
    /// @param _quoter The Uniswap V3 Quoter contract
    /// @param _depositToken The token accepted for deposits
    /// @param _targetToken The token the vault aims to accumulate
    /// @param _depositVault The ICHI vault used for managing deposit tokens
    /// @param _targetVault The ICHI vault used for managing target tokens
    /// @param __owner The address to be granted the DEFAULT_ADMIN_ROLE
    /// @param _vaultIndex The index of this vault in the factory's list of deployed vaults
    function __AegisVaultCore_init(
        IQuoter _quoter,
        IERC20 _depositToken,
        IERC20 _targetToken,
        IICHIVault _depositVault,
        IICHIVault _targetVault,
        address __owner,
        uint256 _vaultIndex
    )
        internal
    {
        _setupRole(DEFAULT_ADMIN_ROLE, __owner);

        aegisVaultFactory = IAegisVaultFactory(msg.sender);

        quoter = _quoter;
        vaultIndex = _vaultIndex;

        depositToken = _depositToken;
        targetToken = _targetToken;
        depositVault = _depositVault;
        targetVault = _targetVault;

        hysteresis = PRECISION.div(ONE_PCT).div(2); // 0.5% threshold
        maxVolatility = PRECISION.div(ONE_PCT).mul(2); // 2% threshold
        maxDelta = 250; // likely sufficient for most tokens
        twapPeriod = DEFAULT_TWAP_PERIOD;

        pendingThreshold = ONE_PCT; // 1%
        maxRebalanceThreshold = ONE_PCT.mul(50); // 50%
        excessTargetTokenThreshold = ONE_PCT.mul(5); // 5%

        address __depositToken = address(_depositToken);
        address __targetToken = address(_targetToken);

        (token0, token1) = __depositToken < __targetToken ? (__depositToken, __targetToken) : (__targetToken, __depositToken);
        isInverted = token0 != __depositToken; // i.e. token1 is the depositToken

        // NOTE: while it may not be the same pool it is definitely the same token pair
        // So token0 and token1 in both pools are always identical
        isSamePool = _depositVault.pool() == _targetVault.pool();

        address __depositVault = address(_depositVault);
        address __targetVault = address(_targetVault);

        _depositToken.safeApprove(__depositVault, MAX_UINT256);
        _targetToken.safeApprove(__targetVault, MAX_UINT256);

        // NOTE: we do not need to approve the ICHIVault to _burn its own shares on ICHIVault.withdraw

        baseFee = aegisVaultFactory.defaultBaseFee();
        // withdrawFee is 0 by default
        feeRecipient = aegisVaultFactory.defaultFeeRecipient();

        doCheckImpliedSlippage = true;

        emit DeployAegisVault(msg.sender, __depositToken, __targetToken, __depositVault, __targetVault, __owner, _vaultIndex);
    }

    /// @inheritdoc IAegisVaultConstants
    function isERC20() external view virtual override returns (bool);

    /// @dev Reverts if called by any account other than the default admin.
    function _onlyAdmin() private view {
        require(hasRole(DEFAULT_ADMIN_ROLE, msg.sender), "RNA");
    }

    /// @dev Reverts if called by an account which is not allowed to deposit.
    function _onlyDepositor() private view {
        bool isKnownDepositor = hasRole(DEPOSITOR_ROLE, msg.sender);
        bool isPublic = hasRole(DEPOSITOR_ROLE, NULL_ADDRESS);
        // if NULL_ADDRESS hasRole then we open deposits to public however in this case we require doCheckImpliedSlippage
        require(isKnownDepositor || (isPublic && doCheckImpliedSlippage), "RRD");
    }

    /// @dev Reverts if called by an account which is not allowed to rebalance.
    function _onlyRebalancer() private view {
        // if NULL_ADDRESS hasRole then we open rebalances to public
        require(hasRole(REBALANCER_ROLE, NULL_ADDRESS) || hasRole(REBALANCER_ROLE, msg.sender), "RRR");
    }

    /// @inheritdoc IAegisVaultOwnerActions
    function pause() external override {
        _onlyAdmin();
        _pause();
    }

    /// @inheritdoc IAegisVaultOwnerActions
    function unpause() external override {
        _onlyAdmin();
        _unpause();
    }

    /// @inheritdoc IAegisVaultOwnerActions
    function resetICHIVaultApprovals() external override {
        _onlyAdmin();
        _grantMaxAllowanceToICHIVault(depositToken, depositVault);
        _grantMaxAllowanceToICHIVault(targetToken, targetVault);
    }

    /// @inheritdoc IAegisVaultOwnerActions
    function setMaxVolatility(uint256 newMaxVolatility) external override {
        _onlyAdmin();
        require(newMaxVolatility > 0, "IIN");
        // NOTE: maxVolatility will typically be set to a low value around 2%
        // however the admin has the right to set this as high as they'd like
        // NOTE: deposits and rebalances require worst volatility <= maxVolatility
        maxVolatility = newMaxVolatility;
        emit SetMaxVolatility(msg.sender, newMaxVolatility);
    }

    /// @inheritdoc IAegisVaultOwnerActions
    function setMaxDelta(uint256 newMaxDelta) external override {
        _onlyAdmin();
        require(newMaxDelta <= 10_000);
        maxDelta = newMaxDelta;
    }

    /// @inheritdoc IAegisVaultOwnerActions
    function setTwapPeriod(uint32 newTwapPeriod) external override {
        _onlyAdmin();
        // NOTE: if the twapPeriod is set older than any underlying pool has observations for
        // then OracleLibrary.consult will revert being unable to compute the TWAP that far back
        require(newTwapPeriod > 0, "IIN");
        twapPeriod = newTwapPeriod;
        emit SetTwapPeriod(msg.sender, newTwapPeriod);
    }

    /// @inheritdoc IAegisVaultOwnerActions
    function setHysteresis(uint256 _hysteresis) external override {
        _onlyAdmin();
        // NOTE: deposits and rebalances require volatility <= hysteresis
        hysteresis = _hysteresis;
        emit SetHysteresis(msg.sender, _hysteresis);
    }

    /// @inheritdoc IAegisVaultOwnerActions
    function setPendingThreshold(uint256 _newPendingThreshold) external override {
        _onlyAdmin();
        // NOTE: deposits and rebalances require pendingDeposits <= pendingThreshold
        require(PctMath.isValid(_newPendingThreshold), "IIN");
        pendingThreshold = _newPendingThreshold;
        emit SetPendingThreshold(msg.sender, _newPendingThreshold);
    }

    /// @inheritdoc IAegisVaultOwnerActions
    function setMaxRebalanceThreshold(uint256 _newMaxRebalanceThreshold) external override {
        _onlyAdmin();
        // NOTE: rebalances require rebalancePct <= maxRebalanceThreshold
        require(PctMath.isValid(_newMaxRebalanceThreshold), "IIN");
        maxRebalanceThreshold = _newMaxRebalanceThreshold;
        emit SetMaxRebalanceThreshold(msg.sender, _newMaxRebalanceThreshold);
    }

    /// @inheritdoc IAegisVaultOwnerActions
    function setExcessTargetTokenThreshold(uint256 _newExcessTargetTokenThreshold) external override {
        _onlyAdmin();
        // NOTE: rebalances require depositVault targetTokenRatio >= excessTargetTokenThreshold
        // Also since targetTokenRatio = 1 - depositTokenRatio
        // this can also be expressed as depositVault (1 - depositTokenRatio) >= excessTargetTokenThreshold
        require(PctMath.isValid(_newExcessTargetTokenThreshold), "IIN");
        excessTargetTokenThreshold = _newExcessTargetTokenThreshold;
        emit SetExcessTargetTokenThreshold(msg.sender, _newExcessTargetTokenThreshold);
    }

    /// @inheritdoc IAegisVaultOwnerActions
    function setFeeRecipient(address _feeRecipient) external override {
        _onlyAdmin();
        require(_feeRecipient != NULL_ADDRESS, "ZAD");
        feeRecipient = _feeRecipient;
        emit SetFeeRecipient(msg.sender, _feeRecipient);
    }

    /// @inheritdoc IAegisVaultOwnerActions
    function executeSetFees() external override {
        PendingFees memory _pendingFees = pendingFees; // SLOAD
        // _pendingFees.timestamp == 0 by default i.e. without requiring scheduleSetFees
        require(_pendingFees.timestamp != 0 && block.timestamp >= _pendingFees.timestamp, "PFT");
        baseFee = _pendingFees.baseFee;
        withdrawFee = _pendingFees.withdrawFee;
        delete pendingFees;
        emit SetFees(msg.sender, baseFee, withdrawFee);
    }

    /// @inheritdoc IAegisVaultOwnerActions
    function scheduleSetFees(uint256 _baseFee, uint256 _withdrawFee) external override {
        _onlyAdmin();
        require(PctMath.isValid(_baseFee) && PctMath.isValid(_withdrawFee), "IIN");

        pendingFees.timestamp = block.timestamp + 2 days;
        pendingFees.baseFee = _baseFee;
        pendingFees.withdrawFee = _withdrawFee;

        emit ScheduleSetFees(msg.sender, _baseFee, _withdrawFee);
    }

    /// @inheritdoc IAegisVaultOwnerActions
    function setCheckImpliedSlippage(bool _doCheckImpliedSlippage) external override {
        _onlyAdmin();
        bool __doCheckImpliedSlippage = doCheckImpliedSlippage; // SLOAD
        if (__doCheckImpliedSlippage != _doCheckImpliedSlippage) {
            doCheckImpliedSlippage = _doCheckImpliedSlippage;
            emit CheckImpliedSlippage(msg.sender, _doCheckImpliedSlippage);
        }
    }

    /// @dev Calculates the Aegis vault's position in a given ICHI vault
    ///       excluding uncollected swap fees
    /// @param ichiVault The ICHI vault to calculate the position for
    /// @return ichiShares The number of ICHI vault shares held by the Aegis vault
    /// @return depositAmount The amount of deposit tokens in the position
    /// @return targetAmount The amount of target tokens in the position
    function _getAegisVaultPositionInICHIVault(IICHIVault ichiVault)
        private
        view
        returns (uint256 ichiShares, uint256 depositAmount, uint256 targetAmount)
    {
        (depositAmount, targetAmount) = _calculateAegisVaultAmountsInICHIVault(ichiVault);
        if (isInverted) {
            (depositAmount, targetAmount) = (targetAmount, depositAmount);
        }
        ichiShares = ichiVault.balanceOf(address(this));
    }

    /// @inheritdoc IAegisVaultDerivedState
    function getDepositPosition() external view override returns (uint256 depositShares, uint256 depositAmount, uint256 targetAmount) {
        return _getAegisVaultPositionInICHIVault(depositVault);
    }

    /// @inheritdoc IAegisVaultDerivedState
    function getTargetPosition() external view override returns (uint256 targetShares, uint256 depositAmount, uint256 targetAmount) {
        return _getAegisVaultPositionInICHIVault(targetVault);
    }

    /// @inheritdoc IAegisVaultDerivedState
    function getUserBalance(address account)
        external
        view
        virtual
        override
        returns (uint256 aegisShares, uint256 depositAmount, uint256 targetAmount);

    /// @notice Retrieves the balance of a user in the Aegis vault
    /// @param aegisTotalSupply Total supply of Aegis shares
    /// @param userAegisShares User's total Aegis shares
    /// @return aegisShares Quantity of shares that belong to the user
    /// @return depositAmount Current amount of depositToken represented by the shares
    /// @return targetAmount Current amount of targetToken represented by the shares
    function _getUserBalance(
        uint256 aegisTotalSupply,
        uint256 userAegisShares
    )
        internal
        view
        returns (uint256 aegisShares, uint256 depositAmount, uint256 targetAmount)
    {
        aegisShares = userAegisShares;
        if (userAegisShares > 0) {
            (depositAmount, targetAmount) = _getTotalAmounts();
            depositAmount = _mulDiv(depositAmount, userAegisShares, aegisTotalSupply);
            targetAmount = _mulDiv(targetAmount, userAegisShares, aegisTotalSupply);
        }
    }

    function _getTotalAmounts() internal view returns (uint256 depositTotal, uint256 targetTotal) {
        (depositTotal, targetTotal) = _calculateAegisVaultAmountsInICHIVault(depositVault);
        (uint256 targetToken0Amt, uint256 targetToken1Amt) = _calculateAegisVaultAmountsInICHIVault(targetVault);
        depositTotal = depositTotal.add(targetToken0Amt);
        targetTotal = targetTotal.add(targetToken1Amt);
        if (isInverted) {
            (depositTotal, targetTotal) = (targetTotal, depositTotal);
        }
    }

    /// @inheritdoc IAegisVaultActions
    function deposit(
        uint256 amount,
        uint256 minimumAegisShares,
        address to,
        bool doDepositIchiShares
    )
        external
        virtual
        override
        returns (uint256 aegisShares);

    /// @dev Internal deposit function
    /// @param amount Amount of tokens or ICHI vault shares to deposit
    /// @param minimumAegisShares Minimum number of Aegis shares to receive
    /// @param to Address to receive the Aegis shares
    /// @param doDepositIchiShares True if depositing ICHI vault shares, false if depositing tokens
    /// @param aegisTotalSupply Total supply of Aegis shares before the deposit
    /// @return aegisShares Number of Aegis shares minted
    function _deposit(
        uint256 amount,
        uint256 minimumAegisShares,
        address to,
        bool doDepositIchiShares,
        uint256 aegisTotalSupply
    )
        internal
        returns (uint256 aegisShares)
    {
        _onlyDepositor();
        _checkValidRecipient(to);
        _checkValidAmount(amount);
        (uint256 depositSpotPrice, uint256 targetSpotPrice) = _checkVolatility();
        if (doDepositIchiShares) {
            aegisShares = _depositDepositShares(amount, aegisTotalSupply, depositSpotPrice, targetSpotPrice);
        } else {
            aegisShares = _depositDepositToken(amount, false, aegisTotalSupply, depositSpotPrice, targetSpotPrice);
        }
        _checkDepositShares(aegisShares, minimumAegisShares);
        emit Deposit(msg.sender, to, aegisShares, doDepositIchiShares ? 0 : amount, doDepositIchiShares ? amount : 0);
    }

    /// @notice Calculates the amount of Aegis shares based on the value of their deposit of deposit tokens
    /// @param depositTokenAmount Amount of depositToken transferred from sender to AegisVault
    /// @param doPayFromThis If true, use the depositToken already custodied by the AegisVault; if false, transfer from sender
    /// @param aegisTotalSupply Initial total supply of AegisVault liquidity shares
    /// @param depositSpotPrice Current spot price in the deposit vault
    /// @param targetSpotPrice Current spot price in the target vault
    /// @return aegisShares Quantity of Aegis liquidity token shares minted as a result of deposit
    function _depositDepositToken(
        uint256 depositTokenAmount,
        bool doPayFromThis,
        uint256 aegisTotalSupply,
        uint256 depositSpotPrice,
        uint256 targetSpotPrice
    )
        private
        returns (uint256 aegisShares)
    {
        if (!doPayFromThis) {
            // transfer depositToken to this Aegis vault
            depositToken.safeTransferFrom(msg.sender, address(this), depositTokenAmount);
        }

        // deposit depositToken to the depositVault
        (uint256 depositAmount0, uint256 depositAmount1) = isInverted ? (ZERO, depositTokenAmount) : (depositTokenAmount, ZERO);
        uint256 depositShares = depositVault.deposit(depositAmount0, depositAmount1, address(this));

        aegisShares = __deposit(depositShares, aegisTotalSupply, depositSpotPrice, targetSpotPrice);
    }

    /// @notice Calculate the amount of Aegis shares based on the value of their deposit of depositVault shares
    /// @param depositShares Amount of depositVault shares transferred from sender to AegisVault
    /// @param aegisTotalSupply Initial total supply of AegisVault liquidity shares
    /// @param depositSpotPrice Current spot price in the deposit vault
    /// @param targetSpotPrice Current spot price in the target vault
    /// @return aegisShares Quantity of Aegis liquidity token shares minted as a result of deposit
    function _depositDepositShares(
        uint256 depositShares,
        uint256 aegisTotalSupply,
        uint256 depositSpotPrice,
        uint256 targetSpotPrice
    )
        private
        returns (uint256 aegisShares)
    {
        // transfer depositVault depositShares to this AegisVault
        depositVault.safeTransferFrom(msg.sender, address(this), depositShares);
        aegisShares = __deposit(depositShares, aegisTotalSupply, depositSpotPrice, targetSpotPrice);
    }

    /// @inheritdoc IAegisVaultActions
    function withdraw(
        uint256 aegisShares,
        address to,
        WithdrawSlippageData memory minSlippage,
        WithdrawType withdrawType
    )
        external
        virtual
        override
        returns (WithdrawSlippageData memory actualSlippage);

    /// @dev Internal withdraw function
    /// @param aegisShares Number of Aegis shares to withdraw
    /// @param aegisTotalSupply Total supply of Aegis shares before the withdrawal
    /// @param to Address to receive the withdrawn assets
    /// @param minSlippage Minimum acceptable amounts for withdrawal (slippage protection)
    /// @param withdrawType Type of withdrawal (ICHIVaultShares, AssetMix, or TargetOnly)
    /// @return actualSlippage Actual amounts withdrawn
    function _withdraw(
        uint256 aegisShares,
        uint256 aegisTotalSupply,
        address to,
        WithdrawSlippageData memory minSlippage,
        WithdrawType withdrawType
    )
        internal
        returns (WithdrawSlippageData memory actualSlippage, uint256 aegisSharesWithdrawn)
    {
        _checkValidRecipient(to);
        _checkValidAmount(aegisShares);

        // NOTE: this is true unless WithdrawType.TargetOnly
        // In which case aegisSharesWithdrawn <= aegisShares, i.e. possibly less than the requested aegisShares are burnt
        aegisSharesWithdrawn = aegisShares;

        if (withdrawType == WithdrawType.ICHIVaultShares) {
            (actualSlippage.depositSharesAmount, actualSlippage.targetSharesAmount) = _withdrawIchiShares(aegisShares, to, aegisTotalSupply);
        } else if (withdrawType == WithdrawType.AssetMix) {
            (actualSlippage.depositTokenAmount, actualSlippage.targetTokenAmount) = _withdrawAssetMix(aegisShares, to, aegisTotalSupply);
        } else if (withdrawType == WithdrawType.TargetOnly) {
            // NOTE: despite the possibility of a re-deposit on WithdrawType.TargetOnly
            // we don't check _onlyDepositor as it's not a standard deposit
            // NOTE: we _checkVolatility before _withdrawAssetMix to avoid oracle updates due to burns&mints in underlying pools
            // which could result in the ICHIVault re-deposit(i.e. in _depositDepositToken) failing on the hysteresis check
            (uint256 depositSpotPrice, uint256 targetSpotPrice) = _checkVolatility();

            // the AegisVault initially custodies both tokens, then transfers the targetTokens to the recipient
            // and then re-deposits the depositTokens.
            // NOTE: the withdrawFee is charged identically across all WithdrawTypes
            // so in the worst case of a TargetOnly withdrawal(i.e. the user's position has no targetToken and only has depositToken)
            // the user would essentially be paying a withdrawFee for nothing in return
            (actualSlippage.depositTokenAmount, actualSlippage.targetTokenAmount) =
                _withdrawAssetMix(aegisShares, address(this), aegisTotalSupply);

            targetToken.safeTransfer(to, actualSlippage.targetTokenAmount);

            // after _withdrawAssetMix we've temporarily burned all withdraw aegisShares
            // however we then calculate the deposit aegisShares that would normally be minted on the deposit below
            // NOTE: (deposit aegisShares <=  withdraw aegisShares) is necessarily logically true
            // so we effectively only need to burn the difference as calculated in aegisSharesWithdrawn
            uint256 newTotalSupply = aegisTotalSupply.sub(aegisShares);

            if (actualSlippage.depositTokenAmount > 0) {
                actualSlippage.depositSharesAmount =
                    _depositDepositToken(actualSlippage.depositTokenAmount, true, newTotalSupply, depositSpotPrice, targetSpotPrice);
                aegisSharesWithdrawn = aegisShares.sub(actualSlippage.depositSharesAmount);
            }
        }

        uint256 newAegisTotalSupply = aegisTotalSupply.sub(aegisSharesWithdrawn);
        require(newAegisTotalSupply == 0 || newAegisTotalSupply >= MIN_INITIAL_DEPOSIT, "VTS");

        _checkWithdrawSlippage(actualSlippage, minSlippage);
        emit Withdraw(msg.sender, to, aegisShares, actualSlippage);
    }

    /// @notice Calculates the amount of depositVault and targetVault shares to be redeemed by the submitted shares
    /// @param aegisShares Number of Aegis shares to redeem as depositVault and targetVault shares
    /// @param aegisTotalSupply Total supply of Aegis liquidity shares
    /// @return depositSharesAmount Amount of depositVault shares redeemed by the submitted shares (after withdrawFees have been taken)
    /// @return targetSharesAmount Amount of targetVault shares redeemed by the submitted shares (after withdrawFees have been taken)
    function _calculateWithdrawIchiShares(
        uint256 aegisShares,
        uint256 aegisTotalSupply
    )
        private
        returns (uint256 depositSharesAmount, uint256 targetSharesAmount)
    {
        depositSharesAmount = _mulDiv(depositVault.balanceOf(address(this)), aegisShares, aegisTotalSupply);
        targetSharesAmount = _mulDiv(targetVault.balanceOf(address(this)), aegisShares, aegisTotalSupply);

        // apply withdraw fee if set
        (uint256 depositShareFees, uint256 targetShareFees) = _distributeWithdrawFees(depositSharesAmount, targetSharesAmount);

        if (depositShareFees > 0 || targetShareFees > 0) {
            depositSharesAmount = depositSharesAmount.sub(depositShareFees);
            targetSharesAmount = targetSharesAmount.sub(targetShareFees);
            emit WithdrawFees(msg.sender, feeRecipient, depositShareFees, targetShareFees);
        }
    }

    /// @notice Redeems shares by sending out a percentage of the AegisVault's AUM
    /// @dev This percentage is equal to the percentage of total issued shares represented by the redeemed shares
    /// @param aegisShares Number of Aegis shares to redeem as depositVault and targetVault shares
    /// @param to Address to which redeemed assets are sent
    /// @param aegisTotalSupply Total supply of Aegis liquidity shares
    /// @return depositSharesAmount Amount of depositVault shares redeemed by the submitted shares
    /// @return targetSharesAmount Amount of targetVault shares redeemed by the submitted shares
    function _withdrawIchiShares(
        uint256 aegisShares,
        address to,
        uint256 aegisTotalSupply
    )
        private
        returns (uint256 depositSharesAmount, uint256 targetSharesAmount)
    {
        // calculate how many of each ICHIVault shares the user is withdrawing
        (depositSharesAmount, targetSharesAmount) = _calculateWithdrawIchiShares(aegisShares, aegisTotalSupply);

        // transfer the ICHIVault shares to the user
        if (depositSharesAmount > 0) {
            depositVault.safeTransfer(to, depositSharesAmount);
        }
        if (targetSharesAmount > 0) {
            targetVault.safeTransfer(to, targetSharesAmount);
        }
    }

    /// @notice Redeems shares by sending out a percentage of the AegisVault's AUM
    /// @dev This percentage is equal to the percentage of total issued shares represented by the redeemed shares
    /// @param aegisShares Number of Aegis liquidity tokens to redeem as depositToken and targetToken
    /// @param to Address to which redeemed assets are sent
    /// @param aegisTotalSupply Total supply of Aegis liquidity tokens
    /// @return depositTokenAmount Amount of depositToken redeemed by the submitted liquidity tokens
    /// @return targetTokenAmount Amount of targetToken redeemed by the submitted liquidity tokens
    function _withdrawAssetMix(
        uint256 aegisShares,
        address to,
        uint256 aegisTotalSupply
    )
        private
        returns (uint256 depositTokenAmount, uint256 targetTokenAmount)
    {
        // calculate how many of each ICHIVault shares the user is withdrawing
        (uint256 depositSharesAmount, uint256 targetSharesAmount) = _calculateWithdrawIchiShares(aegisShares, aegisTotalSupply);

        (uint256 dToken0Amount, uint256 dToken1Amount) = _withdrawFromVault(depositVault, depositSharesAmount, to);
        (uint256 tToken0Amount, uint256 tToken1Amount) = _withdrawFromVault(targetVault, targetSharesAmount, to);

        // tokens are sorted in the same way in the vaults
        if (isInverted) {
            depositTokenAmount = dToken1Amount.add(tToken1Amount);
            targetTokenAmount = dToken0Amount.add(tToken0Amount);
        } else {
            depositTokenAmount = dToken0Amount.add(tToken0Amount);
            targetTokenAmount = dToken1Amount.add(tToken1Amount);
        }
    }

    /// @dev Decodes the rebalance percentage from the provided data
    /// @param data Encoded rebalance percentage or empty bytes
    /// @return rebalancePct The decoded rebalance percentage(in BSP) or maxRebalanceThreshold if data is empty
    function _decodeRebalancePct(bytes memory data) private view returns (uint256 rebalancePct) {
        if (data.length == 0) {
            rebalancePct = maxRebalanceThreshold;
        } else {
            rebalancePct = abi.decode(data, (uint256));
        }
    }

    /// @inheritdoc AutomationCompatibleInterface
    function checkUpkeep(bytes calldata checkData) external view override returns (bool upkeepNeeded, bytes memory performData) {
        uint256 rebalancePct = _decodeRebalancePct(checkData);

        (bool acceptable, uint256 depositSpotPrice) = _isAcceptableVolatility();

        upkeepNeeded = (
            !paused() && acceptable && rebalancePct > 0 && rebalancePct <= maxRebalanceThreshold
                && _targetTokenRatio(depositSpotPrice) >= excessTargetTokenThreshold
        );

        performData = checkData;
    }

    /// @inheritdoc AutomationCompatibleInterface
    function performUpkeep(bytes calldata performData) external override nonReentrant whenNotPaused {
        _onlyRebalancer();
        _rebalance(_decodeRebalancePct(performData));
    }

    /// @notice Rebalances the vaults based on the specified rebalance percentage
    /// @dev Can be executed by anybody with the REBALANCER_ROLE, but not when the contract is paused
    /// @param rebalancePct The percentage(in BSP) of the depositVault to rebalance
    function _rebalance(uint256 rebalancePct) private {
        require(rebalancePct > 0 && rebalancePct <= maxRebalanceThreshold, "IIN");

        // don't do rebalance during high volatility
        (uint256 depositSpotPrice,) = _checkVolatility();

        // don't rebalance if there are too few target tokens in the depositVault
        require(_targetTokenRatio(depositSpotPrice) >= excessTargetTokenThreshold, "ITT");

        // calculate how many shares to withdraw from the depositVault
        uint256 toWithdraw = PctMath.pctOf(depositVault.balanceOf(address(this)), rebalancePct);

        // withdraw shares from the depositVault
        depositVault.withdraw(toWithdraw, address(this));

        // take a portion of targetToken as fees before depositing them to the targetVault
        uint256 fees = _distributeTargetTokenFees();

        // get pending token amounts
        uint256 depositTokenBalance = depositToken.balanceOf(address(this));
        uint256 targetTokenBalance = targetToken.balanceOf(address(this));

        // deposit pending depositToken to the depositVault
        if (depositTokenBalance > 0) {
            depositVault.deposit(isInverted ? 0 : depositTokenBalance, isInverted ? depositTokenBalance : 0, address(this));
        }

        // deposit pending targetToken to the targetVault
        uint256 targetShares = targetVault.deposit(isInverted ? targetTokenBalance : 0, isInverted ? 0 : targetTokenBalance, address(this));
        require(targetShares > 0, "ZAM");

        emit Rebalance(rebalancePct, toWithdraw, depositTokenBalance, targetTokenBalance, fees);
    }

    /// @inheritdoc IAegisVaultOwnerActions
    function sweepExtraTokens(address _token, address _recipient) external override {
        _onlyAdmin();
        require(
            _token != address(depositVault) && _token != address(targetVault) && _token != address(depositToken)
                && _token != address(targetToken),
            "WTK"
        );

        IERC20 token = IERC20(_token);
        uint256 tokenBalance = token.balanceOf(address(this));
        require(tokenBalance > 0, "ZBL");
        token.safeTransfer(_recipient, tokenBalance);

        emit SweepExtraTokens(msg.sender, _token, _recipient, tokenBalance);
    }

    /// @inheritdoc IAegisVaultOwnerActions
    function claim(
        address merkleDistributor,
        address recipient,
        address[] calldata users,
        address[] calldata tokens,
        uint256[] calldata amounts,
        bytes32[][] calldata proofs
    )
        external
        override
    {
        _onlyAdmin();

        // In case reward token is depositVault, targetVault, depositToken or targetToken,
        // we ensure that only the increase in balance is withdrawn.
        // It's also important in order to support rebasing rewards tokens that take a fee on transfers
        uint256[] memory balancesBefore = new uint256[](tokens.length);
        for (uint256 i = 0; i < tokens.length; i++) {
            balancesBefore[i] = IERC20(tokens[i]).balanceOf(address(this));
        }

        IMerklDistributor(merkleDistributor).claim(users, tokens, amounts, proofs);

        // Iterate over the list of token addresses and transfer the corresponding amounts to the recipient
        for (uint256 i = 0; i < tokens.length; i++) {
            uint256 balanceIncrease = IERC20(tokens[i]).balanceOf(address(this)).sub(balancesBefore[i]);
            IERC20(tokens[i]).safeTransfer(recipient, balanceIncrease);
        }
    }

    /// @notice Sends withdraw fees to feeRecipient
    /// @param depositShares Amount of depositVault shares to be withdrawn
    /// @param targetShares Amount of targetVault shares to be withdrawn
    /// @return depositShareFees Collected depositVault share fees
    /// @return targetShareFees Collected targetVault share fees
    function _distributeWithdrawFees(
        uint256 depositShares,
        uint256 targetShares
    )
        private
        returns (uint256 depositShareFees, uint256 targetShareFees)
    {
        // feeRecipient cannot be NULL. This is checked and controlled in the setters
        if (withdrawFee > 0) {
            depositShareFees = PctMath.pctOf(depositShares, withdrawFee);
            if (depositShareFees > 0) {
                depositVault.safeTransfer(feeRecipient, depositShareFees);
            }
            targetShareFees = PctMath.pctOf(targetShares, withdrawFee);
            if (targetShareFees > 0) {
                targetVault.safeTransfer(feeRecipient, targetShareFees);
            }
        }
    }

    /// @notice Sends targetToken fees to feeRecipient
    /// @return targetTokenFees Collected targetToken fees
    function _distributeTargetTokenFees() private returns (uint256 targetTokenFees) {
        // feeRecipient cannot be NULL. This is checked and controlled in the setters
        if (baseFee > 0) {
            targetTokenFees = PctMath.pctOf(targetToken.balanceOf(address(this)), baseFee);
            if (targetTokenFees > 0) {
                targetToken.safeTransfer(feeRecipient, targetTokenFees);
            }
        }
    }

    /// @dev takes in amounts{0,1} and a price(in terms of token1/token0) and returns a total value denominated in token1
    function _calculateValue(uint256 amount0, uint256 amount1, uint256 price) private pure returns (uint256 value) {
        value = _mulDiv(amount0, price, PRECISION).add(amount1);
    }

    /// @dev Calculates the context for the deposit operation (avoids stack too deep error)
    /// @param depositSharesAmount Amount of deposit shares
    /// @param depositSpotPrice Current spot price in the deposit vault
    /// @param targetSpotPrice Current spot price in the target vault
    /// @return ctx The deposit context
    function _prepareDepositCtx(
        uint256 depositSharesAmount,
        uint256 depositSpotPrice,
        uint256 targetSpotPrice
    )
        private
        view
        returns (UV3Math.DepositCtx memory ctx)
    {
        ctx = UV3Math.prepareDepositCtx(depositVault, targetVault, depositSharesAmount, depositSpotPrice, targetSpotPrice);
    }

    function _mulDiv(uint256 a, uint256 b, uint256 c) private pure returns (uint256 result) {
        result = a.mul(b).div(c);
    }

    /// @notice Distributes aegisShares to depositor based on the value of their deposit of depositVault shares
    /// @param depositSharesAmount Amount of depositVault shares transferred from sender to AegisVault
    /// @param aegisTotalSupply The initial total supply of Aegis liquidity tokens
    /// @param depositSpotPrice Current spot price in the deposit vault
    /// @param targetSpotPrice Current spot price in the target vault
    /// @return aegisShares Quantity of Aegis liquidity tokens minted as a result of deposit
    function __deposit(
        uint256 depositSharesAmount,
        uint256 aegisTotalSupply,
        uint256 depositSpotPrice,
        uint256 targetSpotPrice
    )
        private
        returns (uint256 aegisShares)
    {
        // NB: we collect any uncollected swap fees before valuing deposits
        depositVault.collectFees();
        targetVault.collectFees();

        UV3Math.DepositCtx memory ctx = _prepareDepositCtx(depositSharesAmount, depositSpotPrice, targetSpotPrice);

        bool isApproxEqual0 = _isApproxEq(ctx.userContributionToTotal0, ctx.userDepositAmount0);
        bool isApproxEqual1 = _isApproxEq(ctx.userContributionToTotal1, ctx.userDepositAmount1);

        bool isApproxEqual = isApproxEqual0 && isApproxEqual1;
        bool isBalanced = (ctx.userContributionToTotal0 > ctx.userDepositAmount0 && ctx.userContributionToTotal1 < ctx.userDepositAmount1)
            || (ctx.userContributionToTotal0 < ctx.userDepositAmount0 && ctx.userContributionToTotal1 > ctx.userDepositAmount1);

        // NOTE: any invariant checks should never happen, but we enforce them nonetheless for safety guarantees
        /// @dev invariant check for guaranteed safety. User must not get more of both tokens
        require(isBalanced || isApproxEqual, "IMB");

        IQuoter _quoter = quoter; // SLOAD for gas savings

        // any implied buying or selling of tokens happens in the targetVault
        // it is so because the deposit is provided in depositVault shares
        // (tokens in these shares are proportional to the tokens in the depositVault)
        if (!isApproxEqual && doCheckImpliedSlippage) {
            int24 currentTick = targetVault.currentTick();
            uint24 fee = targetVault.fee();

            uint256 deltaValue;
            if (ctx.userContributionToTotal0 > ctx.userDepositAmount0) {
                // in this case the user's token0 stake post deposit exceeds their effective token0 deposit
                // and obviously their token1 stake post deposit would be below their effective token1 deposit
                // so the user essentially sold some of their token1 for more token0
                // they effectively sold (userDepositAmount1 - userContributionToTotal1) of token1
                // for (userContributionToTotal0 - userDepositAmount0) of token0

                // figure out how much token0 the user would get if they were to the swap on the targetVault
                uint256 deltaAmountIn = ctx.userDepositAmount1.sub(ctx.userContributionToTotal1);
                uint256 actualDeltaOut0 = ctx.userContributionToTotal0.sub(ctx.userDepositAmount0);
                if (UV3Math.fetchSpot(token1, token0, currentTick, deltaAmountIn) > 0) {
                    uint256 realDeltaOut0 = _quoter.quoteExactInputSingle(token1, token0, fee, deltaAmountIn, 0);
                    /// @dev invariant check for guaranteed safety. Assets valued at spot price without slippage must exceed
                    /// quoter valuation which accounts for slippage beyond starting spot price. Should never fail.
                    require(actualDeltaOut0 >= realDeltaOut0, "USW");
                    // token1 denominated value of the delta between received vs expected
                    deltaValue = _mulDiv(actualDeltaOut0.sub(realDeltaOut0), targetSpotPrice, PRECISION);
                } else {
                    deltaValue = actualDeltaOut0;
                }
            } else {
                // in this case the user's token1 stake post deposit exceeds their effective token1 deposit
                // and obviously their token0 stake post deposit would be below their effective token0 deposit
                // so the user essentially sold some of their token0 for more token1
                // they effectively sold (userDepositAmount0 - userContributionToTotal0) of token0
                // for (userContributionToTotal1 - userDepositAmount1) of token1

                // figure out how much token1 the user would get if they were to the swap on the targetVault
                uint256 deltaAmountIn = ctx.userDepositAmount0.sub(ctx.userContributionToTotal0);
                uint256 actualDeltaOut1 = ctx.userContributionToTotal1.sub(ctx.userDepositAmount1);
                if (UV3Math.fetchSpot(token0, token1, currentTick, deltaAmountIn) > 0) {
                    uint256 realDeltaOut1 = _quoter.quoteExactInputSingle(token0, token1, fee, deltaAmountIn, 0);
                    /// @dev invariant check for guaranteed safety. Assets valued at spot price without slippage must exceed
                    /// quoter valuation which accounts for slippage beyond starting spot price. Should never fail.
                    require(actualDeltaOut1 >= realDeltaOut1, "USW");
                    // token1 denominated value of the delta between received vs expected
                    deltaValue = actualDeltaOut1.sub(realDeltaOut1);
                } else {
                    deltaValue = actualDeltaOut1;
                }
            }
            // reduce user value by the delta and re-calculate user value share (in 2 vaults)
            ctx.userValueContributionU18 = _mulDiv(
                ctx.userDepositValueU18.sub(deltaValue.mul(PRECISION)),
                PRECISION,
                ctx.aegisValueInDepositVaultU18.add(ctx.aegisValueInTargetVaultU18)
            );
        }
        // if userContributionToTotal0 == userDepositAmount0, no share adjustment is needed

        // Since we already transferred the depositShares to the AegisVault before __deposit
        // this means that the userValueContributionU18 is effectively true at this point
        // i.e. the user is entitled to newly minted Aegis shares that reflect userValueContributionU18
        // newAegisShares / (initialAegisTotalSupply + newAegisShares) = userValueContributionU18
        // solve for newAegisShares => newAegisShares = userValueContributionU18 * initialAegisTotalSupply / (1 - userValueContributionU18)
        if (aegisTotalSupply == 0) {
            // better to use userDepositValue than userValueContributionU18 here, because userValueContributionU18 could be very small
            aegisShares = ctx.userDepositValueU18.div(PRECISION);
            // simplified check for initial deposit
            require(aegisShares >= MIN_INITIAL_DEPOSIT, "VTS");
        } else {
            /// @dev invariant check for guaranteed safety, since at this point the AegisVault has received any ICHIVault shares
            /// either from a depositToken deposit or for a depositVault share transfer therefore given existing prior deposits
            /// the user's contribution to the whole must necessarily be less than the whole i.e. PRECISION i.e. 1e18
            require(ctx.userValueContributionU18 < PRECISION, "VTS");
            aegisShares = _mulDiv(ctx.userValueContributionU18, aegisTotalSupply, PRECISION.sub(ctx.userValueContributionU18));
        }
    }

    /// @dev Withdraws liquidity from an ICHIVault
    /// @param ichiVault The ICHI vault to withdraw from
    /// @param ichiShares The number of ICHI vault shares to withdraw
    /// @param to The address to receive the withdrawn tokens
    /// @return token0Amt The amount of token0 withdrawn
    /// @return token1Amt The amount of token1 withdrawn
    function _withdrawFromVault(
        IICHIVault ichiVault,
        uint256 ichiShares,
        address to
    )
        private
        returns (uint256 token0Amt, uint256 token1Amt)
    {
        if (ichiShares > 0) {
            (token0Amt, token1Amt) = ichiVault.withdraw(ichiShares, to);
        }
    }

    /// @dev Calculates pending ratio for an ICHIVault (including both tokens, not just the given ICHIVault's deposit token)
    /// @param ichiVault The ICHI vault to calculate the pending ratio for
    /// @param spotPrice The current spot price
    /// @return pendingRatio The pending deposits ratio expressed in BSP
    function _pendingHoldingsRatio(IICHIVault ichiVault, uint256 spotPrice) private view returns (uint256 pendingRatio) {
        // calculate pending deposits token ratio (using BOTH tokens)
        uint256 pending0 = IERC20(token0).balanceOf(address(ichiVault));
        uint256 pending1 = IERC20(token1).balanceOf(address(ichiVault));
        (uint256 token0Amt, uint256 token1Amt) = ichiVault.getTotalAmounts(); // NB: excluding any uncollected fees

        uint256 pendingValue = _calculateValue(pending0, pending1, spotPrice);
        uint256 vaultValue = _calculateValue(token0Amt, token1Amt, spotPrice);

        // vaultValue is guaranteed to be > 0 when there are pending deposits
        pendingRatio = pendingValue > 0 ? _mulDiv(pendingValue, PCT_DIVISOR, vaultValue) : 0;
    }

    /// @dev Calculates targetToken ratio to the total of the AegisVault's shares in the depositVault
    /// @param spotPrice The current spot price
    /// @return targetTokenRatio The ratio of target tokens to total tokens in the deposit vault expressed in BSP
    function _targetTokenRatio(uint256 spotPrice) private view returns (uint256 targetTokenRatio) {
        (uint256 token0Amount, uint256 token1Amount) = _calculateAegisVaultAmountsInICHIVault(depositVault);
        // if isInverted token1 is depositToken and token0 is targetToken
        // if !isInverted token0 is depositToken and token1 is targetToken

        uint256 totalValue = _calculateValue(token0Amount, token1Amount, spotPrice);

        uint256 token1Ratio = _mulDiv(token1Amount, PCT_DIVISOR, totalValue);
        targetTokenRatio = isInverted ? PCT_DIVISOR.sub(token1Ratio) : token1Ratio;
    }

    function _calculateVolatility() private view returns (uint256 depositSpotPrice, uint256 targetSpotPrice, uint256 volatility) {
        UV3Math.CalculateVolatilityParams memory cvp = UV3Math.CalculateVolatilityParams({
            token0: token0,
            token1: token1,
            depositVault: depositVault,
            targetVault: targetVault,
            aegisTwapPeriod: twapPeriod,
            isSamePool: isSamePool
        });

        (depositSpotPrice, targetSpotPrice, volatility) = UV3Math.calculateVolatility(cvp);
    }

    /// @dev Checks volatility and pending deposits before allowing deposits or rebalances
    /// Reverts if any of the following 3 checks do not pass:
    /// 1. volatility exceeds maxVolatility
    /// 2. volatility exceeds hysteresis and either ICHIVaults underlying pool's oracle was updated in the current block
    /// 3. either ICHIVault's pendingDeposits exceeds pendingThreshold
    /// we _checkVolatility on deposits and rebalances
    /// we DO NOT _checkVolatility on withdraws to guarantee that withdraws will succeed given 0 slippage guarantees
    /// @return depositSpotPrice The spot price in the deposit vault
    /// @return targetSpotPrice The spot price in the target vault
    function _checkVolatility() private view returns (uint256 depositSpotPrice, uint256 targetSpotPrice) {
        uint256 volatility;
        (depositSpotPrice, targetSpotPrice, volatility) = _calculateVolatility();

        // do not allow rebalances and deposits if the price in either of the ICHIVaults is too volatile
        require(volatility <= maxVolatility, "VHG");
        // also do the hysteresis check
        if (volatility > hysteresis) {
            require(_isOracleAged(depositVault) && _isOracleAged(targetVault), "VHC");
        }

        // don't rebalance or deposit if there are significant pending deposits in either of the ICHIVaults
        require(
            _pendingHoldingsRatio(depositVault, depositSpotPrice) <= pendingThreshold
                && _pendingHoldingsRatio(targetVault, targetSpotPrice) <= pendingThreshold,
            "PDT"
        );

        return (depositSpotPrice, targetSpotPrice);
    }

    /// @dev Checks if rebalances are acceptable with the current volatility
    /// @return acceptable True if rebalances are acceptable, false otherwise
    /// @return depositSpotPrice The spot price in the deposit vault
    function _isAcceptableVolatility() private view returns (bool acceptable, uint256 depositSpotPrice) {
        (uint256 _depositSpotPrice, uint256 targetSpotPrice, uint256 volatility) = _calculateVolatility();
        depositSpotPrice = _depositSpotPrice;

        // do not allow rebalances and deposits if the price in either of the vaults is too volatile
        acceptable = (volatility <= maxVolatility)
            && (volatility <= hysteresis || (_isOracleAged(depositVault) && _isOracleAged(targetVault)))
            && (_pendingHoldingsRatio(depositVault, depositSpotPrice) <= pendingThreshold)
            && (_pendingHoldingsRatio(targetVault, targetSpotPrice) <= pendingThreshold);
    }

    function _isOracleAged(IICHIVault ichiVault) private view returns (bool aged) {
        aged = UV3Math.isOracleAged(ichiVault);
    }

    function _calculateAegisVaultAmountsInICHIVault(IICHIVault ichiVault) private view returns (uint256 amount0, uint256 amount1) {
        (amount0, amount1) = UV3Math.calculateAegisVaultAmountsInICHIVault(ichiVault);
    }

    /// @dev Checks if the recipient address is valid
    /// @param recipient The address to check
    function _checkValidRecipient(address recipient) private view {
        require(recipient != NULL_ADDRESS && recipient != address(this), "IRP");
    }

    /// @dev Checks if the amount is valid (greater than zero)
    /// @param amount The amount to check
    function _checkValidAmount(uint256 amount) private pure {
        require(amount > 0, "ZAM");
    }

    /// @dev Checks if the number of Aegis shares minted meets the minimum desired amount
    /// @param aegisMinted The number of Aegis shares minted
    /// @param minimumAegisDesired The minimum number of Aegis shares desired
    function _checkDepositShares(uint256 aegisMinted, uint256 minimumAegisDesired) private pure {
        require(aegisMinted >= minimumAegisDesired, "SET");
    }

    /// @dev Checks if the actual withdrawal amounts meet the minimum slippage requirements
    /// @param actualSlippage The actual amounts withdrawn
    /// @param minSlippage The minimum acceptable amounts for withdrawal
    function _checkWithdrawSlippage(WithdrawSlippageData memory actualSlippage, WithdrawSlippageData memory minSlippage) private pure {
        require(
            actualSlippage.depositSharesAmount >= minSlippage.depositSharesAmount
                && actualSlippage.targetSharesAmount >= minSlippage.targetSharesAmount
                && actualSlippage.depositTokenAmount >= minSlippage.depositTokenAmount
                && actualSlippage.targetTokenAmount >= minSlippage.targetTokenAmount,
            "TMS"
        );
    }

    function _isApproxEq(uint256 a, uint256 b) private view returns (bool) {
        uint256 abs = (a < b) ? (b - a) : (a - b);
        return abs <= maxDelta;
    }

    function _grantMaxAllowanceToICHIVault(IERC20 token, IICHIVault ichiVault) internal {
        address _ichiVault = address(ichiVault);
        uint256 currentICHIVaultAllowance = token.allowance(address(this), _ichiVault);
        uint256 allowanceToMax = MAX_UINT256.sub(currentICHIVaultAllowance);
        if (allowanceToMax > 0) {
            token.safeIncreaseAllowance(_ichiVault, allowanceToMax);
        }
    }
}
