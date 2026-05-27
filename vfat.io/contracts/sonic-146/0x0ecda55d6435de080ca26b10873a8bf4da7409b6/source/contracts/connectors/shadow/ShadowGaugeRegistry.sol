// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { ICustomConnectorRegistry } from "contracts/ConnectorRegistry.sol";
import { IGaugeRegistryVoter } from "contracts/connectors/GaugeRegistry.sol";
import { ShadowGaugeConnector } from
    "contracts/connectors/shadow/ShadowGaugeConnector.sol";
import { ShadowV3GaugeConnector } from
    "contracts/connectors/shadow/ShadowV3GaugeConnector.sol";

contract ShadowGaugeRegistry is ICustomConnectorRegistry {
    IGaugeRegistryVoter public immutable voter;
    ShadowGaugeConnector public immutable shadowGaugeConnector;
    ShadowV3GaugeConnector public immutable shadowV3GaugeConnector;

    constructor(
        IGaugeRegistryVoter voter_,
        ShadowGaugeConnector shadowGaugeConnector_,
        ShadowV3GaugeConnector shadowV3GaugeConnector_
    ) {
        voter = voter_;
        shadowGaugeConnector = shadowGaugeConnector_;
        shadowV3GaugeConnector = shadowV3GaugeConnector_;
    }

    function connectorOf(
        address target
    ) external view override returns (address) {
        if (voter.isClGauge(target)) {
            return address(shadowV3GaugeConnector);
        }
        if (voter.isGauge(target)) {
            return address(shadowGaugeConnector);
        }

        return address(0);
    }
}
