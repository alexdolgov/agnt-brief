// ============================================================
// FILE: lib/fira-lending-market/src/interfaces/IAdaptiveCurveIrm.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.30;

import {IIrm} from "./IIrm.sol";
import {Id} from "./ILendingMarket.sol";

/// @title IAdaptiveCurveIrm
/// @author Fira Labs
/// @notice Interface exposed by the AdaptiveCurveIrm.
interface IAdaptiveCurveIrm is IIrm {
    /// @notice Address of lending market.
    function LENDING_MARKET() external view returns (address);

    /// @notice Rate at target utilization.
    /// @dev Tells the height of the curve.
    function rateAtTarget(Id id) external view returns (int256);
}

// ============================================================
// FILE: lib/fira-lending-market/src/interfaces/IIrm.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.30;

import {Market, MarketParams} from "./ILendingMarket.sol";

/// @title IIrm
/// @author Fira Labs
/// @notice Interface that Interest Rate Models (IRMs) used by Lending Market must implement.
interface IIrm {
    /// @notice Returns the borrow rate per second (scaled by WAD) of the market `marketParams`.
    /// @dev Assumes that `market` corresponds to `marketParams`.
    function borrowRate(MarketParams memory marketParams, Market memory market) external returns (uint256);

    /// @notice Returns the borrow rate per second (scaled by WAD) of the market `marketParams`
    /// without modifying any
    /// storage.
    /// @dev Assumes that `market` corresponds to `marketParams`.
    function borrowRateView(MarketParams memory marketParams, Market memory market) external view returns (uint256);
}

// ============================================================
// FILE: lib/fira-lending-market/src/interfaces/ILendingMarket.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.30;

type Id is bytes32;

struct MarketParams {
    address loanToken;
    address collateralToken;
    address oracle;
    address irm;
    uint256 ltv;
    uint256 lltv;
    address whitelist;
}

/// @dev Warning: For `feeRecipient`, `supplyShares` does not contain the accrued shares since the
/// last interest
/// accrual.
struct Position {
    uint256 supplyShares;
    uint128 borrowShares;
    uint128 collateral;
}

struct MarketConstants {
    uint128 maturityGracePeriod;
    uint128 liquidationIncentive;
}

/// @dev Warning: `totalSupplyAssets` does not contain the accrued interest since the last interest
/// accrual.
/// @dev Warning: `totalBorrowAssets` does not contain the accrued interest since the last interest
/// accrual.
/// @dev Warning: `totalSupplyShares` does not contain the additional shares accrued by
/// `feeRecipient` since the last
/// interest accrual.
struct Market {
    uint128 totalSupplyAssets;
    uint128 totalSupplyShares;
    uint128 totalBorrowAssets;
    uint128 totalBorrowShares;
    uint128 lastUpdate;
    uint128 fee;
}

struct Authorization {
    address authorizer;
    address authorized;
    bool isAuthorized;
    uint256 nonce;
    uint256 deadline;
}

struct Signature {
    uint8 v;
    bytes32 r;
    bytes32 s;
}

/// @dev This interface is used for factorizing ILendingMarketStaticTyping and ILendingMarket.
/// @dev Consider using the ILendingMarket interface instead of this one.
interface ILendingMarketBase {
    /// @notice The EIP-712 domain separator.
    /// @dev Warning: Every EIP-712 signed message based on this domain separator can be reused on
    /// chains sharing the
    /// same chain id and on forks because the domain separator would be the same.
    function DOMAIN_SEPARATOR() external view returns (bytes32);

    /// @notice The owner of the contract.
    /// @dev It has the power to change the owner.
    /// @dev It has the power to set fees on markets and set the fee recipient.
    /// @dev It has the power to enable but not disable IRMs and LLTVs.
    function owner() external view returns (address);

    /// @notice USL liquidation address
    /// @dev Only has power to liquidate USL positions after the maturity
    function uslLiquidator() external view returns (address);

    /// @notice The fee recipient of all markets.
    /// @dev The recipient receives the fees of a given market through a supply position on that
    /// market.
    function feeRecipient() external view returns (address);

    /// @notice Whether the `irm` is enabled.
    function isIrmEnabled(address irm) external view returns (bool);

    /// @notice Whether the `ltv` is enabled.
    function isLtvEnabled(uint256 ltv) external view returns (bool);

    /// @notice Whether the `lltv` is enabled.
    function isLltvEnabled(uint256 lltv) external view returns (bool);

    /// @notice Whether `authorized` is authorized to modify `authorizer`'s position on all markets.
    /// @dev Anyone is authorized to modify their own positions, regardless of this variable.
    function isAuthorized(address authorizer, address authorized) external view returns (bool);

    /// @notice The `authorizer`'s current nonce. Used to prevent replay attacks with EIP-712
    /// signatures.
    function nonce(address authorizer) external view returns (uint256);

    /// @notice Sets `newOwner` as `owner` of the contract.
    /// @dev Warning: No two-step transfer ownership.
    /// @dev Warning: The owner can be set to the zero address.
    function setOwner(address newOwner) external;

    /// @notice Sets `newUslLiquidator` as the USL liquidation address
    function setUslLiquidator(address newUslLiquidator) external;

    /// @notice Returns the state of the position of `user` on the market `marketParams`.
    /// @param marketParams The market parameters
    /// @param user The user address to query
    /// @return supplyAssets The amount of assets the user has supplied (in token decimals)
    /// @return supplyShares The amount of supply shares the user owns
    /// @return borrowAssets The amount of assets the user has borrowed (in token decimals)
    /// @return borrowShares The amount of borrow shares the user owns
    /// @return collateralAssets The amount of collateral the user has deposited
    function getUserPosition(MarketParams memory marketParams, address user)
        external
        view
        returns (
            uint256 supplyAssets,
            uint256 supplyShares,
            uint256 borrowAssets,
            uint256 borrowShares,
            uint256 collateralAssets
        );

    /// @notice Enables `irm` as a possible IRM for market creation.
    /// @dev Warning: It is not possible to disable an IRM.
    function enableIrm(address irm) external;

