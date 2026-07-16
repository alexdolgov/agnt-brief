// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { Ownable } from "solady/auth/Ownable.sol";
import { ERC20 } from "solady/tokens/ERC20.sol";
import { FixedPointMathLib } from "solady/utils/FixedPointMathLib.sol";
import { EnumerableSetLib } from "solady/utils/EnumerableSetLib.sol";
import { IPoolManager } from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import { IHooks } from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import { Currency } from "@uniswap/v4-core/src/types/Currency.sol";
import { PoolKey } from "@uniswap/v4-core/src/types/PoolKey.sol";
import { PoolId, PoolIdLibrary } from "@uniswap/v4-core/src/types/PoolId.sol";
import { StateLibrary } from "@uniswap/v4-core/src/libraries/StateLibrary.sol";

import { Auth } from "./modules/Auth.sol";
import { VaultPausing } from "./modules/VaultPausing.sol";
import { Timelocked } from "./modules/Timelocked.sol";
import { Fees, PerformanceFees } from "./modules/Fees.sol";
import { IPerpsOracle } from "./interfaces/IPerpsOracle.sol";
import { IPriceOracle } from "./interfaces/IPriceOracle.sol";
import { ITransferPolicy } from "./interfaces/ITransferPolicy.sol";
import { Errors } from "./Errors.sol";
import { Events } from "./Events.sol";
import { ISwapper } from "./interfaces/ISwapper.sol";
import { IVaultBase } from "./interfaces/IVaultBase.sol";
import { Constants } from "./libraries/Constants.sol";
import { VaultMathLib } from "./libraries/VaultMathLib.sol";
import { ReentrancyGuardTransient } from "solady/utils/ReentrancyGuardTransient.sol";

using PoolIdLibrary for PoolKey;
using EnumerableSetLib for EnumerableSetLib.Bytes32Set;
using StateLibrary for IPoolManager;
using FixedPointMathLib for uint256;

