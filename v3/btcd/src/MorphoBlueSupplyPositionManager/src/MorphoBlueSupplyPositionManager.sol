// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/**
 * Strategy Integration Plan: Morpho Blue Direct Supply (sBTCD/WBTC Market)
 * ========================================================================
 *
 * ## Protocol Overview
 * Morpho Blue is a trustless, immutable lending singleton at
 * 0xBBBBBbbBBb9cC5e90e3b3Af64bdAF62C37EEFFCb. This position manager
 * supplies the loan token (e.g. WBTC) directly to a specific Morpho Blue
 * market identified by a bytes32 market ID, earning yield from borrower
 * interest. Unlike the existing MetaMorpho (ERC-4626) strategy which goes
 * through a vault aggregator, this is a direct market supply — giving us
 * control over exactly which market our capital is deployed to.
 *
 * ## Chain of Command
 *
 *   Multicall (owner)
 *       |
 *       v
 *   MorphoBlueSupplyPositionManager
 *       |  loanToken.approve(Morpho, max) [in constructor]
 *       |  Morpho.supply(marketParams, assets, 0, address(this), "")
 *       |  Morpho.withdraw(marketParams, assets/shares, ..., receiver)
 *       v
 *   Morpho Blue Singleton (0xBBBB...FCb)
 *       |  position[id][manager].supplyShares tracked
 *       |  Interest accrued via AdaptiveCurveIrm on each interaction
 *       v
 *   Borrowers (collateralizing sBTCD) pay interest -> share price grows
 *
 * ## Strategy Type
 * TYP: "MORPHOBLUE:SBTCDWBTC:WBTC:0" (version is a number, not prefixed)
 *
 * ## Contract Interactions
 *
 * ### Deposit Flow
 * 1. Loan token already transferred to this contract by Multicall
 * 2. Call IMorpho.supply(marketParams, assets, 0, address(this), "")
 *    - Morpho pulls loan token via transferFrom (pre-approved in constructor)
 *    - Returns (assetsSupplied, sharesSupplied)
 * 3. Emit Deposited(assets, shares)
 *
 * ### Withdraw Flow
 * Idle balance transfers are handled by the driver via transferERC20Tokens
 * (inherited from StrategyBase). This function only withdraws from Morpho Blue:
 * 1. For partial: IMorpho.withdraw(marketParams, assets, 0, address(this), receiver)
 * 2. For full: IMorpho.withdraw(marketParams, 0, allShares, address(this), receiver)
 *    - Using shares for full exit avoids dust from rounding
 * 3. Morpho transfers loan token directly to receiver (slush fund)
 * 4. Emit Withdrawn(shares, assets, receiver)
 * 5. May revert with INSUFFICIENT_LIQUIDITY if market is fully utilised
 *
 * ### Maintenance Flow
 * 1. Check idle loan token balance of this contract
 * 2. If > 0, supply it to Morpho Blue (same as deposit)
 * 3. No reward claiming — yield auto-accrues in share price
 *
 * ## Contract Invariants
 * - INV-C1: Token conservation — convertToAssets(supplyShares) + idleLoanToken
 *   always accounts for all deposited tokens (within rounding)
 * - INV-C2: No phantom gains — cumulative withdrawals <= cumulative deposits
 * - INV-C3: Only owner (Multicall) can call deposit/withdraw
 * - INV-C4: Approval hygiene — only Morpho Blue gets loan token approval,
 *   set once in constructor to type(uint256).max
 * - INV-C5: No reentrancy — Morpho uses pull pattern; we pass empty
 *   callback data so no external call back to us during supply
 * - INV-C6: Share accounting — getRawBalance().supplyShares matches
 *   Morpho.position(id, address(this)).supplyShares exactly
 * - INV-C7: Full exit — withdrawing all shares leaves supplyShares == 0
 *   and no tokens stuck in Morpho for this position
 * - INV-C8: Market params immutable — the market ID and its resolved
 *   MarketParams are set in constructor and never change
 *
 * ## Decimal Conventions
 * | Token | Decimals | Notes                                     |
 * |-------|----------|-------------------------------------------|
 * | WBTC  | 8        | Input/output asset for sBTCD/WBTC market   |
 * | sBTCD | 18       | Collateral token (never touched by us)     |
 * | USDC  | 6        | Input/output for USDC markets              |
 * | Supply shares | virtual offset 1e6 | Morpho Blue convention  |
 *
 * ## Security Considerations
 * - Reentrancy: Morpho Blue does state updates before external calls.
 *   We pass empty callback data (bytes("")) so no callback is invoked.
 * - Flash loan attack: Share price manipulation is mitigated by Morpho's
 *   virtual shares (VIRTUAL_SHARES=1e6, VIRTUAL_ASSETS=1).
 * - Oracle manipulation: Not relevant for supply-only — we don't borrow.
 * - Approval hygiene: Single max approval to Morpho Blue in constructor.
 *   Morpho Blue is immutable (no proxy), so the approval is safe.
 * - Liquidity risk: Withdrawals can fail if market utilisation is 100%.
 *   The driver handles this via binary search for partial withdrawal.
 * - Market ID validation: Constructor verifies the market exists by
 *   calling idToMarketParams and checking loanToken != address(0).
 */

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {StrategyBase} from "strategy-base/StrategyBase.sol";