    /// @notice Enables `ltv` as a possible LTV for market creation.
    /// @dev Warning: It is not possible to disable a LTV.
    function enableLtv(uint256 ltv) external;

    /// @notice Enables `lltv` as a possible LLTV for market creation.
    /// @dev Warning: It is not possible to disable a LLTV.
    function enableLltv(uint256 lltv) external;

    /// @notice Sets the `newFee` for the given market `marketParams`.
    /// @param newFee The new fee, scaled by WAD.
    /// @dev Warning: The recipient can be the zero address.
    function setFee(MarketParams memory marketParams, uint256 newFee) external;

    /// @notice Sets `newFeeRecipient` as `feeRecipient` of the fee.
    /// @dev Warning: If the fee recipient is set to the zero address, fees will accrue there and
    /// will be lost.
    /// @dev Modifying the fee recipient will allow the new recipient to claim any pending fees not
    /// yet accrued. To
    /// ensure that the current recipient receives all due fees, accrue interest manually prior to
    /// making any changes.
    function setFeeRecipient(address newFeeRecipient) external;

    /// @notice Creates the market `marketParams`.
    /// @dev Here is the list of assumptions on the market's dependencies (tokens, IRM and oracle)
    /// that guarantees
    /// LendingMarket behaves as expected:
    /// - The token should be ERC-20 compliant, except that it can omit return values on `transfer`
    /// and `transferFrom`.
    /// - The token balance of LendingMarket should only decrease on `transfer` and `transferFrom`. In
    /// particular, tokens with
    /// burn functions are not supported.
    /// - The token should not re-enter LendingMarket on `transfer` nor `transferFrom`.
    /// - The token balance of the sender (resp. receiver) should decrease (resp. increase) by
    /// exactly the given amount
    /// on `transfer` and `transferFrom`. In particular, tokens with fees on transfer are not
    /// supported.
    /// - The IRM should not re-enter LendingMarket.
    /// - The oracle should return a price with the correct scaling.
    /// @dev Here is a list of assumptions on the market's dependencies which, if broken, could
    /// break LendingMarket's liveness
    /// properties (funds could get stuck):
    /// - The token should not revert on `transfer` and `transferFrom` if balances and approvals are
    /// right.
    /// - The amount of assets supplied and borrowed should not go above ~1e35 (otherwise the
    /// computation of
    /// `toSharesUp` and `toSharesDown` can overflow).
    /// - The IRM should not revert on `borrowRate`.
    /// - The IRM should not return a very high borrow rate (otherwise the computation of `interest`
    /// in
    /// `_accrueInterest` can overflow).
    /// - The oracle should not revert `price`.
    /// - The oracle should not return a very high price (otherwise the computation of `maxBorrow`
    /// in `_isHealthy` or of
    /// `assetsRepaid` in `liquidate` can overflow).
    /// @dev The borrow share price of a market with less than 1e4 assets borrowed can be decreased
    /// by manipulations, to
    /// the point where `totalBorrowShares` is very large and borrowing overflows.
    function createMarket(MarketParams memory marketParams, MarketConstants memory constants) external;

    /// @notice Supplies `assets` or `shares` on behalf of `onBehalf`, optionally calling back the
    /// caller's
    /// `onSupply` function with the given `data`.
    /// @dev Either `assets` or `shares` should be zero. Most use cases should rely on `assets` as
    /// an input so the
    /// caller is guaranteed to have `assets` tokens pulled from their balance, but the possibility
    /// to mint a specific
    /// amount of shares is given for full compatibility and precision.
    /// @dev Supplying a large amount can revert for overflow.
    /// @dev Supplying an amount of shares may lead to supply more or fewer assets than expected due
    /// to slippage.
    /// Consider using the `assets` parameter to avoid this.
    /// @param marketParams The market to supply assets to.
    /// @param assets The amount of assets to supply.
    /// @param shares The amount of shares to mint.
    /// @param onBehalf The address that will own the increased supply position.
    /// @param data Arbitrary data to pass to the `onSupply` callback. Pass empty data if not
    /// needed.
    /// @return assetsSupplied The amount of assets supplied.
    /// @return sharesSupplied The amount of shares minted.
    function supply(
        MarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        address onBehalf,
        bytes memory data
    ) external returns (uint256 assetsSupplied, uint256 sharesSupplied);

    /// @notice Withdraws `assets` or `shares` on behalf of `onBehalf` and sends the assets to
    /// `receiver`.
    /// @dev Either `assets` or `shares` should be zero. To withdraw max, pass the `shares`'s
    /// balance of `onBehalf`.
    /// @dev `msg.sender` must be authorized to manage `onBehalf`'s positions.
    /// @dev Withdrawing an amount corresponding to more shares than supplied will revert for
    /// underflow.
    /// @dev It is advised to use the `shares` input when withdrawing the full position to avoid
    /// reverts due to
    /// conversion roundings between shares and assets.
    /// @param marketParams The market to withdraw assets from.
    /// @param assets The amount of assets to withdraw.
    /// @param shares The amount of shares to burn.
    /// @param onBehalf The address of the owner of the supply position.
    /// @param receiver The address that will receive the withdrawn assets.
    /// @return assetsWithdrawn The amount of assets withdrawn.
    /// @return sharesWithdrawn The amount of shares burned.
    function withdraw(
        MarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        address onBehalf,
        address receiver
    ) external returns (uint256 assetsWithdrawn, uint256 sharesWithdrawn);

    /// @notice Borrows `assets` or `shares` on behalf of `onBehalf` and sends the assets to
    /// `receiver`.
    /// @dev Either `assets` or `shares` should be zero. Most use cases should rely on `assets` as
    /// an input so the
    /// caller is guaranteed to borrow `assets` of tokens, but the possibility to mint a specific
    /// amount of shares is
    /// given for full compatibility and precision.
    /// @dev `msg.sender` must be authorized to manage `onBehalf`'s positions.
    /// @dev Borrowing a large amount can revert for overflow.
    /// @dev Borrowing an amount of shares may lead to borrow fewer assets than expected due to
    /// slippage.
    /// Consider using the `assets` parameter to avoid this.
    /// @param marketParams The market to borrow assets from.
    /// @param assets The amount of assets to borrow.
    /// @param shares The amount of shares to mint.
    /// @param onBehalf The address that will own the increased borrow position.
    /// @param receiver The address that will receive the borrowed assets.
    /// @return assetsBorrowed The amount of assets borrowed.
    /// @return sharesBorrowed The amount of shares minted.
    function borrow(
        MarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        address onBehalf,
        address receiver
    ) external returns (uint256 assetsBorrowed, uint256 sharesBorrowed);

