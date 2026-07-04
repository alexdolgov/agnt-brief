// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {BaseMintRedeem} from "src/MintRedeem/BaseMintRedeem.sol";

/// @title BaseRedeemer
/// @notice Base contract for ELUSD redemption operations with redeemer-specific functionality
/// @dev Provides core functionality for managing redemption limits and price protections
abstract contract BaseRedeemer is BaseMintRedeem {
    /*//////////////////////////////////////////////////////////////
                            ERRORS
    //////////////////////////////////////////////////////////////*/

    error MaxRedeemPerBlockExceeded();

    /*//////////////////////////////////////////////////////////////
                            EVENTS
    //////////////////////////////////////////////////////////////*/

    event MaxRedeemPerBlockSet(uint256 maxRedeemPerBlock);

    /*//////////////////////////////////////////////////////////////
                            STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @notice The maximum slippage of the asset to be accepted for redemption
    /// @dev This is a slippage protection for the user, we are assuming USDC USDT and USDe deposits
    uint256 public maxPrice;

    /// @notice ELUSD redeemed per block
    mapping(uint256 blockNumber => uint256 amount) public redeemedPerBlock;

    /// @notice Max redeemed ELUSD allowed per block
    uint256 public maxRedeemPerBlock;

    /*//////////////////////////////////////////////////////////////
                            ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Set the max redeemed ELUSD allowed per block
    /// @param _maxRedeemPerBlock The max redeemed ELUSD allowed per block
    function setMaxRedeemPerBlock(uint256 _maxRedeemPerBlock) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setMaxRedeemPerBlock(_maxRedeemPerBlock);
    }

    /// @notice Set the maximum price of the asset to be accepted for redemption
    /// @param _maxPrice The maximum price of the asset to be accepted for redemption
    function setMaxPrice(uint256 _maxPrice) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setMaxPrice(_maxPrice);
    }

    /*//////////////////////////////////////////////////////////////
                            INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Set the maximum price of the asset to be accepted for redemption
    /// @param _maxPrice The maximum price of the asset to be accepted for redemption
    function _setMaxPrice(uint256 _maxPrice) internal {
        maxPrice = _maxPrice;
    }

    /// @notice Ensure that the already redeemed ELUSD in the actual block plus the amount to be redeemed is not higher than the maxRedeemPerBlock var
    /// @param redeemAmount The ELUSD amount to be redeemed
    function _belowMaxRedeemPerBlock(uint256 redeemAmount) internal view {
        if (redeemedPerBlock[block.number] + redeemAmount > maxRedeemPerBlock) {
            revert MaxRedeemPerBlockExceeded();
        }
    }

    /// @notice Set the max redeemed ELUSD allowed per block
    /// @param _maxRedeemPerBlock The max redeemed ELUSD allowed per block
    function _setMaxRedeemPerBlock(uint256 _maxRedeemPerBlock) internal {
        maxRedeemPerBlock = _maxRedeemPerBlock;
        emit MaxRedeemPerBlockSet(_maxRedeemPerBlock);
    }
}
