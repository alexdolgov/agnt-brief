// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Flying Tulip Inc. All rights reserved.
pragma solidity ^0.8.30;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IOracleUSD} from "contracts/interfaces/IOracleUSD.sol";
import {OracleRouterChainlink} from "./OracleRouterChainlink.sol";

/// @notice Chainlink oracle router with keeper-controlled dev/test price overrides.
contract OracleWrapper is Ownable, IOracleUSD {
    error NotKeeper();
    error ZeroAddress();

    struct PriceOverride {
        uint256 pxWad;
        // Required to distinguish an explicit zero-price override from an unset override.
        bool isSet;
    }

    OracleRouterChainlink public immutable oracleRouter;
    mapping(address => bool) public keepers;
    mapping(address => PriceOverride) public priceOverride;

    event KeeperSet(address indexed keeper, bool allowed);
    event PriceOverrideSet(address indexed asset, uint256 pxWad);
    event PriceOverrideCleared(address indexed asset);

    modifier onlyKeeper() {
        if (!keepers[msg.sender]) revert NotKeeper();
        _;
    }

    constructor(address initialOwner, OracleRouterChainlink _oracleRouter) Ownable(initialOwner) {
        if (address(_oracleRouter) == address(0)) revert ZeroAddress();
        oracleRouter = _oracleRouter;
        _setKeeper(initialOwner, true);
    }

    function setKeeper(address keeper, bool allowed) external onlyOwner {
        _setKeeper(keeper, allowed);
    }

    function setPrice(address asset, uint256 pxWad) external onlyKeeper {
        priceOverride[asset] = PriceOverride({pxWad: pxWad, isSet: true});
        emit PriceOverrideSet(asset, pxWad);
    }

    function clearPrice(address asset) external onlyKeeper {
        delete priceOverride[asset];
        emit PriceOverrideCleared(asset);
    }

    function priceUSD(address asset) external view returns (uint256 pxWad) {
        PriceOverride storage overridePx = priceOverride[asset];
        if (overridePx.isSet) {
            return overridePx.pxWad;
        }
        return oracleRouter.priceUSD(asset);
    }

    function _setKeeper(address keeper, bool allowed) internal {
        keepers[keeper] = allowed;
        emit KeeperSet(keeper, allowed);
    }
}