    /// @notice Repays `assets` or `shares` on behalf of `onBehalf`, optionally calling back the
    /// caller's
    /// `onRepay` function with the given `data`.
    /// @dev Either `assets` or `shares` should be zero. To repay max, pass the `shares`'s balance
    /// of `onBehalf`.
    /// @dev Repaying an amount corresponding to more shares than borrowed will revert for
    /// underflow.
    /// @dev It is advised to use the `shares` input when repaying the full position to avoid
    /// reverts due to conversion
    /// roundings between shares and assets.
    /// @dev An attacker can front-run a repay with a small repay making the transaction revert for
    /// underflow.
    /// @param marketParams The market to repay assets to.
    /// @param assets The amount of assets to repay.
    /// @param shares The amount of shares to burn.
    /// @param onBehalf The address of the owner of the debt position.
    /// @param data Arbitrary data to pass to the `onRepay` callback. Pass empty data if not
    /// needed.
    /// @return assetsRepaid The amount of assets repaid.
    /// @return sharesRepaid The amount of shares burned.
    function repay(
        MarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        address onBehalf,
        bytes memory data
    ) external returns (uint256 assetsRepaid, uint256 sharesRepaid);

    /// @notice Supplies `assets` of collateral on behalf of `onBehalf`, optionally calling back the
    /// caller's
    /// `onSupplyCollateral` function with the given `data`.
    /// @dev Interest are not accrued since it's not required and it saves gas.
    /// @dev Supplying a large amount can revert for overflow.
    /// @param marketParams The market to supply collateral to.
    /// @param assets The amount of collateral to supply.
    /// @param onBehalf The address that will own the increased collateral position.
    /// @param data Arbitrary data to pass to the `onSupplyCollateral` callback. Pass empty
    /// data if not needed.
    function supplyCollateral(MarketParams memory marketParams, uint256 assets, address onBehalf, bytes memory data)
        external;

    /// @notice Withdraws `assets` of collateral on behalf of `onBehalf` and sends the assets to
    /// `receiver`.
    /// @dev `msg.sender` must be authorized to manage `onBehalf`'s positions.
    /// @dev Withdrawing an amount corresponding to more collateral than supplied will revert for
    /// underflow.
    /// @param marketParams The market to withdraw collateral from.
    /// @param assets The amount of collateral to withdraw.
    /// @param onBehalf The address of the owner of the collateral position.
    /// @param receiver The address that will receive the collateral assets.
    function withdrawCollateral(MarketParams memory marketParams, uint256 assets, address onBehalf, address receiver)
        external;

    /// @notice Liquidates the given `repaidShares` of debt asset or seize the given `seizedAssets`
    /// of collateral on the
    /// given market `marketParams` of the given `borrower`'s position, optionally calling back the
    /// caller's
    /// `onLiquidate` function with the given `data`.
    /// @dev Either `seizedAssets` or `repaidShares` should be zero.
    /// @dev Seizing more than the collateral balance will underflow and revert without any error
    /// message.
    /// @dev Repaying more than the borrow balance will underflow and revert without any error
    /// message.
    /// @dev An attacker can front-run a liquidation with a small repay making the transaction
    /// revert for underflow.
    /// @param marketParams The market of the position.
    /// @param borrower The owner of the position.
    /// @param seizedAssets The amount of collateral to seize.
    /// @param repaidShares The amount of shares to repay.
    /// @param data Arbitrary data to pass to the `onLiquidate` callback. Pass empty data if
    /// not needed.
    /// @return The amount of assets seized.
    /// @return The amount of assets repaid.
    function liquidate(
        MarketParams memory marketParams,
        address borrower,
        uint256 seizedAssets,
        uint256 repaidShares,
        bytes memory data
    ) external returns (uint256, uint256);

    /// @notice Executes a flash loan.
    /// @dev Flash loans have access to the whole balance of the contract (the liquidity and
    /// deposited collateral of all
    /// markets combined, plus donations).
    /// @dev Warning: Not ERC-3156 compliant but compatibility is easily reached:
    /// - `flashFee` is zero.
    /// - `maxFlashLoan` is the token's balance of this contract.
    /// - The receiver of `assets` is the caller.
    /// @param token The token to flash loan.
    /// @param assets The amount of assets to flash loan.
    /// @param data Arbitrary data to pass to the `onFlashLoan` callback.
    function flashLoan(address token, uint256 assets, bytes calldata data) external;

    /// @notice Sets the authorization for `authorized` to manage `msg.sender`'s positions.
    /// @param authorized The authorized address.
    /// @param newIsAuthorized The new authorization status.
    function setAuthorization(address authorized, bool newIsAuthorized) external;

    /// @notice Sets the authorization for `authorization.authorized` to manage
    /// `authorization.authorizer`'s positions.
    /// @dev Warning: Reverts if the signature has already been submitted.
    /// @dev The signature is malleable, but it has no impact on the security here.
    /// @dev The nonce is passed as argument to be able to revert with a different error message.
    /// @param authorization The `Authorization` struct.
    /// @param signature The signature.
    function setAuthorizationWithSig(Authorization calldata authorization, Signature calldata signature) external;

    /// @notice Accrues interest for the given market `marketParams`.
    function accrueInterest(MarketParams memory marketParams) external;

    /// @notice Returns the data stored on the different `slots`.
    function extSloads(bytes32[] memory slots) external view returns (bytes32[] memory);
}

/// @dev This interface is inherited by LendingMarket so that function signatures are checked by the
/// compiler.
/// @dev Consider using the ILendingMarket interface instead of this one.
interface ILendingMarketStaticTyping is ILendingMarketBase {
    /// @notice The state of the position of `user` on the market corresponding to `id`.
    /// @dev Warning: For `feeRecipient`, `supplyShares` does not contain the accrued shares since
    /// the last interest
    /// accrual.
    function position(Id id, address user)
        external
        view
        returns (uint256 supplyShares, uint128 borrowShares, uint128 collateral);

