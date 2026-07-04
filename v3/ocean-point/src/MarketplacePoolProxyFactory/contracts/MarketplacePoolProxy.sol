/*
 * SPDX-License-Identifier: UNLICENSED
 * Copyright © 2022 Blocksquare d.o.o.
 */

pragma solidity 0.8.20;

import "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

/// @notice A collection of helper functions
interface MarketplacePoolProxyHelpers {
    function getImplementation() external view returns (address);
}

/// @title Marketplace Pool Proxy
/// @author David Šenica
contract MarketplacePoolProxy is ERC1967Proxy {
    address private _factory;

    constructor(
        address factory,
        address logic,
        bytes memory data
    ) ERC1967Proxy(logic, data) {
        _factory = factory;
    }

    /// @dev get implementation address from factory
    function _implementation()
        internal
        view
        virtual
        override
        returns (address impl)
    {
        return MarketplacePoolProxyHelpers(_factory).getImplementation();
    }
}
