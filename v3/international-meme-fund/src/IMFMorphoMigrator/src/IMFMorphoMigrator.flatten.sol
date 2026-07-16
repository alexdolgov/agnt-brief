// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 ^0.8.19 ^0.8.20;

// lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol

// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/IERC20.sol)

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// src/interfaces/IMorpho.sol

type Id is bytes32;

struct MarketParams {
    address loanToken;
    address collateralToken;
    address oracle;
    address irm;
    uint256 lltv;
}

/// @dev Warning: For `feeRecipient`, `supplyShares` does not contain the accrued shares since the last interest
/// accrual.
struct Position {
    uint256 supplyShares;
    uint128 borrowShares;
    uint128 collateral;
}

/// @dev Warning: `totalSupplyAssets` does not contain the accrued interest since the last interest accrual.
/// @dev Warning: `totalBorrowAssets` does not contain the accrued interest since the last interest accrual.
/// @dev Warning: `totalSupplyShares` does not contain the additional shares accrued by `feeRecipient` since the last
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

/// @dev This interface is used for factorizing IMorphoStaticTyping and IMorpho.
/// @dev Consider using the IMorpho interface instead of this one.
interface IMorphoBase {
    /// @notice The EIP-712 domain separator.
    /// @dev Warning: Every EIP-712 signed message based on this domain separator can be reused on chains sharing the
    /// same chain id and on forks because the domain separator would be the same.
    function DOMAIN_SEPARATOR() external view returns (bytes32);

    /// @notice The owner of the contract.
    /// @dev It has the power to change the owner.
    /// @dev It has the power to set fees on markets and set the fee recipient.
    /// @dev It has the power to enable but not disable IRMs and LLTVs.
    function owner() external view returns (address);

    /// @notice The fee recipient of all markets.
    /// @dev The recipient receives the fees of a given market through a supply position on that market.
    function feeRecipient() external view returns (address);

    /// @notice Whether the `irm` is enabled.
    function isIrmEnabled(address irm) external view returns (bool);

    /// @notice Whether the `lltv` is enabled.
    function isLltvEnabled(uint256 lltv) external view returns (bool);

    /// @notice Whether `authorized` is authorized to modify `authorizer`'s position on all markets.
    /// @dev Anyone is authorized to modify their own positions, regardless of this variable.
    function isAuthorized(address authorizer, address authorized) external view returns (bool);

    /// @notice The `authorizer`'s current nonce. Used to prevent replay attacks with EIP-712 signatures.
    function nonce(address authorizer) external view returns (uint256);

    /// @notice Sets `newOwner` as `owner` of the contract.
    /// @dev Warning: No two-step transfer ownership.
    /// @dev Warning: The owner can be set to the zero address.
    function setOwner(address newOwner) external;

    /// @notice Enables `irm` as a possible IRM for market creation.
    /// @dev Warning: It is not possible to disable an IRM.
    function enableIrm(address irm) external;

    /// @notice Enables `lltv` as a possible LLTV for market creation.
    /// @dev Warning: It is not possible to disable a LLTV.
    function enableLltv(uint256 lltv) external;

    /// @notice Sets the `newFee` for the given market `marketParams`.
    /// @param newFee The new fee, scaled by WAD.
    /// @dev Warning: The recipient can be the zero address.
    function setFee(MarketParams memory marketParams, uint256 newFee) external;

    /// @notice Sets `newFeeRecipient` as `feeRecipient` of the fee.
    /// @dev Warning: If the fee recipient is set to the zero address, fees will accrue there and will be lost.
    /// @dev Modifying the fee recipient will allow the new recipient to claim any pending fees not yet accrued. To
    /// ensure that the current recipient receives all due fees, accrue interest manually prior to making any changes.
    function setFeeRecipient(address newFeeRecipient) external;

