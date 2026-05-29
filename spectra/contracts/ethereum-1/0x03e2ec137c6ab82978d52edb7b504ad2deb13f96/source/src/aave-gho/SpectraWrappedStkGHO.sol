// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import {Spectra4626Wrapper, ERC4626Upgradeable} from "../utils/Spectra4626Wrapper.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20Metadata, IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IStakeToken} from "./interfaces/IStakeToken.sol";

/// @title SpectraWrappedStkGHO - Spectra ERC4626 wrapper for Aave's stk GHO
/// @notice This contract wraps a stkGHO Vault with the ERC4626 interface
/// @notice The contract is instantiated with the stkGHO address and the GHO address that will act as the underlying
/// @custom:oz-upgrades-from SpectraWrappedStkGHOV1
contract SpectraWrappedStkGHO is Spectra4626Wrapper {
    using Math for uint256;
    using SafeERC20 for IERC20;

    uint256 public constant EXCHANGE_RATE_UNIT = 1e18;
    uint256 public constant STKGO_MAX_SUPPLY = type(uint104).max;

    error WithdrawNotImplemented();
    error RedeemNotImplemented();
    error MintNotImplemented();

    constructor() {
        _disableInitializers();
    }

    function initialize(address _asset, address _stkGHO) external initializer {
        __Spectra4626Wrapper_init(_asset, _stkGHO);
        IERC20(_asset).forceApprove(_stkGHO, type(uint256).max);
    }

    /*//////////////////////////////////////////////////////////////
                        ERC4626 GETTERS
    //////////////////////////////////////////////////////////////*/

    /// @dev See {IERC4626-totalAssets}.
    function totalAssets() public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return _convertToAssets(totalSupply(), Math.Rounding.Floor);
    }

    /** @dev See {IERC4626-maxDeposit}. */
    function maxDeposit(
        address /*owner*/
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return _stConvertToAssets(_stMaxMint(), Math.Rounding.Floor);
    }

    /** @dev See {IERC4626-maxMint}. */
    function maxMint(
        address /*owner*/
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return previewWrap(_stMaxMint());
    }

    /** @dev See {IERC4626-maxWithdraw}. */
    function maxWithdraw(
        address /*owner*/
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return 0;
    }

    /** @dev See {IERC4626-maxRedeem}. */
    function maxRedeem(
        address /*owner*/
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return 0;
    }

    /*//////////////////////////////////////////////////////////////
                    ERC4626 PUBLIC OVERRIDES
    //////////////////////////////////////////////////////////////*/

    /// @dev See {IERC4626-withdraw}.
    /// @notice As per the eip-4626 specifications, we decided to revert as withdraw is not yet possible with stkGHO.
    function withdraw(
        uint256 /*assets*/,
        address /*receiver*/,
        address /*owner*/
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        revert WithdrawNotImplemented();
    }

    /// @dev See {IERC4626-redeem}.
    /// @notice As per the eip-4626 specifications, we decided to revert as redeem are not yet possible with stkGHO.
    function redeem(
        uint256 /*shares*/,
        address /*receiver*/,
        address /*owner*/
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        revert RedeemNotImplemented();
    }

    /*//////////////////////////////////////////////////////////////
                    ERC4626 INTERNAL OVERRIDES
    //////////////////////////////////////////////////////////////*/

    /// @dev Internal conversion function (from assets to shares) with support for rounding direction.
    /// @param assets The amount of assets to convert.
    /// @param rounding The rounding direction to use.
    /// @return The amount of shares.
    function _convertToShares(
        uint256 assets,
        Math.Rounding rounding
    ) internal view override(ERC4626Upgradeable) returns (uint256) {
        uint256 stkGHOAmount = _stConvertToShares(assets, rounding);
        return _previewWrap(stkGHOAmount, rounding);
    }

    /// @dev Internal conversion function (from shares to assets) with support for rounding direction.
    /// @param shares The amount of shares to convert.
    /// @param rounding The rounding direction to use.
    /// @return The amount of assets.
    function _convertToAssets(
        uint256 shares,
        Math.Rounding rounding
    ) internal view override(ERC4626Upgradeable) returns (uint256) {
        uint256 stkGHOAmount = _previewUnwrap(shares, rounding);
        return _stConvertToAssets(stkGHOAmount, rounding);
    }

    function _deposit(
        address caller,
        address receiver,
        uint256 assets,
        uint256 shares
    ) internal override(ERC4626Upgradeable) {
        super._deposit(caller, receiver, assets, shares);
        _stStake(assets);
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNALS - GHO PROTOCOL
    //////////////////////////////////////////////////////////////*/

    /// @dev Internal function to mint stkGHO with GHO.
    function _stStake(uint256 amount) internal {
        if (amount != 0) {
            IStakeToken(vault()).stake(address(this), amount);
        }
    }

    /// @dev Internal stkGHO conversion function (from assets to stkGHO shares) with support for rounding direction.
    function _stConvertToShares(
        uint256 assets,
        Math.Rounding rounding
    ) internal view returns (uint256) {
        return assets.mulDiv(IStakeToken(vault()).getExchangeRate(), EXCHANGE_RATE_UNIT, rounding);
    }

    /// @dev Internal stkGHO conversion function (from stkGHO shares to assets) with support for rounding direction.
    function _stConvertToAssets(
        uint256 shares,
        Math.Rounding rounding
    ) internal view returns (uint256) {
        return shares.mulDiv(EXCHANGE_RATE_UNIT, IStakeToken(vault()).getExchangeRate(), rounding);
    }

    /// @dev Internal function to get the max mint amount of stkGHO.
    /// @return The max mint amount of stkGHO.
    function _stMaxMint() internal view returns (uint256) {
        return STKGO_MAX_SUPPLY - IERC20(vault()).totalSupply();
    }

    /// @dev Internal function to get the total amount of stkGHO shares held by the contract.
    /// @return The total amount of stkGHO shares.
    function _totalStkGHOShares() internal view returns (uint256) {
        return IERC20(vault()).balanceOf(address(this));
    }
}
