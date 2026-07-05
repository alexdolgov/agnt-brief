// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import {Spectra4626Wrapper, ERC4626Upgradeable} from "../../utils/Spectra4626Wrapper.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20Metadata, IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IVault} from "./interfaces/IVault.sol";

/// @title SpectraWrappedBedrockUniBTC - Spectra ERC4626 wrapper for Bedrock uniBTC Vault
/// @notice This contract wraps the Bedrock uniBTC Vault with the ERC4626 interface
/// @notice The contract is instantiated with the uniBTC Vault address,
//          the Bedrock Staking contract and
contract SpectraWrappedBedrockUniBTC is Spectra4626Wrapper {
    using Math for uint256;
    using SafeERC20 for IERC20;

    address public immutable bedrockVault;

    error WithdrawNotImplemented();
    error RedeemNotImplemented();

    constructor(address _bedrockVault) {
        bedrockVault = _bedrockVault;
        _disableInitializers();
    }

    function initialize(address _wbtc, address _uniBTC) external initializer {
        __Spectra4626Wrapper_init(_wbtc, _uniBTC);
        IERC20(_wbtc).forceApprove(bedrockVault, type(uint256).max);
    }

    /*//////////////////////////////////////////////////////////////
                        ERC4626 GETTERS
    //////////////////////////////////////////////////////////////*/

    /// @dev See {IERC4626-totalAssets}.
    function totalAssets() public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return _convertToAssets(totalSupply(), Math.Rounding.Floor);
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

    /**
     * @dev Deposit/mint common workflow.
     */
    function _deposit(
        address caller,
        address receiver,
        uint256 assets,
        uint256 shares
    ) internal override(ERC4626Upgradeable) {
        super._deposit(caller, receiver, assets, shares);
        _bedrockVaultMint(assets);
    }

    /// @dev Internal conversion function (from assets to shares) with support for rounding direction.
    /// @param assets The amount of assets to convert.
    /// @param rounding The rounding direction to use.
    /// @return The amount of shares.
    function _convertToShares(
        uint256 assets,
        Math.Rounding rounding
    ) internal view override(ERC4626Upgradeable) returns (uint256) {
        if (assets == 0) {
            return 0;
        }
        return _previewWrap(assets, rounding);
    }

    /// @dev Internal conversion function (from shares to assets) with support for rounding direction.
    /// @param shares The amount of shares to convert.
    /// @param rounding The rounding direction to use.
    /// @return The amount of assets.
    function _convertToAssets(
        uint256 shares,
        Math.Rounding rounding
    ) internal view override(ERC4626Upgradeable) returns (uint256) {
        if (shares == 0) {
            return 0;
        }
        return _previewUnwrap(shares, rounding);
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNALS - BEDROCK PROTOCOL
    //////////////////////////////////////////////////////////////*/

    /// @dev Internal function to mint uniBTC with WBTC.
    function _bedrockVaultMint(uint256 amount) internal {
        if (amount != 0) {
            IVault(bedrockVault).mint(amount);
        }
    }
}