    /// @notice Creates the market `marketParams`.
    /// @dev Here is the list of assumptions on the market's dependencies (tokens, IRM and oracle) that guarantees
    /// Morpho behaves as expected:
    /// - The token should be ERC-20 compliant, except that it can omit return values on `transfer` and `transferFrom`.
    /// - The token balance of Morpho should only decrease on `transfer` and `transferFrom`. In particular, tokens with
    /// burn functions are not supported.
    /// - The token should not re-enter Morpho on `transfer` nor `transferFrom`.
    /// - The token balance of the sender (resp. receiver) should decrease (resp. increase) by exactly the given amount
    /// on `transfer` and `transferFrom`. In particular, tokens with fees on transfer are not supported.
    /// - The IRM should not re-enter Morpho.
    /// - The oracle should return a price with the correct scaling.
    /// @dev Here is a list of assumptions on the market's dependencies which, if broken, could break Morpho's liveness
    /// properties (funds could get stuck):
    /// - The token should not revert on `transfer` and `transferFrom` if balances and approvals are right.
    /// - The amount of assets supplied and borrowed should not go above ~1e35 (otherwise the computation of
    /// `toSharesUp` and `toSharesDown` can overflow).
    /// - The IRM should not revert on `borrowRate`.
    /// - The IRM should not return a very high borrow rate (otherwise the computation of `interest` in
    /// `_accrueInterest` can overflow).
    /// - The oracle should not revert `price`.
    /// - The oracle should not return a very high price (otherwise the computation of `maxBorrow` in `_isHealthy` or of
    /// `assetsRepaid` in `liquidate` can overflow).
    /// @dev The borrow share price of a market with less than 1e4 assets borrowed can be decreased by manipulations, to
    /// the point where `totalBorrowShares` is very large and borrowing overflows.
    function createMarket(MarketParams memory marketParams) external;

    /// @notice Supplies `assets` or `shares` on behalf of `onBehalf`, optionally calling back the caller's
    /// `onMorphoSupply` function with the given `data`.
    /// @dev Either `assets` or `shares` should be zero. Most use cases should rely on `assets` as an input so the
    /// caller is guaranteed to have `assets` tokens pulled from their balance, but the possibility to mint a specific
    /// amount of shares is given for full compatibility and precision.
    /// @dev Supplying a large amount can revert for overflow.
    /// @dev Supplying an amount of shares may lead to supply more or fewer assets than expected due to slippage.
    /// Consider using the `assets` parameter to avoid this.
    /// @param marketParams The market to supply assets to.
    /// @param assets The amount of assets to supply.
    /// @param shares The amount of shares to mint.
    /// @param onBehalf The address that will own the increased supply position.
    /// @param data Arbitrary data to pass to the `onMorphoSupply` callback. Pass empty data if not needed.
    /// @return assetsSupplied The amount of assets supplied.
    /// @return sharesSupplied The amount of shares minted.
    function supply(
        MarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        address onBehalf,
        bytes memory data
    ) external returns (uint256 assetsSupplied, uint256 sharesSupplied);

    /// @notice Withdraws `assets` or `shares` on behalf of `onBehalf` and sends the assets to `receiver`.
    /// @dev Either `assets` or `shares` should be zero. To withdraw max, pass the `shares`'s balance of `onBehalf`.
    /// @dev `msg.sender` must be authorized to manage `onBehalf`'s positions.
    /// @dev Withdrawing an amount corresponding to more shares than supplied will revert for underflow.
    /// @dev It is advised to use the `shares` input when withdrawing the full position to avoid reverts due to
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

    /// @notice Borrows `assets` or `shares` on behalf of `onBehalf` and sends the assets to `receiver`.
    /// @dev Either `assets` or `shares` should be zero. Most use cases should rely on `assets` as an input so the
    /// caller is guaranteed to borrow `assets` of tokens, but the possibility to mint a specific amount of shares is
    /// given for full compatibility and precision.
    /// @dev `msg.sender` must be authorized to manage `onBehalf`'s positions.
    /// @dev Borrowing a large amount can revert for overflow.
    /// @dev Borrowing an amount of shares may lead to borrow fewer assets than expected due to slippage.
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

