// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import {Spectra4626Wrapper, ERC4626Upgradeable} from "../utils/Spectra4626Wrapper.sol";
import {IERC20Metadata, IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IPrice} from "./interfaces/IPrice.sol";

/// @title SpectraWrappedRLP - Spectra ERC4626 wrapper resolv's RLP
/// @notice This contract is an adapter for resolv RLP with the ERC4626 interface
/// @notice The contract is instantiated with the USDC token address, RLP token address,
// the resolv price contract, and the access manager.
contract SpectraWrappedRLP is Spectra4626Wrapper {
    using Math for uint256;
    using SafeERC20 for IERC20;

    uint256 private RLP_UNIT;
    address private PRICE_CONTRACT;

    error NotImplemented();

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _usdc,
        address _rlp,
        address _initialAuthority
    ) external initializer {
        __Spectra4626Wrapper_init(_usdc, _rlp, _initialAuthority);
        RLP_UNIT = 10 ** 18;
        PRICE_CONTRACT = 0xaE2364579D6cB4Bbd6695846C1D595cA9AF3574d;
    }

    /*//////////////////////////////////////////////////////////////
                        ERC4626 GETTERS
    //////////////////////////////////////////////////////////////*/

    /** @dev See {IERC4626-maxDeposit}. */
    function maxDeposit(
        address
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return 0;
    }

    /** @dev See {IERC4626-maxMint}. */
    function maxMint(address) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return 0;
    }

    /** @dev See {IERC4626-maxWithdraw}. */
    function maxWithdraw(
        address
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return 0;
    }

    /** @dev See {IERC4626-maxRedeem}. */
    function maxRedeem(
        address
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return 0;
    }

    /*//////////////////////////////////////////////////////////////
                    ERC4626 PUBLIC OVERRIDES
    //////////////////////////////////////////////////////////////*/

    /// @dev See {IERC4626-deposit}.
    function deposit(
        uint256 /*assets*/,
        address /*receiver*/
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        revert NotImplemented();
    }

    /// @dev See {IERC4626-mint}.
    function mint(
        uint256 /*shares*/,
        address /*receiver*/
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        revert NotImplemented();
    }

    /// @dev See {IERC4626-withdraw}.
    function withdraw(
        uint256 /*assets*/,
        address /*receiver*/,
        address /*owner*/
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        revert NotImplemented();
    }

    /// @dev See {IERC4626-redeem}.
    function redeem(
        uint256 /*shares*/,
        address /*receiver*/,
        address /*owner*/
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        revert NotImplemented();
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
        uint256 dollarAmount = _usdcToDollar(assets, rounding);
        uint256 rlpAmount = _rlpConvertToShares(dollarAmount, rounding);
        return _previewWrap(rlpAmount, rounding);
    }

    /// @dev Internal conversion function (from shares to assets) with support for rounding direction.
    /// @param shares The amount of shares to convert.
    /// @param rounding The rounding direction to use.
    /// @return The amount of assets.
    function _convertToAssets(
        uint256 shares,
        Math.Rounding rounding
    ) internal view override(ERC4626Upgradeable) returns (uint256) {
        uint256 rlpAmount = _previewUnwrap(shares, rounding);
        uint256 dollarAmount = _rlpConvertToAssets(rlpAmount, rounding);
        return _dollarToUsdc(dollarAmount, rounding);
    }

    /// @dev Internal conversion function (from dollar asset to RLP shares) with support for rounding direction.
    function _rlpConvertToShares(
        uint256 assets,
        Math.Rounding rounding
    ) internal view returns (uint256) {
        (uint256 price, ) = IPrice(PRICE_CONTRACT).lastPrice();
        return assets.mulDiv(RLP_UNIT, price, rounding);
    }

    /// @dev Internal boringVault conversion function (from RLP shares to dollar asset) with support for rounding direction.
    function _rlpConvertToAssets(
        uint256 shares,
        Math.Rounding rounding
    ) internal view returns (uint256) {
        (uint256 price, ) = IPrice(PRICE_CONTRACT).lastPrice();
        return shares.mulDiv(price, RLP_UNIT, rounding);
    }

    /// @dev Internal conversion function (from USDC to dollar) with support for rounding direction.
    function _usdcToDollar(
        uint256 usdcAmount,
        Math.Rounding rounding
    ) internal view returns (uint256) {
        return usdcAmount.mulDiv(1e18, 1e6, rounding);
    }

    /// @dev Internal conversion function (from dollar to USDC) with support for rounding direction.
    function _dollarToUsdc(
        uint256 dollarAmount,
        Math.Rounding rounding
    ) internal view returns (uint256) {
        return dollarAmount.mulDiv(1e6, 1e18, rounding);
    }
}
