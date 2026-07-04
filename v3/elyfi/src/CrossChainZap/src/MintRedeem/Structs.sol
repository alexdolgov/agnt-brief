// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {IPriceOracle} from "src/interfaces/IPriceOracle.sol";

enum OrderType {
    MINT,
    REDEEM
}

enum MintRedeemMode {
    /// @dev Atomic mint against collateral
    /// @dev Redeem directly from the liquid buffer
    INSTANT,
    /// @dev Queue the mint request and serve it later
    /// @dev Queue the redemption request and serve it later
    QUEUED
}

enum RequestStatus {
    EMPTY,
    PENDING,
    COMPLETED,
    CANCELLED
}

struct Order {
    OrderType orderType;
    uint256 expiry;
    /// @dev The address that pays for the transaction
    address benefactor;
    /// @dev The address that will receive the assets.
    address beneficiary;
    address collateralAsset;
    /// @dev When minting, this is the amount of collateral to deposit
    /// @dev When redeeming, this is the minimum amount of collateral to receive
    uint256 collateralAmount;
    /// @dev When minting, this is the minimum amount of ELUSD to receive
    /// @dev When redeeming, this is the amount of ELUSD to burn
    uint256 elusdAmount;
    /// @dev Additional data for the order, in case of future use for minters / redeemers
    bytes additionalData;
}

struct Asset {
    bool isSupported;
    address asset;
    uint8 decimals;
    /// @dev Oracle rely on ERC7726 that comes with integrated checks https://github.com/euler-xyz/euler-price-oracle/
    IPriceOracle oracle;
}