    /// @notice The state of the market corresponding to `id`.
    /// @dev Warning: `totalSupplyAssets` does not contain the accrued interest since the last
    /// interest accrual.
    /// @dev Warning: `totalBorrowAssets` does not contain the accrued interest since the last
    /// interest accrual.
    /// @dev Warning: `totalSupplyShares` does not contain the accrued shares by `feeRecipient`
    /// since the last interest
    /// accrual.
    function market(Id id)
        external
        view
        returns (
            uint128 totalSupplyAssets,
            uint128 totalSupplyShares,
            uint128 totalBorrowAssets,
            uint128 totalBorrowShares,
            uint128 lastUpdate,
            uint128 fee
        );

    /// @notice The constants of the market corresponding to `id`.
    /// @dev Warning: `maturityGracePeriod` is the grace period after the maturity of the bond token, after which
    /// liquidation is allowed. @dev Warning: `liquidationIncentive` is the liquidation incentive factor.
    function marketConstants(Id id) external view returns (uint128 maturityGracePeriod, uint128 liquidationIncentive);

    /// @notice The market params corresponding to `id`.
    /// @dev This mapping is not used in LendingMarket. It is there to enable reducing the cost associated
    /// to calldata on layer
    /// 2s by creating a wrapper contract with functions that take `id` as input instead of
    /// `marketParams`.
    function idToMarketParams(Id id)
        external
        view
        returns (
            address loanToken,
            address collateralToken,
            address oracle,
            address irm,
            uint256 ltv,
            uint256 lltv,
            address whitelist
        );
}

/// @title ILendingMarket
/// @author Fira Labs
/// @dev Use this interface for LendingMarket to have access to all the functions with the appropriate
/// function signatures.
interface ILendingMarket is ILendingMarketBase {
    /// @notice The state of the position of `user` on the market corresponding to `id`.
    /// @dev Warning: For `feeRecipient`, `p.supplyShares` does not contain the accrued shares since
    /// the last interest
    /// accrual.
    function position(Id id, address user) external view returns (Position memory p);

    /// @notice The state of the market corresponding to `id`.
    /// @dev Warning: `m.totalSupplyAssets` does not contain the accrued interest since the last
    /// interest accrual.
    /// @dev Warning: `m.totalBorrowAssets` does not contain the accrued interest since the last
    /// interest accrual.
    /// @dev Warning: `m.totalSupplyShares` does not contain the accrued shares by `feeRecipient`
    /// since the last
    /// interest accrual.
    function market(Id id) external view returns (Market memory m);

    /// @notice The market params corresponding to `id`.
    /// @dev This mapping is not used in LendingMarket. It is there to enable reducing the cost associated
    /// to calldata on layer
    /// 2s by creating a wrapper contract with functions that take `id` as input instead of
    /// `marketParams`.
    function idToMarketParams(Id id) external view returns (MarketParams memory);
}

// ============================================================
// FILE: lib/fira-lending-market/src/irms/AdaptiveCurveIrm.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {IAdaptiveCurveIrm} from "../interfaces/IAdaptiveCurveIrm.sol";
import {IIrm} from "../interfaces/IIrm.sol";

import {Id, Market, MarketParams} from "../interfaces/ILendingMarket.sol";
import "../libraries/ConstantsLib.sol";
import {ErrorsLib} from "../libraries/ErrorsLib.sol";
import {ExpLib} from "../libraries/ExpLib.sol";
import {MarketParamsLib} from "../libraries/MarketParamsLib.sol";
import {MathLib} from "../libraries/MathLib.sol";

import {MathLibInt128, WAD_INT as WAD} from "../libraries/MathLibInt128.sol";
import {UtilsLib} from "../libraries/UtilsLib.sol";

