// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {BaseMintRedeem} from "src/MintRedeem/BaseMintRedeem.sol";

/// @title BaseMinter
/// @notice Base contract for ELUSD minting operations with minter-specific functionality
/// @dev Provides core functionality for managing minting limits and price protections
abstract contract BaseMinter is BaseMintRedeem {
    /*//////////////////////////////////////////////////////////////
                            ERRORS
    //////////////////////////////////////////////////////////////*/

    error MaxMintPerBlockExceeded();

    /*//////////////////////////////////////////////////////////////
                            EVENTS
    //////////////////////////////////////////////////////////////*/

    event MaxMintPerBlockSet(uint256 maxMintPerBlock);

    /*//////////////////////////////////////////////////////////////
                            STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @notice The minimum price of the asset to be accepted for minting
    /// @dev This is a price protection for the user, we are assuming USDC USDT and USDe deposits
    uint256 public minPrice;

    /// @notice ELUSD minted per block
    mapping(uint256 blockNumber => uint256 amount) public mintedPerBlock;

    /// @notice Max minted ELUSD allowed per block
    uint256 public maxMintPerBlock;

    /*//////////////////////////////////////////////////////////////
                            ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Set the max minted ELUSD allowed per block
    /// @param _maxMintPerBlock The max minted ELUSD allowed per block
    function setMaxMintPerBlock(uint256 _maxMintPerBlock) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setMaxMintPerBlock(_maxMintPerBlock);
    }

    /// @notice Set the minimum price of the asset to be accepted for minting
    /// @param _minPrice The minimum price of the asset to be accepted for minting
    function setMinPrice(uint256 _minPrice) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setMinPrice(_minPrice);
    }

    /*//////////////////////////////////////////////////////////////
                            INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Set the minimum price of the asset to be accepted for minting
    /// @param _minPrice The minimum price of the asset to be accepted for minting
    function _setMinPrice(uint256 _minPrice) internal {
        minPrice = _minPrice;
    }

    /// @notice Ensure that the already minted ELUSD in the actual block plus the amount to be minted is not higher than the maxMintPerBlock var
    /// @param mintAmount The ELUSD amount to be minted
    function _belowMaxMintPerBlock(uint256 mintAmount) internal view {
        if (mintedPerBlock[block.number] + mintAmount > maxMintPerBlock) {
            revert MaxMintPerBlockExceeded();
        }
    }

    /// @notice Set the max minted ELUSD allowed per block
    /// @param _maxMintPerBlock The max minted ELUSD allowed per block
    function _setMaxMintPerBlock(uint256 _maxMintPerBlock) internal {
        maxMintPerBlock = _maxMintPerBlock;
        emit MaxMintPerBlockSet(_maxMintPerBlock);
    }
}
