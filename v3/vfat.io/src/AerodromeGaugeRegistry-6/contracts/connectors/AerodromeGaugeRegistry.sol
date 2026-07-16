// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "../ConnectorRegistry.sol";

import "../interfaces/external/aerodrome/IVoter.sol";

contract AerodromeGaugeRegistry is ICustomConnectorRegistry {
    IVoter public immutable voter;
    address public immutable connector;

    constructor(IVoter voter_, address connector_) {
        voter = voter_;
        connector = connector_;
    }

    function connectorOf(address target)
        external
        view
        override
        returns (address)
    {
        if (voter.isGauge(target)) {
            return connector;
        }

        return address(0);
    }
}