/// @title AdaptiveCurveIrm
/// @author Fira Labs
contract AdaptiveCurveIrm is IAdaptiveCurveIrm {
    using MathLibInt128 for int256;
    using UtilsLib for int256;
    using MathLib for uint128;
    using MarketParamsLib for MarketParams;

    /* EVENTS */

    /// @notice Emitted when a borrow rate is updated.
    event BorrowRateUpdate(Id indexed id, uint256 avgBorrowRate, uint256 rateAtTarget);

    /* IMMUTABLES */

    /// @inheritdoc IAdaptiveCurveIrm
    address public immutable LENDING_MARKET;

    /* STORAGE */

    /// @inheritdoc IAdaptiveCurveIrm
    mapping(Id => int256) public rateAtTarget;

    /* CONSTRUCTOR */

    /// @notice Constructor.
    /// @param lendingMarket The address of lending market.
    constructor(address lendingMarket) {
        require(lendingMarket != address(0), ErrorsLib.ZERO_ADDRESS);

        LENDING_MARKET = lendingMarket;
    }

    /* BORROW RATES */

    /// @inheritdoc IIrm
    function borrowRateView(MarketParams memory marketParams, Market memory market) external view returns (uint256) {
        (uint256 avgRate,) = _borrowRate(marketParams.id(), market);
        return avgRate;
    }

    /// @inheritdoc IIrm
    function borrowRate(MarketParams memory marketParams, Market memory market) external returns (uint256) {
        require(msg.sender == LENDING_MARKET, ErrorsLib.NOT_LENDING_MARKET);

        Id id = marketParams.id();

        (uint256 avgRate, int256 endRateAtTarget) = _borrowRate(id, market);

        rateAtTarget[id] = endRateAtTarget;

        // Safe "unchecked" cast because endRateAtTarget >= 0.
        emit BorrowRateUpdate(id, avgRate, uint256(endRateAtTarget));

        return avgRate;
    }

    /// @dev Returns avgRate and endRateAtTarget.
    /// @dev Assumes that the inputs `marketParams` and `id` match.
    function _borrowRate(Id id, Market memory market) private view returns (uint256, int256) {
        // Safe "unchecked" cast because the utilization is smaller than 1 (scaled by WAD).
        int256 utilization =
            int256(market.totalSupplyAssets > 0 ? market.totalBorrowAssets.wDivDown(market.totalSupplyAssets) : 0);

        int256 errNormFactor = utilization > TARGET_UTILIZATION ? WAD - TARGET_UTILIZATION : TARGET_UTILIZATION;
        int256 err = (utilization - TARGET_UTILIZATION).wDivToZero(errNormFactor);

        int256 startRateAtTarget = rateAtTarget[id];

        int256 avgRateAtTarget;
        int256 endRateAtTarget;

        if (startRateAtTarget == 0) {
            // First interaction.
            avgRateAtTarget = INITIAL_RATE_AT_TARGET;
            endRateAtTarget = INITIAL_RATE_AT_TARGET;
        } else {
            // The speed is assumed constant between two updates, but it is in fact not constant because of interest.
            // So the rate is always underestimated.
            int256 speed = ADJUSTMENT_SPEED.wMulToZero(err);
            // market.lastUpdate != 0 because it is not the first interaction with this market.
            // Safe "unchecked" cast because block.timestamp - market.lastUpdate <= block.timestamp <= type(int256).max.
            int256 elapsed = int256(block.timestamp - market.lastUpdate);
            int256 linearAdaptation = speed * elapsed;

            if (linearAdaptation == 0) {
                // If linearAdaptation == 0, avgRateAtTarget = endRateAtTarget = startRateAtTarget;
                avgRateAtTarget = startRateAtTarget;
                endRateAtTarget = startRateAtTarget;
            } else {
                // Formula of the average rate that should be returned:
                // avg = 1/T * ∫_0^T curve(startRateAtTarget*exp(speed*x), err) dx
                // The integral is approximated with the trapezoidal rule:
                // avg ~= 1/T * Σ_i=1^N [curve(f((i-1) * T/N), err) + curve(f(i * T/N), err)] / 2 * T/N
                // Where f(x) = startRateAtTarget*exp(speed*x)
                // avg ~= Σ_i=1^N [curve(f((i-1) * T/N), err) + curve(f(i * T/N), err)] / (2 * N)
                // As curve is linear in its first argument:
                // avg ~= curve([Σ_i=1^N [f((i-1) * T/N) + f(i * T/N)] / (2 * N), err)
                // avg ~= curve([(f(0) + f(T))/2 + Σ_i=1^(N-1) f(i * T/N)] / N, err)
                // avg ~= curve([(startRateAtTarget + endRateAtTarget)/2 + Σ_i=1^(N-1) f(i * T/N)] / N, err)
                // With N = 2:
                // avg ~= curve([(startRateAtTarget + endRateAtTarget)/2 + startRateAtTarget*exp(speed*T/2)] / 2, err)
                // avg ~= curve([startRateAtTarget + endRateAtTarget + 2*startRateAtTarget*exp(speed*T/2)] / 4, err)
                endRateAtTarget = _newRateAtTarget(startRateAtTarget, linearAdaptation);
                int256 midRateAtTarget = _newRateAtTarget(startRateAtTarget, linearAdaptation / 2);
                avgRateAtTarget = (startRateAtTarget + endRateAtTarget + 2 * midRateAtTarget) / 4;
            }
        }

        // Safe "unchecked" cast because avgRateAtTarget >= 0.
        return (uint256(_curve(avgRateAtTarget, err)), endRateAtTarget);
    }

    /// @dev Returns the rate for a given `_rateAtTarget` and an `err`.
    /// The formula of the curve is the following:
    /// r = ((1-1/C)*err + 1) * rateAtTarget if err < 0
    ///     ((C-1)*err + 1) * rateAtTarget else.
    function _curve(int256 _rateAtTarget, int256 err) private pure returns (int256) {
        // Non negative because 1 - 1/C >= 0, C - 1 >= 0.
        int256 coeff = err < 0 ? WAD - WAD.wDivToZero(CURVE_STEEPNESS) : CURVE_STEEPNESS - WAD;
        // Non negative if _rateAtTarget >= 0 because if err < 0, coeff <= 1.
        return (coeff.wMulToZero(err) + WAD).wMulToZero(int256(_rateAtTarget));
    }

    /// @dev Returns the new rate at target, for a given `startRateAtTarget` and a given `linearAdaptation`.
    /// The formula is: max(min(startRateAtTarget * exp(linearAdaptation), maxRateAtTarget), minRateAtTarget).
    function _newRateAtTarget(int256 startRateAtTarget, int256 linearAdaptation) private pure returns (int256) {
        // Non negative because MIN_RATE_AT_TARGET > 0.
        return startRateAtTarget.wMulToZero(ExpLib.wExp(linearAdaptation)).bound(MIN_RATE_AT_TARGET, MAX_RATE_AT_TARGET);
    }
}

// ============================================================
// FILE: lib/fira-lending-market/src/libraries/ConstantsLib.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.30;

/// @dev The maximum fee a market can have (25%).
uint256 constant MAX_FEE = 0.25e18;

/// @dev Oracle price scale.
uint256 constant ORACLE_PRICE_SCALE = 1e36;

/// @dev Liquidation cursor.
uint256 constant LIQUIDATION_CURSOR = 0.3e18;

/// @dev Max liquidation incentive factor.
uint256 constant MAX_LIQUIDATION_INCENTIVE_FACTOR = 1.15e18;

/// @dev The EIP-712 typeHash for EIP712Domain.
bytes32 constant DOMAIN_TYPEHASH = keccak256("EIP712Domain(uint256 chainId,address verifyingContract)");

/// @dev The EIP-712 typeHash for Authorization.
bytes32 constant AUTHORIZATION_TYPEHASH =
    keccak256("Authorization(address authorizer,address authorized,bool isAuthorized,uint256 nonce,uint256 deadline)");

/// @dev The maximum delay of a timelock.
uint256 constant MAX_TIMELOCK = 2 weeks;

/// @dev The minimum delay of a timelock.
uint256 constant MIN_TIMELOCK = 0.1 days;

/// @dev The maximum number of markets in the supply/withdraw queue.
uint256 constant MAX_QUEUE_LENGTH = 30;

