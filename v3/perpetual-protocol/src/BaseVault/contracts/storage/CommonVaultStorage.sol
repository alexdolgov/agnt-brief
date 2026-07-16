// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.7.6;

/// @notice For future upgrades, do not change CommonVaultStorageV1. Create a new
/// contract which implements CommonVaultStorageV1 and following the naming convention
/// CommonVaultStorageVX.
abstract contract CommonVaultStorageV1 {
    address internal _vaultToken;
    address internal _quoteToken;
    address internal _baseToken;
    address internal _vaultConfig;
    address internal _perpPositionManager;

    // NOTE: UniswapV3 related storage are deprecated (moved to Router)
    address internal _uniswapV3Router;
    address internal _uniswapV3Factory;
    uint24 internal _uniswapV3DefaultFeeTier;

    uint8 internal _quoteTokenDecimals;
    uint8 internal _baseTokenDecimals;
}

abstract contract CommonVaultStorageV2 is CommonVaultStorageV1 {
    address internal _router;
    address internal _quoteUsdPriceFeed;
    address internal _baseUsdPriceFeed;
}

abstract contract CommonVaultStorageV3 is CommonVaultStorageV2 {
    address internal _showerRoom;
}
