// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { ICustomConnectorRegistry } from "contracts/ConnectorRegistry.sol";
import { IGaugeRegistryVoter } from "contracts/connectors/GaugeRegistry.sol";
import { ShadowGaugeConnector } from
    "contracts/connectors/shadow/ShadowGaugeConnector.sol";
import { ShadowV3Connector } from
    "contracts/connectors/shadow/ShadowV3Connector.sol";

interface IShadowPairFactory {
    function isPair(
        address pair
    ) external view returns (bool);
}

contract ShadowGaugeRegistry is ICustomConnectorRegistry {
    IGaugeRegistryVoter public immutable voter;
    ShadowGaugeConnector public immutable shadowGaugeConnector;
    ShadowV3Connector public immutable shadowV3Connector;
    IShadowPairFactory public immutable shadowPairFactory;

    constructor(
        IGaugeRegistryVoter voter_,
        ShadowGaugeConnector shadowGaugeConnector_,
        ShadowV3Connector shadowV3Connector_,
        IShadowPairFactory shadowPairFactory_
    ) {
        voter = voter_;
        shadowGaugeConnector = shadowGaugeConnector_;
        shadowV3Connector = shadowV3Connector_;
        shadowPairFactory = shadowPairFactory_;
    }

    function connectorOf(
        address target
    ) external view override returns (address) {
        if (voter.isGauge(target)) {
            if (shadowPairFactory.isPair(voter.poolForGauge(target))) {
                return address(shadowGaugeConnector);
            }
            if (voter.isClGauge(target)) {
                return address(shadowV3Connector);
            }
        }

        return address(0);
    }
}