/// @dev The maximum fee the vault can have (50%).
uint256 constant MAX_VAULT_FEE = 0.5e18;

/// @dev Basis points (100% = 10000 bps).
uint256 constant BIPS = 10000;

/// @dev Curve steepness (scaled by WAD).
/// @dev Curve steepness = 4.
int256 constant CURVE_STEEPNESS = 4 ether;

/// @dev Adjustment speed per second (scaled by WAD).
/// @dev The speed is per second, so the rate moves at a speed of ADJUSTMENT_SPEED * err each second (while being
/// continuously compounded).
/// @dev Adjustment speed = 50/year.
int256 constant ADJUSTMENT_SPEED = 50 ether / int256(365 days);

/// @dev Target utilization (scaled by WAD).
/// @dev Target utilization = 90%.
int256 constant TARGET_UTILIZATION = 0.9 ether;

/// @dev Initial rate at target per second (scaled by WAD).
/// @dev Initial rate at target = 4% (rate between 1% and 16%).
int256 constant INITIAL_RATE_AT_TARGET = 0.04 ether / int256(365 days);

/// @dev Minimum rate at target per second (scaled by WAD).
/// @dev Minimum rate at target = 0.1% (minimum rate = 0.025%).
int256 constant MIN_RATE_AT_TARGET = 0.001 ether / int256(365 days);

/// @dev Maximum rate at target per second (scaled by WAD).
/// @dev Maximum rate at target = 200% (maximum rate = 800%).
int256 constant MAX_RATE_AT_TARGET = 2.0 ether / int256(365 days);

/* Addresses */
address constant USDC_MAINNET = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;

address constant WBTC_MAINNET = 0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599;

address constant WETH_MAINNET = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

// ============================================================
// FILE: lib/fira-lending-market/src/libraries/ErrorsLib.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.30;

import {Id} from "../interfaces/ILendingMarket.sol";