    /// @notice Repays `assets` or `shares` on behalf of `onBehalf`, optionally calling back the caller's
    /// `onMorphoRepay` function with the given `data`.
    /// @dev Either `assets` or `shares` should be zero. To repay max, pass the `shares`'s balance of `onBehalf`.
    /// @dev Repaying an amount corresponding to more shares than borrowed will revert for underflow.
    /// @dev It is advised to use the `shares` input when repaying the full position to avoid reverts due to conversion
    /// roundings between shares and assets.
    /// @dev An attacker can front-run a repay with a small repay making the transaction revert for underflow.
    /// @param marketParams The market to repay assets to.
    /// @param assets The amount of assets to repay.
    /// @param shares The amount of shares to burn.
    /// @param onBehalf The address of the owner of the debt position.
    /// @param data Arbitrary data to pass to the `onMorphoRepay` callback. Pass empty data if not needed.
    /// @return assetsRepaid The amount of assets repaid.
    /// @return sharesRepaid The amount of shares burned.
    function repay(
        MarketParams memory marketParams,
        uint256 assets,
        uint256 shares,
        address onBehalf,
        bytes memory data
    ) external returns (uint256 assetsRepaid, uint256 sharesRepaid);

    /// @notice Supplies `assets` of collateral on behalf of `onBehalf`, optionally calling back the caller's
    /// `onMorphoSupplyCollateral` function with the given `data`.
    /// @dev Interest are not accrued since it's not required and it saves gas.
    /// @dev Supplying a large amount can revert for overflow.
    /// @param marketParams The market to supply collateral to.
    /// @param assets The amount of collateral to supply.
    /// @param onBehalf The address that will own the increased collateral position.
    /// @param data Arbitrary data to pass to the `onMorphoSupplyCollateral` callback. Pass empty data if not needed.
    function supplyCollateral(MarketParams memory marketParams, uint256 assets, address onBehalf, bytes memory data)
        external;

    /// @notice Withdraws `assets` of collateral on behalf of `onBehalf` and sends the assets to `receiver`.
    /// @dev `msg.sender` must be authorized to manage `onBehalf`'s positions.
    /// @dev Withdrawing an amount corresponding to more collateral than supplied will revert for underflow.
    /// @param marketParams The market to withdraw collateral from.
    /// @param assets The amount of collateral to withdraw.
    /// @param onBehalf The address of the owner of the collateral position.
    /// @param receiver The address that will receive the collateral assets.
    function withdrawCollateral(MarketParams memory marketParams, uint256 assets, address onBehalf, address receiver)
        external;

    /// @notice Liquidates the given `repaidShares` of debt asset or seize the given `seizedAssets` of collateral on the
    /// given market `marketParams` of the given `borrower`'s position, optionally calling back the caller's
    /// `onMorphoLiquidate` function with the given `data`.
    /// @dev Either `seizedAssets` or `repaidShares` should be zero.
    /// @dev Seizing more than the collateral balance will underflow and revert without any error message.
    /// @dev Repaying more than the borrow balance will underflow and revert without any error message.
    /// @dev An attacker can front-run a liquidation with a small repay making the transaction revert for underflow.
    /// @param marketParams The market of the position.
    /// @param borrower The owner of the position.
    /// @param seizedAssets The amount of collateral to seize.
    /// @param repaidShares The amount of shares to repay.
    /// @param data Arbitrary data to pass to the `onMorphoLiquidate` callback. Pass empty data if not needed.
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
    /// @dev Flash loans have access to the whole balance of the contract (the liquidity and deposited collateral of all
    /// markets combined, plus donations).
    /// @dev Warning: Not ERC-3156 compliant but compatibility is easily reached:
    /// - `flashFee` is zero.
    /// - `maxFlashLoan` is the token's balance of this contract.
    /// - The receiver of `assets` is the caller.
    /// @param token The token to flash loan.
    /// @param assets The amount of assets to flash loan.
    /// @param data Arbitrary data to pass to the `onMorphoFlashLoan` callback.
    function flashLoan(address token, uint256 assets, bytes calldata data) external;

    /// @notice Sets the authorization for `authorized` to manage `msg.sender`'s positions.
    /// @param authorized The authorized address.
    /// @param newIsAuthorized The new authorization status.
    function setAuthorization(address authorized, bool newIsAuthorized) external;

