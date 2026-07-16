// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "../ConnectorRegistry.sol";
import "./AerodromeGaugeConnector.sol";
import "./SlipstreamGaugeConnector.sol";
import { IGaugeRegistryVoter } from "./GaugeRegistry.sol";

interface IPairFactory {
    function isPool(address pair) external view returns (bool);
}

contract AerodromeGaugeRegistry is ICustomConnectorRegistry {
    IGaugeRegistryVoter public immutable voter;
    IPairFactory public immutable v2PairFactory;
    IPairFactory public immutable slipstreamPairFactory;
    AerodromeGaugeConnector public immutable v2GaugeConnector;
    SlipstreamGaugeConnector public immutable slipstreamGaugeConnector;

    constructor(
        IGaugeRegistryVoter voter_,
        IPairFactory v2PairFactory_,
        IPairFactory slipstreamPairFactory_,
        AerodromeGaugeConnector v2GaugeConnector_,
        SlipstreamGaugeConnector slipstreamGaugeConnector_
    ) {
        voter = voter_;
        v2PairFactory = v2PairFactory_;
        slipstreamPairFactory = slipstreamPairFactory_;
        v2GaugeConnector = v2GaugeConnector_;
        slipstreamGaugeConnector = slipstreamGaugeConnector_;
    }

    function connectorOf(address target)
        external
        view
        override
        returns (address)
    {
        if (voter.isGauge(target)) {
            address pair = voter.poolForGauge(target);
            if (v2PairFactory.isPool(pair)) {
                return address(v2GaugeConnector);
            }
            if (slipstreamPairFactory.isPool(pair)) {
                return address(slipstreamGaugeConnector);
            }
        }

        return address(0);
    }
}