/// @title ErrorsLib
/// @author Fira Labs
/// @notice Library exposing error messages.
library ErrorsLib {
    /// @notice Thrown when the caller is not the owner.
    string internal constant NOT_OWNER = "not owner";
    /// @notice Thrown when the caller is not the usl liquidator.
    string internal constant NOT_USL_LIQUIDATOR = "not usl liquidator";

    /// @notice Thrown when the LTV to enable exceeds the maximum LTV.
    string internal constant MAX_LTV_EXCEEDED = "max LTV exceeded";

    /// @notice Thrown when LTV > LLTV.
    string internal constant LTV_EXCEEDS_LLTV = "LTV exceeds LLTV";

    /// @notice Thrown when the LLTV to enable exceeds the maximum LLTV.
    string internal constant MAX_LLTV_EXCEEDED = "max LLTV exceeded";

    /// @notice Thrown when the fee to set exceeds the maximum fee.
    string internal constant MAX_FEE_EXCEEDED = "max fee exceeded";

    /// @notice Thrown when the value is already set.
    string internal constant ALREADY_SET = "already set";

    /// @notice Thrown when the IRM is not enabled at market creation.
    string internal constant IRM_NOT_ENABLED = "IRM not enabled";

    /// @notice Thrown when the LTV is not enabled at market creation.
    string internal constant LTV_NOT_ENABLED = "LTV not enabled";

    /// @notice Thrown when the LTV is set to zero.
    string internal constant ZERO_LTV = "LTV cannot be zero";

    /// @notice Thrown when the LLTV is not enabled at market creation.
    string internal constant LLTV_NOT_ENABLED = "LLTV not enabled";

    /// @notice Thrown when the liquidation incentive exceeds the maximum allowed value.
    string internal constant LIQUIDATION_INCENTIVE_NOT_SET = "liquidation incentive too high";

    /// @notice Thrown when the market is already created.
    string internal constant MARKET_ALREADY_CREATED = "market already created";

    /// @notice Thrown when a token to transfer doesn't have code.
    string internal constant NO_CODE = "no code";

    /// @notice Thrown when the market is not created.
    string internal constant MARKET_NOT_CREATED = "market not created";

    /// @notice Thrown when BT is not expired
    string internal constant BT_NOT_EXPIRED = "BT not expired";

    /// @notice Thrown when USL USD0++ is not expired
    string internal constant USL_NOT_EXPIRED = "USL not expired";

    /// @notice Thrown when the borrower has no debt.
    string internal constant NO_DEBT_TO_LIQUIDATE = "no debt";

    /// @notice Thrown when not exactly one of the input amount is zero.
    string internal constant INCONSISTENT_INPUT = "inconsistent input";

    /// @notice Thrown when zero assets is passed as input.
    string internal constant ZERO_ASSETS = "zero assets";

    /// @notice Liquidity supplier is not whitelisted
    string internal constant NOT_WHITELISTED = "not whitelisted";

    /// @notice Thrown when a zero address is passed as input.
    string internal constant ZERO_ADDRESS = "zero address";

    /// @notice Thrown when the caller is not authorized to conduct an action.
    string internal constant UNAUTHORIZED = "unauthorized";

    /// @notice Thrown when the collateral is insufficient to `borrow` or `withdrawCollateral`.
    string internal constant INSUFFICIENT_COLLATERAL = "insufficient collateral";

    /// @notice Thrown when the collateral is insufficient to `borrow` or `withdrawCollateral` based on LTV
    string internal constant INSUFFICIENT_COLLATERAL_LTV = "insufficient collateral LTV";

    /// @notice Thrown when the liquidity is insufficient to `withdraw` or `borrow`.
    string internal constant INSUFFICIENT_LIQUIDITY = "insufficient liquidity";

    /// @notice Thrown when the position to liquidate is healthy.
    string internal constant HEALTHY_POSITION = "position is healthy";

    /// @notice Thrown when the authorization signature is invalid.
    string internal constant INVALID_SIGNATURE = "invalid signature";

    /// @notice Thrown when the authorization signature is expired.
    string internal constant SIGNATURE_EXPIRED = "signature expired";

    /// @notice Thrown when the nonce is invalid.
    string internal constant INVALID_NONCE = "invalid nonce";

    /// @notice Thrown when a token transfer reverted.
    string internal constant TRANSFER_REVERTED = "transfer reverted";

    /// @notice Thrown when a token transfer returned false.
    string internal constant TRANSFER_RETURNED_FALSE = "transfer returned false";

    /// @notice Thrown when a token transferFrom reverted.
    string internal constant TRANSFER_FROM_REVERTED = "transferFrom reverted";

    /// @notice Thrown when a token transferFrom returned false
    string internal constant TRANSFER_FROM_RETURNED_FALSE = "transferFrom returned false";

    /// @notice Thrown when the maximum uint128 is exceeded.
    string internal constant MAX_UINT128_EXCEEDED = "max uint128 exceeded";

    /// @notice Thrown when the answer returned by a Chainlink feed is negative.
    string constant NEGATIVE_ANSWER = "negative answer";

    /// @notice Thrown when the vault conversion sample is 0.
    string internal constant VAULT_CONVERSION_SAMPLE_IS_ZERO = "vault conversion sample is zero";

    /// @notice Thrown when the vault conversion sample is not 1 while vault = address(0).
    string internal constant VAULT_CONVERSION_SAMPLE_IS_NOT_ONE = "vault conversion sample is not one";

    /// @dev Thrown when the caller is not Lending market.
    string internal constant NOT_LENDING_MARKET = "not lending market";

    /// @notice Thrown when the address passed is the zero address.
    error ZeroAddress();

    /// @notice Thrown when the caller is not the permitted address.
    error Unauthorized();

    /// @notice Thrown when the caller doesn't have the curator role.
    error NotCuratorRole();

    /// @notice Thrown when the caller doesn't have the allocator role.
    error NotAllocatorRole();

    /// @notice Thrown when the caller doesn't have the guardian role.
    error NotGuardianRole();

    /// @notice Thrown when the caller doesn't have the curator nor the guardian role.
    error NotCuratorNorGuardianRole();

    /// @notice Thrown when the market `id` cannot be set in the supply queue.
    error UnauthorizedMarket(Id id);

    /// @notice Thrown when submitting a cap for a market `id` whose loan token does not correspond
    /// to the underlying.
    /// asset.
    error InconsistentAsset(Id id);

    /// @notice Thrown when the supply cap has been exceeded on market `id` during a reallocation of
    /// funds.
    error SupplyCapExceeded(Id id);

    /// @notice Thrown when the fee to set exceeds the maximum fee.
    error MaxFeeExceeded();

    /// @notice Thrown when the value is already set.
    error AlreadySet();

    /// @notice Thrown when a value is already pending.
    error AlreadyPending();

    /// @notice Thrown when submitting the removal of a market when there is a cap already pending
    /// on that market.
    error PendingCap(Id id);

    /// @notice Thrown when submitting a cap for a market with a pending removal.
    error PendingRemoval();

    /// @notice Thrown when submitting a market removal for a market with a non zero cap.
    error NonZeroCap();

    /// @notice Thrown when market `id` is a duplicate in the new withdraw queue to set.
    error DuplicateMarket(Id id);

    /// @notice Thrown when market `id` is missing in the updated withdraw queue and the market has
    /// a non-zero cap set.
    error InvalidMarketRemovalNonZeroCap(Id id);

    /// @notice Thrown when market `id` is missing in the updated withdraw queue and the market has
    /// a non-zero supply.
    error InvalidMarketRemovalNonZeroSupply(Id id);

    /// @notice Thrown when market `id` is missing in the updated withdraw queue and the market is
    /// not yet disabled.
    error InvalidMarketRemovalTimelockNotElapsed(Id id);

    /// @notice Thrown when there's no pending value to set.
    error NoPendingValue();

    /// @notice Thrown when the requested liquidity cannot be withdrawn from lending market.
    error NotEnoughLiquidity();

    /// @notice Thrown when submitting a cap for a market which does not exist.
    error MarketNotCreated();

    /// @notice Thrown when interacting with a non previously enabled market `id`.
    error MarketNotEnabled(Id id);

    /// @notice Thrown when the submitted timelock is above the max timelock.
    error AboveMaxTimelock();

    /// @notice Thrown when the submitted timelock is below the min timelock.
    error BelowMinTimelock();

    /// @notice Thrown when the timelock is not elapsed.
    error TimelockNotElapsed();

    /// @notice Thrown when too many markets are in the withdraw queue.
    error MaxQueueLengthExceeded();

    /// @notice Thrown when setting the fee to a non zero value while the fee recipient is the zero
    /// address.
    error ZeroFeeRecipient();

    /// @notice Thrown when the amount withdrawn is not exactly the amount supplied.
    error InconsistentReallocation();

    /// @notice Thrown when all caps have been reached.
    error AllCapsReached();
}

// ============================================================
// FILE: lib/fira-lending-market/src/libraries/ExpLib.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {WAD_INT} from "./MathLibInt128.sol";

/// @title ExpLib
/// @author Fira Labs
/// @notice Library to approximate the exponential function.
library ExpLib {
    /// @dev ln(2).
    int256 internal constant LN_2_INT = 0.693147180559945309 ether;

    /// @dev ln(1e-18).
    int256 internal constant LN_WEI_INT = -41.446531673892822312 ether;

    /// @dev Above this bound, `wExp` is clipped to avoid overflowing when multiplied with 1 ether.
    /// @dev This upper bound corresponds to: ln(type(int256).max / 1e36) (scaled by WAD, floored).
    int256 internal constant WEXP_UPPER_BOUND = 93.859467695000404319 ether;

    /// @dev The value of wExp(`WEXP_UPPER_BOUND`).
    int256 internal constant WEXP_UPPER_VALUE = 57716089161558943949701069502944508345128.422502756744429568 ether;

    /// @dev Returns an approximation of exp.
    function wExp(int256 x) internal pure returns (int256) {
        unchecked {
            // If x < ln(1e-18) then exp(x) < 1e-18 so it is rounded to zero.
            if (x < LN_WEI_INT) return 0;
            // `wExp` is clipped to avoid overflowing when multiplied with 1 ether.
            if (x >= WEXP_UPPER_BOUND) return WEXP_UPPER_VALUE;

            // Decompose x as x = q * ln(2) + r with q an integer and -ln(2)/2 <= r <= ln(2)/2.
            // q = x / ln(2) rounded half toward zero.
            int256 roundingAdjustment = (x < 0) ? -(LN_2_INT / 2) : (LN_2_INT / 2);
            // Safe unchecked because x is bounded.
            int256 q = (x + roundingAdjustment) / LN_2_INT;
            // Safe unchecked because |q * ln(2) - x| <= ln(2)/2.
            int256 r = x - q * LN_2_INT;

            // Compute e^r with a 2nd-order Taylor polynomial.
            // Safe unchecked because |r| < 1e18.
            int256 expR = WAD_INT + r + (r * r) / WAD_INT / 2;

            // Return e^x = 2^q * e^r.
            if (q >= 0) return expR << uint256(q);
            else return expR >> uint256(-q);
        }
    }
}