/// @notice Minimal Morpho Blue market parameters.
struct MarketParams {
    address loanToken;
    address collateralToken;
    address oracle;
    address irm;
    uint256 lltv;
}

/// @notice Minimal interface for the Morpho Blue singleton.
interface IMorphoBlue {
    function supply(
        MarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        address onBehalf,
        bytes memory data
    ) external returns (uint256 assetsSupplied, uint256 sharesSupplied);

    function withdraw(
        MarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        address onBehalf,
        address receiver
    ) external returns (uint256 assetsWithdrawn, uint256 sharesWithdrawn);

    function accrueInterest(MarketParams memory marketParams) external;

    function idToMarketParams(bytes32 id)
        external
        view
        returns (address loanToken, address collateralToken, address oracle, address irm, uint256 lltv);

    /// @dev Returns (totalSupplyAssets, totalSupplyShares, totalBorrowAssets, totalBorrowShares, lastUpdate, fee).
    function market(bytes32 id)
        external
        view
        returns (uint128, uint128, uint128, uint128, uint128, uint128);

    /// @dev Returns (supplyShares, borrowShares, collateral).
    function position(bytes32 id, address user) external view returns (uint256, uint128, uint128);
}

/// @title MorphoBlueSupplyPositionManager
/// @notice Supplies loan tokens directly to a Morpho Blue market, earning yield from borrower interest.
/// @dev Flexible — works with any Morpho Blue market (WBTC, USDC, etc.). The loan token is resolved
///      from the market ID in the constructor.
contract MorphoBlueSupplyPositionManager is StrategyBase {
    using SafeERC20 for IERC20;

    /* ───────────────────────── Errors ───────────────────────── */
    error InvalidMarket();
    error InsufficientBalance(uint256 available, uint256 required);

    /* ───────────────────────── Events ───────────────────────── */
    event Deposited(uint256 indexed assets, uint256 sharesReceived);
    event Withdrawn(uint256 sharesRedeemed, uint256 assetsReceived, address indexed receiver);

    /* ───────────────────────── Strategy identity ───────────────────────── */
    /// @dev Format: <subtype>:<investment>:<io token>:<version>
    string public TYP;

    /* ───────────────────────── Immutables ───────────────────────── */
    IMorphoBlue public immutable MORPHO;
    bytes32 public immutable MARKET_ID;
    IERC20 public immutable LOAN_TOKEN;

    /// @dev Cached market params — immutable after construction.
    MarketParams internal _marketParams;

    constructor(address owner_, address morpho_, bytes32 marketId_, string memory typ_) Ownable(owner_) {
        require(morpho_ != address(0) && owner_ != address(0), ZeroAddress());

        MORPHO = IMorphoBlue(morpho_);
        MARKET_ID = marketId_;

        // Resolve and validate market params from Morpho Blue
        (address loanToken, address collateralToken, address oracle, address irm, uint256 lltv) =
            IMorphoBlue(morpho_).idToMarketParams(marketId_);
        require(loanToken != address(0), InvalidMarket());

        _marketParams = MarketParams({
            loanToken: loanToken,
            collateralToken: collateralToken,
            oracle: oracle,
            irm: irm,
            lltv: lltv
        });

        LOAN_TOKEN = IERC20(loanToken);

        // One-time max approval to Morpho Blue (immutable contract, safe)
        LOAN_TOKEN.forceApprove(morpho_, type(uint256).max);

        TYP = typ_;
    }

    /* ───────────────────────── Deposit ───────────────────────── */

    /// @notice Supply idle loan tokens into Morpho Blue.
    /// @param assetAmount Amount of loan token to supply
    /// @param minSharesOut Minimum supply shares expected (slippage protection)
    /// @return shares Supply shares received
    function deposit(uint256 assetAmount, uint256 minSharesOut) external onlyOwner returns (uint256 shares) {
        require(assetAmount > 0, ZeroAmount());

        (, shares) = MORPHO.supply(_marketParams, assetAmount, 0, address(this), bytes(""));

        require(shares >= minSharesOut, InsufficientBalance(shares, minSharesOut));
        emit Deposited(assetAmount, shares);
    }

    /* ───────────────────────── Withdraw ───────────────────────── */

    /// @notice Withdraw loan tokens from Morpho Blue by redeeming supply shares.
    /// @dev Only withdraws from the Morpho Blue position. Idle balance transfers
    ///      are handled by the driver via transferERC20Tokens (inherited from StrategyBase).
    /// @param assetAmount Amount of loan token to withdraw from Morpho Blue
    /// @param maxShares Maximum supply shares to burn (slippage protection)
    /// @param receiver Address to receive the withdrawn tokens
    /// @return assetsOut Loan tokens withdrawn from Morpho Blue
    function withdrawAssets(uint256 assetAmount, uint256 maxShares, address receiver)
        external
        onlyOwner
        returns (uint256 assetsOut)
    {
        require(assetAmount > 0, ZeroAmount());
        require(receiver != address(0), ZeroAddress());

        (uint256 currentShares,,) = MORPHO.position(MARKET_ID, address(this));
        require(currentShares > 0, InsufficientBalance(0, assetAmount));

        // Full exit: redeem all shares to avoid dust
        bool isFullWithdrawal = (maxShares == currentShares) && (assetAmount >= getInvestedAssets());

        if (isFullWithdrawal) {
            (assetsOut,) = MORPHO.withdraw(_marketParams, 0, currentShares, address(this), receiver);
            emit Withdrawn(currentShares, assetsOut, receiver);
        } else {
            uint256 sharesUsed;
            (assetsOut, sharesUsed) = MORPHO.withdraw(_marketParams, assetAmount, 0, address(this), receiver);
            require(sharesUsed <= maxShares, InsufficientBalance(maxShares, sharesUsed));
            emit Withdrawn(sharesUsed, assetsOut, receiver);
        }
    }

    /* ───────────────────────── View Functions ───────────────────────── */

    /// @notice Get raw balances: supply shares, idle loan token balance, total assets.
    /// @dev Reads stale on-chain data (no interest accrual). For accurate reads,
    ///      call accrueInterest() first or use the off-chain math.
    /// @return supplyShares Supply shares held in Morpho Blue
    /// @return assetBalance Idle loan token balance in this contract
    /// @return totalAssets Total value: invested assets (from shares) + idle balance
    function getRawBalance() external view returns (uint256 supplyShares, uint256 assetBalance, uint256 totalAssets) {
        (supplyShares,,) = MORPHO.position(MARKET_ID, address(this));
        assetBalance = LOAN_TOKEN.balanceOf(address(this));
        totalAssets = _sharesToAssets(supplyShares) + assetBalance;
    }

    /// @notice Get comprehensive metadata about the strategy's assets and balances.
    function extraInfo()
        external
        view
        returns (
            string memory inputAssetSymbol,
            string memory yieldAssetSymbol,
            uint8 inputAssetDecimals,
            uint8 yieldAssetDecimals,
            uint256 yieldAssetPrice,
            uint256 assetBalance,
            uint256 shareBalance
        )
    {
        IERC20Metadata loanMeta = IERC20Metadata(address(LOAN_TOKEN));

        inputAssetSymbol = loanMeta.symbol();
        inputAssetDecimals = loanMeta.decimals();
        // Morpho Blue supply shares don't have a separate token — use loan token symbol as reference
        yieldAssetSymbol = string.concat("mb", inputAssetSymbol);
        // Morpho Blue shares have ~(inputDecimals + 6) effective decimals due to VIRTUAL_SHARES=1e6
        yieldAssetDecimals = inputAssetDecimals + 6;
        // Price of 1 full unit of yield shares in terms of the loan token
        yieldAssetPrice = _sharesToAssets(10 ** yieldAssetDecimals);
        assetBalance = LOAN_TOKEN.balanceOf(address(this));
        (shareBalance,,) = MORPHO.position(MARKET_ID, address(this));
    }

    /// @notice Get total invested assets (shares converted to loan token value).
    function getInvestedAssets() public view returns (uint256) {
        (uint256 shares,,) = MORPHO.position(MARKET_ID, address(this));
        if (shares == 0) return 0;
        return _sharesToAssets(shares);
    }

    /// @notice Compute minimum shares expected for a deposit with slippage tolerance.
    /// @param assetAmount Amount of loan token to deposit
    /// @param slippageBPS Slippage in basis points (max 10000)
    /// @return minShares Minimum shares expected after slippage
    function computeMinShares(uint256 assetAmount, uint256 slippageBPS) public view returns (uint256 minShares) {
        require(slippageBPS <= 10000);
        minShares = _assetsToShares(assetAmount);
        if (slippageBPS > 0) {
            minShares = (minShares * (10000 - slippageBPS)) / 10000;
        }
    }

    /// @notice Compute maximum shares to burn for a withdrawal with slippage tolerance.
    /// @dev Computes purely from invested position — idle balance is handled by the driver.
    /// @param assetAmount Amount of loan token to withdraw from Morpho Blue
    /// @param slippageBPS Slippage in basis points (max 10000)
    /// @return maxShares Maximum shares to burn
    function computeMaxShares(uint256 assetAmount, uint256 slippageBPS) public view returns (uint256 maxShares) {
        require(slippageBPS <= 10000);

        uint256 investedAssets = getInvestedAssets();
        (uint256 totalShares,,) = MORPHO.position(MARKET_ID, address(this));

        if (assetAmount > investedAssets) {
            revert InsufficientBalance(totalShares, _assetsToSharesUp(assetAmount));
        }

        if (assetAmount == investedAssets) {
            maxShares = totalShares;
        } else {
            maxShares = _assetsToSharesUp(assetAmount);
            if (slippageBPS > 0) {
                maxShares = (maxShares * (10000 + slippageBPS)) / 10000;
            }
            if (maxShares > totalShares) {
                revert InsufficientBalance(totalShares, maxShares);
            }
        }
    }

    /// @notice Get available supply capacity in the Morpho Blue market.
    /// @return capacity Remaining room for supply (type(uint128).max - totalSupplyAssets)
    function computeDepositCapacity() public view returns (uint256 capacity) {
        (uint128 totalSupplyAssets,,,,,) = MORPHO.market(MARKET_ID);
        capacity = type(uint128).max - totalSupplyAssets;
    }

    /// @notice Returns the cached market params.
    function marketParams() external view returns (MarketParams memory) {
        return _marketParams;
    }

    /* ───────────────────────── Internal ───────────────────────── */

    /// @dev Morpho Blue share math constants (same as SharesMathLib).
    uint256 internal constant VIRTUAL_SHARES = 1e6;
    uint256 internal constant VIRTUAL_ASSETS = 1;

    /// @dev Convert supply shares to asset amount (rounds down).
    function _sharesToAssets(uint256 shares) internal view returns (uint256) {
        (uint128 totalSupplyAssets, uint128 totalSupplyShares,,,,) = MORPHO.market(MARKET_ID);
        return (shares * (uint256(totalSupplyAssets) + VIRTUAL_ASSETS)) / (uint256(totalSupplyShares) + VIRTUAL_SHARES);
    }

    /// @dev Convert asset amount to supply shares (rounds down).
    function _assetsToShares(uint256 assets) internal view returns (uint256) {
        (uint128 totalSupplyAssets, uint128 totalSupplyShares,,,,) = MORPHO.market(MARKET_ID);
        return (assets * (uint256(totalSupplyShares) + VIRTUAL_SHARES)) / (uint256(totalSupplyAssets) + VIRTUAL_ASSETS);
    }

    /// @dev Convert asset amount to supply shares (rounds up).
    function _assetsToSharesUp(uint256 assets) internal view returns (uint256) {
        (uint128 totalSupplyAssets, uint128 totalSupplyShares,,,,) = MORPHO.market(MARKET_ID);
        uint256 numerator = assets * (uint256(totalSupplyShares) + VIRTUAL_SHARES);
        uint256 denominator = uint256(totalSupplyAssets) + VIRTUAL_ASSETS;
        return (numerator + denominator - 1) / denominator;
    }
}