    /// @notice Sets the authorization for `authorization.authorized` to manage `authorization.authorizer`'s positions.
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

/// @dev This interface is inherited by Morpho so that function signatures are checked by the compiler.
/// @dev Consider using the IMorpho interface instead of this one.
interface IMorphoStaticTyping is IMorphoBase {
    /// @notice The state of the position of `user` on the market corresponding to `id`.
    /// @dev Warning: For `feeRecipient`, `supplyShares` does not contain the accrued shares since the last interest
    /// accrual.
    function position(Id id, address user)
        external
        view
        returns (uint256 supplyShares, uint128 borrowShares, uint128 collateral);

    /// @notice The state of the market corresponding to `id`.
    /// @dev Warning: `totalSupplyAssets` does not contain the accrued interest since the last interest accrual.
    /// @dev Warning: `totalBorrowAssets` does not contain the accrued interest since the last interest accrual.
    /// @dev Warning: `totalSupplyShares` does not contain the accrued shares by `feeRecipient` since the last interest
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

    /// @notice The market params corresponding to `id`.
    /// @dev This mapping is not used in Morpho. It is there to enable reducing the cost associated to calldata on layer
    /// 2s by creating a wrapper contract with functions that take `id` as input instead of `marketParams`.
    function idToMarketParams(Id id)
        external
        view
        returns (address loanToken, address collateralToken, address oracle, address irm, uint256 lltv);
}

/// @title IMorpho
/// @author Morpho Labs
/// @custom:contact security@morpho.org
/// @dev Use this interface for Morpho to have access to all the functions with the appropriate function signatures.
interface IMorpho is IMorphoBase {
    /// @notice The state of the position of `user` on the market corresponding to `id`.
    /// @dev Warning: For `feeRecipient`, `p.supplyShares` does not contain the accrued shares since the last interest
    /// accrual.
    function position(Id id, address user) external view returns (Position memory p);

    /// @notice The state of the market corresponding to `id`.
    /// @dev Warning: `m.totalSupplyAssets` does not contain the accrued interest since the last interest accrual.
    /// @dev Warning: `m.totalBorrowAssets` does not contain the accrued interest since the last interest accrual.
    /// @dev Warning: `m.totalSupplyShares` does not contain the accrued shares by `feeRecipient` since the last
    /// interest accrual.
    function market(Id id) external view returns (Market memory m);