// ============================================================
// FILE: lib/fira-lending-market/src/libraries/MarketParamsLib.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.30;

import {Id, MarketParams} from "../interfaces/ILendingMarket.sol";

/// @title MarketParamsLib
/// @author Fira Labs
/// @notice Library to convert a market to its id.
library MarketParamsLib {
    /// @notice The length of the data used to compute the id of a market.
    /// @dev The length is 7 * 32 because `MarketParams` has 7 variables of 32 bytes each.
    uint256 internal constant MARKET_PARAMS_BYTES_LENGTH = 7 * 32;

    /// @notice Returns the id of the market `marketParams`.
    function id(MarketParams memory marketParams) internal pure returns (Id marketParamsId) {
        assembly ("memory-safe") {
            marketParamsId := keccak256(marketParams, MARKET_PARAMS_BYTES_LENGTH)
        }
    }
}

// ============================================================
// FILE: lib/fira-lending-market/src/libraries/MathLib.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.30;

uint256 constant WAD = 1e18;

/// @title MathLib
/// @author Fira Labs
/// @notice Library to manage fixed-point arithmetic.
library MathLib {
    /// @dev Returns (`x` * `y`) / `WAD` rounded down.
    function wMulDown(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivDown(x, y, WAD);
    }

    /// @dev Returns (`x` * `y`) / `WAD` rounded up.
    function wMulUp(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivUp(x, y, WAD);
    }

    /// @dev Returns (`x` * `WAD`) / `y` rounded down.
    function wDivDown(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivDown(x, WAD, y);
    }

    /// @dev Returns (`x` * `WAD`) / `y` rounded up.
    function wDivUp(uint256 x, uint256 y) internal pure returns (uint256) {
        return mulDivUp(x, WAD, y);
    }

    /// @dev Returns (`x` * `y`) / `d` rounded down.
    function mulDivDown(uint256 x, uint256 y, uint256 d) internal pure returns (uint256) {
        return (x * y) / d;
    }

    /// @dev Returns (`x` * `y`) / `d` rounded up.
    function mulDivUp(uint256 x, uint256 y, uint256 d) internal pure returns (uint256) {
        return (x * y + (d - 1)) / d;
    }

    /// @dev Returns the sum of the first three non-zero terms of a Taylor expansion of e^(nx) - 1,
    /// to approximate a
    /// continuous compound interest rate.
    function wTaylorCompounded(uint256 x, uint256 n) internal pure returns (uint256) {
        uint256 firstTerm = x * n;
        uint256 secondTerm = mulDivDown(firstTerm, firstTerm, 2 * WAD);
        uint256 thirdTerm = mulDivDown(secondTerm, firstTerm, 3 * WAD);

        return firstTerm + secondTerm + thirdTerm;
    }
}

// ============================================================
// FILE: lib/fira-lending-market/src/libraries/MathLibInt128.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {WAD} from "./MathLib.sol";

int256 constant WAD_INT = int256(WAD);

/// @title MathLib
/// @author Fira Labs
/// @notice Library to manage fixed-point arithmetic on signed integers.
library MathLibInt128 {
    /// @dev Returns the multiplication of `x` by `y` (in WAD) rounded towards 0.
    function wMulToZero(int256 x, int256 y) internal pure returns (int256) {
        return (x * y) / WAD_INT;
    }

    /// @dev Returns the division of `x` by `y` (in WAD) rounded towards 0.
    function wDivToZero(int256 x, int256 y) internal pure returns (int256) {
        return (x * WAD_INT) / y;
    }
}

// ============================================================
// FILE: lib/fira-lending-market/src/libraries/UtilsLib.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.30;

import {ErrorsLib} from "../libraries/ErrorsLib.sol";

/// @title UtilsLib
/// @author Fira Labs
/// @notice Library exposing helpers.
library UtilsLib {
    /// @dev Returns true if there is exactly one zero among `x` and `y`.
    function exactlyOneZero(uint256 x, uint256 y) internal pure returns (bool z) {
        assembly {
            z := xor(iszero(x), iszero(y))
        }
    }

    /// @dev Returns the min of `x` and `y`.
    function min(uint256 x, uint256 y) internal pure returns (uint256 z) {
        assembly {
            z := xor(x, mul(xor(x, y), lt(y, x)))
        }
    }

    /// @dev Returns `x` safely cast to uint128.
    function toUint128(uint256 x) internal pure returns (uint128) {
        require(x <= type(uint128).max, ErrorsLib.MAX_UINT128_EXCEEDED);
        return uint128(x);
    }

    /// @dev Returns max(0, x - y).
    function zeroFloorSub(uint256 x, uint256 y) internal pure returns (uint256 z) {
        assembly {
            z := mul(gt(x, y), sub(x, y))
        }
    }

    /// @dev Bounds `x` between `low` and `high`.
    /// @dev Assumes that `low` <= `high`. If it is not the case it returns `low`.
    function bound(int256 x, int256 low, int256 high) internal pure returns (int256 z) {
        assembly {
            // z = min(x, high).
            z := xor(x, mul(xor(x, high), slt(high, x)))
            // z = max(z, low).
            z := xor(z, mul(xor(z, low), sgt(low, z)))
        }
    }
}
