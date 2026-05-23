// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Flying Tulip Inc. All rights reserved.
pragma solidity ^0.8.30;

import {
    IERC20Metadata,
    IERC20
} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";

import {IStrategy} from "@ft-common/interfaces/IStrategy.sol";
import {IOracleUSD} from "@ft-common/interfaces/IOracleUSD.sol";

import {IPositionsManager} from "../interfaces/IPositionsManager.sol";
import {IConfigRegistry} from "../interfaces/IConfigRegistry.sol";
import {AccountSnapshot} from "../interfaces/IAccountValuesLens.sol";
import {IIRM} from "../interfaces/IIRM.sol";
import {RiskLib} from "../utils/RiskLib.sol";
import {Constants} from "../utils/Constants.sol";

interface ILeverageRfqEngineLike {
    enum LeverageAction {
        OPEN,
        CLOSE,
        SWAP
    }

    struct LeveragedOrder {
        LeverageAction action;
        address user;
        address sellToken;
        address buyToken;
        uint256 sellAmount;
        uint256 buyAmount;
        uint32 validTo;
        uint256 feeAmount;
    }

    function DOMAIN_SEPARATOR() external view returns (bytes32);
    function setPreSignature(bytes32 digest, bool signed) external;
    function broadcastOrder(LeveragedOrder calldata order) external returns (bytes32);
    function orderDigest(LeveragedOrder calldata order) external view returns (bytes32);
    function cancelOrder(LeveragedOrder calldata order) external;
}