/// @notice Abstract base contract shared by Vault and VaultExtension.
/// Contains all state variables, inheritance chain, override resolution, and shared internals.
/// @dev IMPORTANT: Neither Vault nor VaultExtension should declare additional state variables.
/// Storage layout must remain identical between the two for delegatecall correctness.
/// @dev Immutables are declared `internal` with virtual public getters so that VaultExtension can
/// override them with `this.X()` callbacks for delegatecall safety.
abstract contract VaultBase is
    IVaultBase,
    ERC20,
    ReentrancyGuardTransient,
    Auth,
    VaultPausing,
    Timelocked,
    Fees,
    Errors,
    Events,
    Constants
{
    /// @notice Base, underlying asset for this vault. Used for deposits and withdrawals.
    /// @dev It is also assumed that vault shares are priced in the `asset`
    // forge-lint: disable-next-line(screaming-snake-case-immutable)
    ERC20 internal immutable _asset;

    /// @notice Angstrom Pool ID for this vault (derived from PoolKey)
    PoolId internal immutable _POOL;

    IPoolManager internal immutable _POOL_MANAGER;
    Currency internal immutable _CURRENCY0;
    Currency internal immutable _CURRENCY1;
    int24 internal immutable _TICK_SPACING;
    uint24 internal immutable _FEE;
    IHooks internal immutable _HOOKS;

    struct PositionParams {
        int24 tickLower;
        int24 tickUpper;
    }

    struct VaultBaseStorage {
        // TOOD: might want to combine these two into an EnumerableMap instead of set
        EnumerableSetLib.Bytes32Set positions;
        mapping(bytes32 => PositionParams) positionParams;
        ISwapper swapper;
        IPerpsOracle perpsOracle;
        address perpsWallet;
        IPriceOracle priceOracle;
        ITransferPolicy transferPolicy;
        address intentsRouter;
        address vestibule;
        mapping(address => bool) targetDisallowed;
        mapping(bytes4 => bool) functionSelectorDisallowed;
        string name;
    }

    VaultBaseStorage internal vaultBaseStorage;

    /// @dev Constructor only sets immutables. All other initialization goes through `_initVaultBase()`.
    constructor(
        ERC20 asset_,
        IPoolManager poolManager_,
        PoolKey memory poolKey_
    ) {
        _asset = asset_;
        _POOL_MANAGER = poolManager_;
        _POOL = poolKey_.toId();
        _CURRENCY0 = poolKey_.currency0;
        _CURRENCY1 = poolKey_.currency1;
        _TICK_SPACING = poolKey_.tickSpacing;
        _FEE = poolKey_.fee;
        _HOOKS = poolKey_.hooks;
        vaultBaseStorage.name = string.concat(
            "AngstromVault - ",
            _tryGetTokenName(Currency.unwrap(poolKey_.currency0)),
            " / ",
            _tryGetTokenName(Currency.unwrap(poolKey_.currency1)),
            " pool - underlying ",
            _tryGetTokenName(address(asset_))
        );
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////
    //                          IMMUTABLE GETTERS (virtual for delegatecall safety)               //
    ///////////////////////////////////////////////////////////////////////////////////////////////

    /// @dev VaultExtension overrides these to call `this.X()`, making an external call back to the
    /// Vault whose bytecode holds the correct immutable values.
    function asset() public view virtual override returns (ERC20) {
        return _asset;
    }

    // forge-lint: disable-next-line(mixed-case-function)
    function POOL() public view virtual returns (PoolId) {
        return _POOL;
    }

    // forge-lint: disable-next-line(mixed-case-function)
    function POOL_MANAGER() public view virtual returns (IPoolManager) {
        return _POOL_MANAGER;
    }

    // forge-lint: disable-next-line(mixed-case-function)
    function CURRENCY0() public view virtual returns (Currency) {
        return _CURRENCY0;
    }

    // forge-lint: disable-next-line(mixed-case-function)
    function CURRENCY1() public view virtual returns (Currency) {
        return _CURRENCY1;
    }

    // forge-lint: disable-next-line(mixed-case-function)
    function TICK_SPACING() public view virtual returns (int24) {
        return _TICK_SPACING;
    }

    // forge-lint: disable-next-line(mixed-case-function)
    function FEE() public view virtual returns (uint24) {
        return _FEE;
    }

    // forge-lint: disable-next-line(mixed-case-function)
    function HOOKS() public view virtual returns (IHooks) {
        return _HOOKS;
    }

    ///////////////////////////////////////////////////////////////////////////////////////////////

    /// @dev Initializes non-immutable state: performance fees, management fees, and owner.
    /// Called from Vault's constructor after immutables are set.
    function _initVaultBase(
        address _factory,
        address _owner,
        uint256 initialEpochLength,
        uint256 initialPerformanceFeeE6,
        uint256 initialManagementFeeAccrualBaseE18,
        address initialPerformanceFeeRecipient,
        address initialMangementFeeRecipient
    ) internal {
        _initFees(
            _factory,
            initialEpochLength,
            initialPerformanceFeeE6,
            initialManagementFeeAccrualBaseE18,
            initialPerformanceFeeRecipient,
            initialMangementFeeRecipient
        );
        _initializeOwner(_owner);
    }

    function name() public view override returns (string memory) {
        return vaultBaseStorage.name;
    }

    function symbol() public pure override returns (string memory) {
        return ("AVT");
    }

    function totalSupply() public view override(ERC20, Fees) returns (uint256 result) {
        return ERC20.totalSupply();
    }

    /// @inheritdoc IVaultBase
    function totalAssets() public view returns (uint256) {
        (uint256 _currency0Holdings, uint256 _currency1Holdings) = convertLiquidityPositionsToConstituentTokens();
        address currency0 = Currency.unwrap(CURRENCY0());
        address currency1 = Currency.unwrap(CURRENCY1());
        _currency0Holdings += ERC20(currency0).balanceOf(address(this));
        _currency1Holdings += ERC20(currency1).balanceOf(address(this));

        // perps value is assumed to be reported in the `asset`
        uint256 _totalAssets = vaultBaseStorage.perpsOracle.perpsValue()
            + convertCurrencyToAsset(currency0, _currency0Holdings)
            + convertCurrencyToAsset(currency1, _currency1Holdings);

        if (address(asset()) != currency0 && address(asset()) != currency1) {
            _totalAssets += asset().balanceOf(address(this));
        }

        return _totalAssets;
    }

    /// @inheritdoc IVaultBase
    function convertToAssets(
        uint256 shares
    ) public view override(IVaultBase, PerformanceFees) returns (uint256) {
        // account for accrued but not-yet-minted fees, and use 1 virtual share (add 1 to both assets & shares)
        return shares.fullMulDiv(totalAssets() + 1, totalSharesIncludingProvisional() + 1);
    }

    /// @inheritdoc IVaultBase
    function convertToShares(
        uint256 assets
    ) external view returns (uint256) {
        // account for accrued but not-yet-minted fees, and use 1 virtual share (add 1 to both assets & shares)
        return assets.fullMulDiv(totalSharesIncludingProvisional() + 1, totalAssets() + 1);
    }

    /// @inheritdoc IVaultBase
    function convertLiquidityPositionsToConstituentTokens()
        public
        view
        returns (uint256 currency0Amount, uint256 currency1Amount)
    {
        // slither-disable-next-line unused-return
        (uint160 sqrtPriceX96,,,) = POOL_MANAGER().getSlot0(POOL());
        uint256 length = vaultBaseStorage.positions.length();
        for (uint256 i = 0; i < length; ++i) {
            (uint256 a0, uint256 a1) = _getPositionAmounts(vaultBaseStorage.positions.at(i), sqrtPriceX96);
            currency0Amount += a0;
            currency1Amount += a1;
        }
    }

    /// @inheritdoc IVaultBase
    function convertCurrencyToAsset(
        address currency,
        uint256 amount
    ) public view returns (uint256) {
        if (currency == address(asset())) {
            return amount;
        } else {
            return
                vaultBaseStorage.priceOracle.price({ quoteAsset: currency, baseAsset: address(asset()) }).mulWad(amount);
        }
    }

    /// @dev Includes fee growth. Round down for both token amounts.
    ///      Delegates to VaultMathLib to avoid inlining heavy UniV4 math.
    function _getPositionAmounts(
        bytes32 positionId,
        uint160 sqrtPriceX96
    ) internal view returns (uint256 amount0, uint256 amount1) {
        // slither-disable-next-line unused-return
        return VaultMathLib.getPositionAmounts(
            VaultMathLib.PositionAmountsParams({
                poolManager: POOL_MANAGER(),
                pool: POOL(),
                positionId: positionId,
                tickLower: vaultBaseStorage.positionParams[positionId].tickLower,
                tickUpper: vaultBaseStorage.positionParams[positionId].tickUpper,
                sqrtPriceX96: sqrtPriceX96
            })
        );
    }

    /// @dev Function is overridden to enforce timelocking of ownership transfers.
    function transferOwnership(
        address newOwner
    ) public payable override onlyOwner timelocked {
        Ownable.transferOwnership(newOwner);
    }

    /// @dev Function is overridden to enforce timelocking of ownership transfers.
    function completeOwnershipHandover(
        address pendingOwner
    ) public payable override onlyOwner timelocked {
        Ownable.completeOwnershipHandover(pendingOwner);
    }

    /// @dev Hook that is called before any transfer of tokens.
    /// This includes minting and burning.
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 /* amount */
    ) internal override {
        ITransferPolicy _transferPolicy = vaultBaseStorage.transferPolicy;
        if (address(_transferPolicy) != address(0)) {
            address _vestibule = vaultBaseStorage.vestibule;
            if (from != address(0) && from != _vestibule) {
                require(_transferPolicy.canTransferShares(from), UserShareTransfersForbidden());
            }
            if (to != address(0) && to != _vestibule) {
                require(_transferPolicy.canTransferShares(to), UserShareTransfersForbidden());
            }
        }
    }

    /// @notice Address used for executing swaps.
    function swapper() public view returns (ISwapper) {
        return vaultBaseStorage.swapper;
    }

    /// @notice Oracle used to report perps value in the vault asset.
    function perpsOracle() public view returns (IPerpsOracle) {
        return vaultBaseStorage.perpsOracle;
    }

    /// @notice Address used for external perps collateral custody.
    function perpsWallet() public view returns (address) {
        return vaultBaseStorage.perpsWallet;
    }

    /// @notice Oracle used for converting token amounts into `asset` amounts.
    function priceOracle() public view returns (IPriceOracle) {
        return vaultBaseStorage.priceOracle;
    }

    /// @notice Contract used to restrict deposits, redemptions, or share transfers.
    function transferPolicy() public view returns (ITransferPolicy) {
        return vaultBaseStorage.transferPolicy;
    }

    /// @notice Address of the intents based swap router, approved to spend vault tokens.
    function intentsRouter() public view returns (address) {
        return vaultBaseStorage.intentsRouter;
    }

    /// @notice Per-vault escrow/request contract for async deposits and redemptions.
    function vestibule() public view returns (address) {
        return vaultBaseStorage.vestibule;
    }

    function _mint(
        address to,
        uint256 amount
    ) internal override(ERC20, Fees) {
        ERC20._mint(to, amount);
    }

    function _tryGetTokenName(
        address token
    ) internal view returns (string memory) {
        if (token != address(0)) {
            return ERC20(token).name();
        } else {
            return "ETH";
        }
    }

    modifier onlyVestibule() {
        require(msg.sender == vaultBaseStorage.vestibule, OnlyVestibule());
        _;
    }
}