    /// @notice The market params corresponding to `id`.
    /// @dev This mapping is not used in Morpho. It is there to enable reducing the cost associated to calldata on layer
    /// 2s by creating a wrapper contract with functions that take `id` as input instead of `marketParams`.
    function idToMarketParams(Id id) external view returns (MarketParams memory);
}

// src/interfaces/IMorphoCallbacks.sol

/// @title IMorphoLiquidateCallback
/// @notice Interface that liquidators willing to use `liquidate`'s callback must implement.
interface IMorphoLiquidateCallback {
    /// @notice Callback called when a liquidation occurs.
    /// @dev The callback is called only if data is not empty.
    /// @param repaidAssets The amount of repaid assets.
    /// @param data Arbitrary data passed to the `liquidate` function.
    function onMorphoLiquidate(uint256 repaidAssets, bytes calldata data) external;
}

/// @title IMorphoRepayCallback
/// @notice Interface that users willing to use `repay`'s callback must implement.
interface IMorphoRepayCallback {
    /// @notice Callback called when a repayment occurs.
    /// @dev The callback is called only if data is not empty.
    /// @param assets The amount of repaid assets.
    /// @param data Arbitrary data passed to the `repay` function.
    function onMorphoRepay(uint256 assets, bytes calldata data) external;
}

/// @title IMorphoSupplyCallback
/// @notice Interface that users willing to use `supply`'s callback must implement.
interface IMorphoSupplyCallback {
    /// @notice Callback called when a supply occurs.
    /// @dev The callback is called only if data is not empty.
    /// @param assets The amount of supplied assets.
    /// @param data Arbitrary data passed to the `supply` function.
    function onMorphoSupply(uint256 assets, bytes calldata data) external;
}

/// @title IMorphoSupplyCollateralCallback
/// @notice Interface that users willing to use `supplyCollateral`'s callback must implement.
interface IMorphoSupplyCollateralCallback {
    /// @notice Callback called when a supply of collateral occurs.
    /// @dev The callback is called only if data is not empty.
    /// @param assets The amount of supplied collateral.
    /// @param data Arbitrary data passed to the `supplyCollateral` function.
    function onMorphoSupplyCollateral(uint256 assets, bytes calldata data) external;
}

/// @title IMorphoFlashLoanCallback
/// @notice Interface that users willing to use `flashLoan`'s callback must implement.
interface IMorphoFlashLoanCallback {
    /// @notice Callback called when a flash loan occurs.
    /// @dev The callback is called only if data is not empty.
    /// @param assets The amount of assets that was flash loaned.
    /// @param data Arbitrary data passed to the `flashLoan` function.
    function onMorphoFlashLoan(uint256 assets, bytes calldata data) external;
}

// src/IMFMorphoMigrator.sol

contract IMFMorphoMigrator is IMorphoFlashLoanCallback {
    IMorphoBase public constant MORPHO = IMorphoBase(0xBBBBBbbBBb9cC5e90e3b3Af64bdAF62C37EEFFCb);
    IMorphoStaticTyping public immutable MORPHO_VIEW = IMorphoStaticTyping(address(MORPHO));

    bytes32 private _expectedCall;

    error Zero();
    error TokenMismatch();
    error NotLowerLLTV();
    error NoDebt();
    error NoCollateral();
    error NotMorpho();
    error Unauthorized();

    enum FlashMode {
        Collateral,
        Debt
    }

    struct MigrationArgs {
        MarketParams oldMarket;
        MarketParams newMarket;
        address borrower;
        uint256 debtAssetsNeeded;
        uint128 borrowShares;
        uint128 collateralToMove;
        FlashMode mode;
    }

    /* CONSTRUCTOR */
    constructor() {}

    /* PUBLIC FUNCTIONS */
    function migratePositionExact(
        MarketParams calldata oldMarket,
        MarketParams calldata newMarket,
        FlashMode mode,
        Authorization calldata grantAuth,
        Signature calldata grantSig,
        Authorization calldata revokeAuth,
        Signature calldata revokeSig
    ) external {
        // 1) safety checks
        if (msg.sender == address(0)) revert Zero();
        if (grantAuth.authorizer != msg.sender) revert Unauthorized();
        if (grantAuth.authorized != address(this)) revert Unauthorized();
        if (!grantAuth.isAuthorized) revert Unauthorized();
        if (grantAuth.deadline < block.timestamp) revert Unauthorized();
        if (revokeAuth.authorizer != msg.sender) revert Unauthorized();
        if (revokeAuth.authorized != address(this)) revert Unauthorized();
        if (revokeAuth.isAuthorized) revert Unauthorized();
        if (revokeAuth.deadline < block.timestamp) revert Unauthorized();
        uint256 currentNonce = MORPHO.nonce(msg.sender);
        if (grantAuth.nonce != currentNonce) revert Unauthorized();
        if (revokeAuth.nonce != currentNonce + 1) revert Unauthorized();

        // 2) grant auth
        MORPHO.setAuthorizationWithSig(grantAuth, grantSig);

        // 2) ensure markets align
        if (oldMarket.loanToken != newMarket.loanToken || oldMarket.collateralToken != newMarket.collateralToken) {
            revert TokenMismatch();
        }
        if (newMarket.lltv >= oldMarket.lltv) revert NotLowerLLTV();

        MORPHO.accrueInterest(oldMarket);
        Id oldId = _id(oldMarket);

        (, uint128 borrowShares, uint128 collateralAmt) = MORPHO_VIEW.position(oldId, msg.sender);
        if (collateralAmt == 0) revert NoCollateral();

        (, , uint128 tBorrowAssets, uint128 tBorrowShares, ,) = MORPHO_VIEW.market(oldId);
        uint256 debtAssetsNeeded = _toAssetsUp(uint256(borrowShares), uint256(tBorrowAssets), uint256(tBorrowShares));

        // 3) if no debt, just withdraw and supply, if debt exists then flash
        if (debtAssetsNeeded == 0) {
            MORPHO.withdrawCollateral(oldMarket, collateralAmt, msg.sender, address(this));
            _approve(newMarket.collateralToken, address(MORPHO), collateralAmt);
            MORPHO.supplyCollateral(newMarket, collateralAmt, msg.sender, "");
        } else {
            bytes memory payload = abi.encode(
                MigrationArgs({
                    oldMarket: oldMarket,
                    newMarket: newMarket,
                    borrower: msg.sender,
                    debtAssetsNeeded: debtAssetsNeeded,
                    borrowShares: borrowShares,
                    collateralToMove: collateralAmt,
                    mode: mode
                })
            );
            _expectedCall = keccak256(payload);

            if (mode == FlashMode.Collateral) {
                MORPHO.flashLoan(oldMarket.collateralToken, uint256(collateralAmt), payload);
            } else {
                MORPHO.flashLoan(oldMarket.loanToken, uint256(debtAssetsNeeded), payload);
            }

            _expectedCall = bytes32(0);
        }

        // 4) revoke sig
        MORPHO.setAuthorizationWithSig(revokeAuth, revokeSig);
    }

    /// @dev Morpho sends tokens, calls this, then pulls them back via transferFrom.
    function onMorphoFlashLoan(uint256 assets, bytes calldata data) external override {
        if (msg.sender != address(MORPHO)) revert NotMorpho();
        if (_expectedCall == bytes32(0) || keccak256(data) != _expectedCall) revert Unauthorized();

        MigrationArgs memory m = abi.decode(data, (MigrationArgs));
        address loanToken = m.oldMarket.loanToken;
        address collToken = m.oldMarket.collateralToken;

        if (m.mode == FlashMode.Collateral) {
            // ==== Collateral-flash mode ====
            if (assets < uint256(m.collateralToMove)) revert NoCollateral();

            // 1) supply flashed collateral to NEW
            _approve(collToken, address(MORPHO), assets);
            MORPHO.supplyCollateral(m.newMarket, assets, m.borrower, "");

            // 2) borrow loan token on NEW to cover old debt
            MORPHO.borrow(m.newMarket, m.debtAssetsNeeded, 0, m.borrower, address(this));

            // 3) repay OLD debt in shares to avoid rounding shortfalls
            _approve(loanToken, address(MORPHO), m.debtAssetsNeeded);
            MORPHO.repay(m.oldMarket, 0, uint256(m.borrowShares), m.borrower, "");

            // 4) withdraw user's collateral from OLD to this contract
            //    NOTE: if you're "last" and withdrawable < expected, this would fail.
            MORPHO.withdrawCollateral(m.oldMarket, uint256(m.collateralToMove), m.borrower, address(this));

            // 5) repay collateral flash-loan
            _approve(collToken, address(MORPHO), assets);
        } else {
            // ==== Debt-flash mode (safe when you're last) ====
            if (assets < m.debtAssetsNeeded) revert NoDebt();

            // 1) repay OLD debt immediately using flashed loan token
            _approve(loanToken, address(MORPHO), m.debtAssetsNeeded);
            MORPHO.repay(m.oldMarket, 0, uint256(m.borrowShares), m.borrower, "");

            // 2) withdraw ALL user's collateral from OLD to this contract
            MORPHO.withdrawCollateral(m.oldMarket, uint256(m.collateralToMove), m.borrower, address(this));

            // 3) supply that collateral to NEW
            _approve(collToken, address(MORPHO), m.collateralToMove);
            MORPHO.supplyCollateral(m.newMarket, m.collateralToMove, m.borrower, "");

            // 4) borrow loan token on NEW and let Morpho pull it back for the flash-loan repayment
            MORPHO.borrow(m.newMarket, m.debtAssetsNeeded, 0, m.borrower, address(this));
            _approve(loanToken, address(MORPHO), m.debtAssetsNeeded);
        }
    }

    /* PRIVATE FUNCTIONS */
    function _id(MarketParams memory p) internal pure returns (Id) {
        return Id.wrap(keccak256(abi.encode(p)));
    }

    function _toAssetsUp(uint256 shares, uint256 totalAssets, uint256 totalShares) internal pure returns (uint256) {
        if (shares == 0 || totalShares == 0) return 0;
        uint256 num = shares * totalAssets;
        return (num + totalShares - 1) / totalShares;
    }

    function _approve(address token, address spender, uint256 amount) internal {
        if (token == address(0)) return;
        IERC20(token).approve(spender, amount);
    }
}