/// @notice Principal-only wrapper for a PM-held delta-neutral staking strategy.
/// @dev Depositors only own 1:1 collateral principal. Surplus above principal is claimable yield.
contract DeltaNeutralStakingStrategy is IStrategy, ERC20, Ownable, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;

    uint256 internal constant WAD = Constants.WAD;
    uint256 internal constant BPS = Constants.BPS;

    error StrategyOnlyManager();
    error StrategyInvalidAssets();
    error StrategyInvalidLeverage();
    error StrategyInvalidOrder();
    error StrategyRecursiveWrapper();

    event OperatorSet(address indexed operator, bool allowed);
    event TargetLeverageUpdated(uint256 prevBps, uint256 nextBps);

    IPositionsManager public immutable pm;
    ILeverageRfqEngineLike public immutable leverageEngine;
    address public immutable override token;
    address public immutable borrowAsset;
    address public immutable stakingAsset;

    address public ftYieldWrapper;
    uint256 public targetLeverageBps;

    mapping(address => bool) public operators;

    modifier onlyftYieldWrapper() {
        if (msg.sender != ftYieldWrapper) revert StrategyNotYieldWrapper();
        _;
    }

    modifier onlyManager() {
        if (msg.sender != owner() && !operators[msg.sender]) revert StrategyOnlyManager();
        _;
    }

    constructor(
        address owner_,
        address ftYieldWrapper_,
        address pm_,
        address leverageEngine_,
        address collateralAsset_,
        address borrowAsset_,
        address stakingAsset_,
        uint256 targetLeverageBps_
    )
        ERC20(
            string.concat(
                "Flying Tulip Delta Neutral ",
                IERC20Metadata(collateralAsset_).symbol(),
                "/",
                IERC20Metadata(borrowAsset_).symbol(),
                "/",
                IERC20Metadata(stakingAsset_).symbol()
            ),
            string.concat("ftDNS-", IERC20Metadata(collateralAsset_).symbol())
        )
        Ownable(owner_)
    {
        if (
            owner_ == address(0) || ftYieldWrapper_ == address(0) || pm_ == address(0)
                || leverageEngine_ == address(0) || collateralAsset_ == address(0)
                || borrowAsset_ == address(0) || stakingAsset_ == address(0)
        ) revert StrategyZeroAddress();
        if (
            collateralAsset_ == borrowAsset_ || collateralAsset_ == stakingAsset_
                || borrowAsset_ == stakingAsset_
        ) revert StrategyInvalidAssets();
        if (targetLeverageBps_ < BPS) revert StrategyInvalidLeverage();

        IPositionsManager pmRef = IPositionsManager(pm_);
        IConfigRegistry registry = pmRef.config();
        IConfigRegistry.AssetCfg memory collateralCfg = registry.getAssetCfg(collateralAsset_);
        IConfigRegistry.AssetCfg memory borrowCfg = registry.getAssetCfg(borrowAsset_);
        IConfigRegistry.AssetCfg memory stakingCfg = registry.getAssetCfg(stakingAsset_);

        if (!collateralCfg.enabled || !collateralCfg.collateral) revert StrategyInvalidAssets();
        if (!borrowCfg.enabled || !borrowCfg.borrowable) revert StrategyInvalidAssets();
        if (!stakingCfg.enabled || !stakingCfg.collateral) revert StrategyInvalidAssets();
        if (collateralCfg.ftYieldWrapper == ftYieldWrapper_) revert StrategyRecursiveWrapper();

        pm = pmRef;
        leverageEngine = ILeverageRfqEngineLike(leverageEngine_);
        ftYieldWrapper = ftYieldWrapper_;
        token = collateralAsset_;
        borrowAsset = borrowAsset_;
        stakingAsset = stakingAsset_;
        targetLeverageBps = targetLeverageBps_;

        emit Transfer(address(0), address(this), 0);
    }

    function decimals() public view override(ERC20, IERC20Metadata) returns (uint8) {
        return IERC20Metadata(token).decimals();
    }

    function setftYieldWrapper(address ftYieldWrapper_) external onlyftYieldWrapper {
        if (ftYieldWrapper_ == address(0)) revert StrategyZeroAddress();
        ftYieldWrapper = ftYieldWrapper_;
        emit UpdateftYieldWrapper(ftYieldWrapper_);
    }

    function setOperator(address operator, bool allowed) external onlyOwner {
        if (operator == address(0)) revert StrategyZeroAddress();
        operators[operator] = allowed;
        emit OperatorSet(operator, allowed);
    }

    function setTargetLeverageBps(uint256 targetLeverageBps_) external onlyManager {
        if (targetLeverageBps_ < BPS) revert StrategyInvalidLeverage();
        uint256 prev = targetLeverageBps;
        targetLeverageBps = targetLeverageBps_;
        emit TargetLeverageUpdated(prev, targetLeverageBps_);
    }

    function capital() external view returns (uint256) {
        return totalSupply();
    }

    function positionToken() external view override returns (address) {
        return token;
    }

    function valueOfCapital() public view returns (uint256) {
        (uint256 pmCollateralAvail,) = pm.getBalance(address(this), token);
        return IERC20(token).balanceOf(address(this)) + pmCollateralAvail;
    }

    function yield() public view returns (uint256) {
        uint256 capitalValue = valueOfCapital();
        uint256 principal = totalSupply();
        return capitalValue > principal ? capitalValue - principal : 0;
    }

    function principalDeficit() external view returns (uint256) {
        uint256 capitalValue = valueOfCapital();
        uint256 principal = totalSupply();
        return capitalValue < principal ? principal - capitalValue : 0;
    }

    function availableToWithdraw() public view returns (uint256) {
        uint256 liquidCollateral =
            IERC20(token).balanceOf(address(this)) + _previewMaxPmWithdraw(token);
        uint256 principal = totalSupply();
        return liquidCollateral > principal ? principal : liquidCollateral;
    }

    function maxAbleToWithdraw(uint256 amount) external view returns (uint256) {
        uint256 liquidity = availableToWithdraw();
        return liquidity > amount ? amount : liquidity;
    }

    function availableToClaimYield() public view returns (uint256) {
        return _realizedFtBalance();
    }

    function availableToClaimStakingYield() public view returns (uint256) {
        return _stakingYieldLiquidity();
    }

    function previewTargetBorrowCurrent() public view returns (uint256) {
        uint256 capitalValue = valueOfCapital();
        if (targetLeverageBps <= BPS || capitalValue == 0) return 0;
        uint256 capitalUSDWad = _assetToUsd(token, capitalValue);
        uint256 targetBorrowUSDWad = Math.mulDiv(capitalUSDWad, targetLeverageBps - BPS, BPS);
        return _usdToAsset(borrowAsset, targetBorrowUSDWad);
    }

    function debtState()
        external
        view
        returns (
            uint256 debtShares,
            uint256 debtStored,
            uint256 debtCurrent,
            uint256 debtPreviewInterest
        )
    {
        return _debtState();
    }

    function previewOpenPosition(uint256 slippageBps)
        external
        view
        returns (uint256 borrowAmount, uint256 minStakingOut)
    {
        uint256 targetBorrowCurrent = previewTargetBorrowCurrent();
        (,, uint256 debtCurrent,) = _debtState();
        if (targetBorrowCurrent <= debtCurrent) return (0, 0);

        borrowAmount = targetBorrowCurrent - debtCurrent;
        minStakingOut = _quoteSellToMinBuy(borrowAsset, borrowAmount, stakingAsset, slippageBps);
    }

    function previewClosePosition(uint256 slippageBps)
        external
        view
        returns (uint256 stakingToSell, uint256 minBorrowOut)
    {
        uint256 targetBorrowCurrent = previewTargetBorrowCurrent();
        (,, uint256 debtCurrent,) = _debtState();
        if (debtCurrent <= targetBorrowCurrent) return (0, 0);

        minBorrowOut = debtCurrent - targetBorrowCurrent;
        stakingToSell =
            _quoteBuyTargetToMaxSell(stakingAsset, borrowAsset, minBorrowOut, slippageBps);
    }

    function previewCloseFromToken(uint256 slippageBps)
        external
        view
        returns (uint256 tokenToSell, uint256 minBorrowOut)
    {
        (,, uint256 debtCurrent,) = _debtState();
        if (debtCurrent == 0) return (0, 0);
        minBorrowOut = debtCurrent;
        tokenToSell = _quoteBuyTargetToMaxSell(token, borrowAsset, minBorrowOut, slippageBps);
    }

    function previewSwapStakingToCollateral(
        uint256 stakingAmount,
        uint256 slippageBps
    )
        external
        view
        returns (uint256 minCollateralOut)
    {
        return _quoteSellToMinBuy(stakingAsset, stakingAmount, token, slippageBps);
    }

    function previewSwapCollateralToStaking(
        uint256 collateralAmount,
        uint256 slippageBps
    )
        external
        view
        returns (uint256 minStakingOut)
    {
        return _quoteSellToMinBuy(token, collateralAmount, stakingAsset, slippageBps);
    }

    // ──────────────────────────────────────────────────────────────────────────
    //  Order approval (thin PreSign forwarding)
    // ──────────────────────────────────────────────────────────────────────────

    function approveOpenOrder(ILeverageRfqEngineLike.LeveragedOrder calldata order)
        external
        onlyManager
        returns (bytes32 digest)
    {
        _validateOpenOrder(order);
        pm.approveBorrow(address(leverageEngine), borrowAsset, order.sellAmount + order.feeAmount);
        digest = leverageEngine.broadcastOrder(order);
    }

    function approveCloseOrder(ILeverageRfqEngineLike.LeveragedOrder calldata order)
        external
        onlyManager
        returns (bytes32 digest)
    {
        _validateCloseOrder(order);
        pm.approveEngine(
            address(leverageEngine), order.sellToken, order.sellAmount + order.feeAmount
        );
        digest = leverageEngine.broadcastOrder(order);
    }

    function approveSwapCollateralOrder(ILeverageRfqEngineLike.LeveragedOrder calldata order)
        external
        onlyManager
        returns (bytes32 digest)
    {
        _validateSwapOrder(order);
        pm.approveEngine(
            address(leverageEngine), order.sellToken, order.sellAmount + order.feeAmount
        );
        digest = leverageEngine.broadcastOrder(order);
    }

    function revokeOrder(ILeverageRfqEngineLike.LeveragedOrder calldata order)
        external
        onlyManager
    {
        leverageEngine.setPreSignature(leverageEngine.orderDigest(order), false);
    }

    function revokeOrderByDigest(bytes32 digest) external onlyManager {
        leverageEngine.setPreSignature(digest, false);
    }

    function cancelOrder(ILeverageRfqEngineLike.LeveragedOrder calldata order)
        external
        onlyManager
    {
        leverageEngine.cancelOrder(order);
    }

    // ──────────────────────────────────────────────────────────────────────────
    //  Deposits / Withdrawals / Yield
    // ──────────────────────────────────────────────────────────────────────────

    function deposit(uint256 amount) external nonReentrant onlyftYieldWrapper {
        if (amount == 0) revert StrategyAmountZero();

        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        _depositIdleCollateralIntoPm(amount);
        _mint(msg.sender, amount);
        emit Deposit(msg.sender, amount);
    }

    function withdraw(uint256 amount)
        public
        nonReentrant
        onlyftYieldWrapper
        returns (uint256 received)
    {
        if (amount == 0) revert StrategyAmountZero();

        _burn(msg.sender, amount);
        _moveCollateral(msg.sender, amount);
        received = amount;
        emit Withdraw(msg.sender, amount);
    }

    function withdrawUnderlying(uint256 amount)
        external
        nonReentrant
        onlyftYieldWrapper
        returns (uint256 received)
    {
        if (amount == 0) revert StrategyAmountZero();

        _burn(msg.sender, amount);
        _moveCollateral(msg.sender, amount);
        received = amount;
        emit WithdrawUnderlying(msg.sender, amount);
    }

    function claimYield(address treasury)
        external
        nonReentrant
        onlyftYieldWrapper
        returns (uint256 claimed)
    {
        if (treasury == address(0)) revert StrategyZeroAddress();

        _checkpointFtRewards();
        claimed = availableToClaimYield();
        if (claimed != 0) {
            _moveAsset(pm.FT(), treasury, claimed);
            _assertCapitalIntact();
            emit YieldClaimed(msg.sender, treasury, pm.FT(), claimed);
        }
    }

    function claimStakingYield(address treasury)
        external
        nonReentrant
        onlyManager
        returns (uint256 claimed)
    {
        if (treasury == address(0)) revert StrategyZeroAddress();

        claimed = availableToClaimStakingYield();
        if (claimed != 0) {
            _moveAsset(stakingAsset, treasury, claimed);
            _assertCapitalIntact();
            emit YieldClaimed(msg.sender, treasury, stakingAsset, claimed);
        }
    }

    function execute(
        address to,
        uint256 value,
        bytes calldata data
    )
        external
        nonReentrant
        onlyftYieldWrapper
        returns (bool success, bytes memory result)
    {
        if (
            to == address(pm) || to == address(leverageEngine) || to == token || to == borrowAsset
                || to == stakingAsset
        ) {
            revert StrategyCantInteractWithCoreAssets();
        }

        (success, result) = to.call{value: value}(data);
        _assertCapitalIntact();
    }

    // ──────────────────────────────────────────────────────────────────────────
    //  Internal helpers
    // ──────────────────────────────────────────────────────────────────────────

    function _depositIdleCollateralIntoPm(uint256 amount) internal {
        IERC20(token).forceApprove(address(pm), amount);
        pm.deposit(token, amount);
        IERC20(token).forceApprove(address(pm), 0);
    }

    function _moveCollateral(address to, uint256 amount) internal {
        _moveAsset(token, to, amount);
    }

    function _moveAsset(address asset, address to, uint256 amount) internal {
        uint256 idle = IERC20(asset).balanceOf(address(this));
        if (idle < amount) {
            pm.withdraw(asset, amount - idle);
        }
        IERC20(asset).safeTransfer(to, amount);
    }

    function _assertCapitalIntact() internal view {
        if (valueOfCapital() < totalSupply()) revert StrategyCapitalMustNotChange();
    }

    function _validateCommonOrder(ILeverageRfqEngineLike.LeveragedOrder calldata order)
        internal
        view
    {
        if (order.user != address(this)) revert StrategyInvalidOrder();
        if (block.timestamp > order.validTo) revert StrategyInvalidOrder();
        if (order.sellAmount == 0 || order.buyAmount == 0) revert StrategyInvalidOrder();
    }

    function _validateOpenOrder(ILeverageRfqEngineLike.LeveragedOrder calldata order)
        internal
        view
    {
        if (order.action != ILeverageRfqEngineLike.LeverageAction.OPEN) {
            revert StrategyInvalidOrder();
        }
        _validateCommonOrder(order);
        if (order.sellToken != borrowAsset || order.buyToken != stakingAsset) {
            revert StrategyInvalidOrder();
        }
    }

    function _validateCloseOrder(ILeverageRfqEngineLike.LeveragedOrder calldata order)
        internal
        view
    {
        if (order.action != ILeverageRfqEngineLike.LeverageAction.CLOSE) {
            revert StrategyInvalidOrder();
        }
        _validateCommonOrder(order);
        if (order.sellToken == token) {
            (uint256 stakingBal,) = pm.getBalance(address(this), stakingAsset);
            if (stakingBal != 0) revert StrategyInvalidOrder();
        } else if (order.sellToken != stakingAsset) {
            revert StrategyInvalidOrder();
        }
        if (order.buyToken != borrowAsset) revert StrategyInvalidOrder();
    }

    function _validateSwapOrder(ILeverageRfqEngineLike.LeveragedOrder calldata order)
        internal
        view
    {
        if (order.action != ILeverageRfqEngineLike.LeverageAction.SWAP) {
            revert StrategyInvalidOrder();
        }
        _validateCommonOrder(order);
        // After a CLOSE order, any buyAmount exceeding actual debt is deposited as
        // borrowAsset collateral by the PM.  This can happen when the order includes
        // an accrual buffer or when a filler over-delivers.  Allow swapping that
        // residual borrowAsset back to the principal token so the strategy can be
        // fully wound down.
        bool validPair = order.buyToken == token
            ? (order.sellToken == stakingAsset || order.sellToken == borrowAsset)
            : (order.sellToken == token && order.buyToken == stakingAsset);
        if (!validPair) revert StrategyInvalidOrder();
    }

    function _debtState()
        internal
        view
        returns (
            uint256 debtShares,
            uint256 debtStored,
            uint256 debtCurrent,
            uint256 debtPreviewInterest
        )
    {
        debtShares = pm.debtShares(address(this), borrowAsset);
        debtStored = _previewStoredDebt(debtShares);
        debtCurrent = _previewDebtNow(debtShares);
        debtPreviewInterest = debtCurrent > debtStored ? debtCurrent - debtStored : 0;
    }

    function _stakingYieldLiquidity() internal view returns (uint256) {
        uint256 idleStaking = IERC20(stakingAsset).balanceOf(address(this));
        (uint256 pmStakingAvail,) = pm.getBalance(address(this), stakingAsset);
        uint256 stakingBalance = idleStaking + pmStakingAvail;
        if (stakingBalance == 0) return 0;

        (,, uint256 debtCurrent,) = _debtState();
        uint256 debtCurrentUSDWad = _assetToUsd(borrowAsset, debtCurrent);
        uint256 stakingRequiredForDebt = _usdToAsset(stakingAsset, debtCurrentUSDWad);
        if (stakingBalance <= stakingRequiredForDebt) return 0;

        uint256 theoreticalStakingYield = stakingBalance - stakingRequiredForDebt;
        uint256 liquidStaking = idleStaking + _previewMaxPmWithdraw(stakingAsset);
        return theoreticalStakingYield > liquidStaking ? liquidStaking : theoreticalStakingYield;
    }

    function _realizedFtBalance() internal view returns (uint256 total) {
        address ft = pm.FT();
        if (ft == address(0)) return 0;

        total = IERC20(ft).balanceOf(address(this));
        (uint256 pmFtAvail,) = pm.getBalance(address(this), ft);
        total += pmFtAvail;
    }

    function _previewStoredDebt(uint256 shares) internal view returns (uint256) {
        if (shares == 0) return 0;

        uint256 assetTotalShares = pm.totalDebtShares(borrowAsset);
        if (assetTotalShares == 0) return 0;

        (,, uint256 borrows,,,,,) = pm.astate(borrowAsset);
        if (borrows == 0) return 0;

        return Math.mulDiv(shares, borrows, assetTotalShares, Math.Rounding.Ceil);
    }

    function _previewDebtNow(uint256 shares) internal view returns (uint256) {
        if (shares == 0) return 0;

        uint256 assetTotalShares = pm.totalDebtShares(borrowAsset);
        if (assetTotalShares == 0) return 0;

        uint256 borrowsNow = _previewBorrowsNow(borrowAsset);
        if (borrowsNow == 0) return 0;

        return Math.mulDiv(shares, borrowsNow, assetTotalShares, Math.Rounding.Ceil);
    }

    function _previewBorrowsNow(address asset) internal view returns (uint256 borrowsNow) {
        (, uint256 cash, uint256 borrows,,,, uint256 lastAccrual,) = pm.astate(asset);
        if (borrows == 0) return 0;
        if (lastAccrual == 0 || block.timestamp == lastAccrual) return borrows;

        uint256 denom = cash + borrows;
        if (denom == 0) return borrows;

        IConfigRegistry.AssetCfg memory c = pm.config().getAssetCfg(asset);
        uint256 utilWad = Math.mulDiv(borrows, WAD, denom);
        uint256 aprWad = IIRM(c.irm).borrowAPR(asset, utilWad);
        uint256 dt = block.timestamp - lastAccrual;
        uint256 interestWad = Math.mulDiv(aprWad, dt, 365 days);
        uint256 interestUnits = Math.mulDiv(borrows, interestWad, WAD, Math.Rounding.Ceil);
        return borrows + interestUnits;
    }

    function _previewMaxPmWithdraw(address asset) internal view returns (uint256) {
        (uint256 avail,) = pm.getBalance(address(this), asset);
        if (avail == 0 || pm.withdrawPaused(asset)) return 0;

        uint256 cash;
        (, cash,,,,,,) = pm.astate(asset);
        if (cash == 0) return 0;

        uint256 hi = cash < avail ? cash : avail;
        if (_canWithdrawFromPm(asset, hi)) return hi;
        if (!_canWithdrawFromPm(asset, 1)) return 0;

        uint256 lo = 0;
        uint256 upper = hi;
        while (lo < upper) {
            uint256 mid = (lo + upper + 1) / 2;
            if (_canWithdrawFromPm(asset, mid)) {
                lo = mid;
            } else {
                upper = mid - 1;
            }
        }
        return lo;
    }

    function _canWithdrawFromPm(address asset, uint256 amt) internal view returns (bool) {
        if (amt == 0) return true;

        (uint256 avail,) = pm.getBalance(address(this), asset);
        if (avail < amt || pm.withdrawPaused(asset)) return false;

        uint256 cash;
        (, cash,,,,,,) = pm.astate(asset);
        if (cash < amt) return false;

        IConfigRegistry registry = pm.config();
        AccountSnapshot memory snap = pm.valuesLens().accountValues(address(pm), address(this));
        uint256 equityUSDWad = snap.equityUSDWad;
        uint256 maintUSDWad = snap.maintUSDWad;
        uint256 pnlAdjCollUSDWad = snap.pnlAdjCollUSDWad;
        uint16 minHf = registry.marginHfSafeBps();
        uint256 minEquity = registry.marginMinEquityUSDWad();
        if (maintUSDWad == 0) return true;

        uint256 px = IOracleUSD(registry.oracleRouter()).priceUSD(asset);
        uint256 scale = 10 ** uint256(IERC20Metadata(asset).decimals());
        uint256 valueUSDOld = Math.mulDiv(avail, px, scale);
        uint256 valueUSDNew = Math.mulDiv(avail - amt, px, scale);

        uint256 rawDebtUSDWad =
            pnlAdjCollUSDWad > equityUSDWad ? pnlAdjCollUSDWad - equityUSDWad : 0;
        uint256 rawCollUSDWadNew = pnlAdjCollUSDWad - (valueUSDOld - valueUSDNew);
        uint256 newEquityUSDWad =
            rawCollUSDWadNew > rawDebtUSDWad ? rawCollUSDWadNew - rawDebtUSDWad : 0;

        uint16 mmBps = registry.getAssetCfg(asset).mmBps;
        uint256 maintOld = Math.mulDiv(valueUSDOld, mmBps, BPS);
        uint256 maintNew = Math.mulDiv(valueUSDNew, mmBps, BPS);
        uint256 newMaintUSDWad = maintUSDWad - (maintOld - maintNew);

        if (RiskLib.hfBps(newEquityUSDWad, newMaintUSDWad) < minHf) return false;
        return !(minEquity != 0 && pm.userDebtAssets(address(this)).length != 0
                && newEquityUSDWad < minEquity);
    }

    function _checkpointFtRewards() internal {
        _checkpointAsset(token);
        _checkpointAsset(stakingAsset);
    }

    function _checkpointAsset(address asset) internal {
        if (pm.withdrawPaused(asset) || pm.depositPaused(asset)) return;

        (uint256 avail,) = pm.getBalance(address(this), asset);
        if (avail == 0) return;

        pm.withdraw(asset, 1);
        IERC20(asset).forceApprove(address(pm), 1);
        pm.deposit(asset, 1);
        IERC20(asset).forceApprove(address(pm), 0);
    }

    function _assetToUsd(address asset, uint256 amount) internal view returns (uint256) {
        if (amount == 0) return 0;
        uint256 px = IOracleUSD(pm.config().oracleRouter()).priceUSD(asset);
        uint256 scale = 10 ** uint256(IERC20Metadata(asset).decimals());
        return Math.mulDiv(amount, px, scale);
    }

    function _usdToAsset(address asset, uint256 usdWad) internal view returns (uint256) {
        if (usdWad == 0) return 0;
        uint256 px = IOracleUSD(pm.config().oracleRouter()).priceUSD(asset);
        uint256 scale = 10 ** uint256(IERC20Metadata(asset).decimals());
        return Math.mulDiv(usdWad, scale, px);
    }

    function _quoteSellToMinBuy(
        address sellAsset,
        uint256 sellAmount,
        address buyAsset,
        uint256 slippageBps
    )
        internal
        view
        returns (uint256)
    {
        if (slippageBps >= BPS) revert StrategyInvalidOrder();
        uint256 sellUsd = _assetToUsd(sellAsset, sellAmount);
        uint256 rawBuy = _usdToAsset(buyAsset, sellUsd);
        return Math.mulDiv(rawBuy, BPS - slippageBps, BPS);
    }

    function _quoteBuyTargetToMaxSell(
        address sellAsset,
        address buyAsset,
        uint256 targetBuyAmount,
        uint256 slippageBps
    )
        internal
        view
        returns (uint256)
    {
        if (slippageBps >= BPS) revert StrategyInvalidOrder();
        uint256 buyUsd = _assetToUsd(buyAsset, targetBuyAmount);
        uint256 rawSell = _usdToAsset(sellAsset, buyUsd);
        return Math.mulDiv(rawSell, BPS, BPS - slippageBps, Math.Rounding.Ceil);
    }
}
