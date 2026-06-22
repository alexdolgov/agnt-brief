// SPDX-License-Identifier: BUSL-1.1
// slither-disable-start dead-code,unimplemented-functions
pragma solidity 0.8.21;

import {AbstractAssetOracle} from "./AbstractAssetOracle.sol";
import {Math} from "./Math.sol";
import {IAeraV2Oracle} from "./interfaces/IAeraV2Oracle.sol";

/// @title SingletonAssetOracle.
/// @notice This contract is a component for the Aera protocol which
///         acts as an oracle and ERC20 token at the same time. It is used to
///         represent the value of the position in the vault.
abstract contract SingletonAssetOracle is AbstractAssetOracle {
    using Math for uint256;

    /// @dev Numeraire price feed address which should be used to convert base token price to numeraire price.
    address public immutable numerairePriceFeed;
    /// @dev The scale for numeraire price feed.
    uint256 public immutable numeraireScale;
    /// @dev Invert price from numeraire price feed.
    bool public immutable invertPrice;

    /// ERRORS ///

    /// @notice Thrown when the numeraire price feed address is zero.
    error AeraPeriphery__NumerairePriceFeedIsZeroAddress();

    /// FUNCTIONS ///

    /// @notice Constructor for the SingletonAssetOracle contract.
    /// @param vault_ The address of the AeraVaultV2 contract.
    /// @param numerairePriceFeed_ The address of the numeraire price feed.
    /// @param invertPrice_ Whether to invert the price from numeraire price feed.
    constructor(
        address vault_,
        address numerairePriceFeed_,
        bool invertPrice_
    ) AbstractAssetOracle(vault_) {
        // Effects: set the invert price flag.
        invertPrice = invertPrice_;

        if (numerairePriceFeed_ == address(0)) {
            // Effects: set the numeraire price feed address and scale to zero.
            numerairePriceFeed = address(0);
            numeraireScale = 0;
        } else {
            // Effects: set the numeraire price feed address and scale.
            numerairePriceFeed = numerairePriceFeed_;
            numeraireScale =
                10 ** IAeraV2Oracle(numerairePriceFeed_).decimals();
        }
    }

    /// INTERNAL FUNCTIONS ///

    /// @dev Convert base token amount to numeraire amount.
    function _toNumeraireAmount(uint256 baseAmount)
        internal
        view
        virtual
        returns (uint256)
    {
        if (numerairePriceFeed == address(0)) return baseAmount;

        uint256 price = _getPrice(numerairePriceFeed);
        if (invertPrice) {
            return baseAmount.mulDiv(numeraireScale, price);
        } else {
            return baseAmount.mulDiv(price, numeraireScale);
        }
    }
}
// slither-disable-end dead-code,unimplemented-functions
