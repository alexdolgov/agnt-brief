// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import {Gauge} from "./../SigmaGauge.sol";
import {IVoter} from "./../interfaces/IVoter.sol";

/**
 * @title SigmaGaugeFactory
 * @notice Upgradeable factory for creating SigmaGauge instances (non-proxy, direct deployment)
 */
contract SigmaGaugeFactory is Initializable, UUPSUpgradeable {
    /// @notice Address of the last created gauge
    address public lastGauge;
    
    /// @notice AccessHub address for upgrade authorization
    address public accessHub;

    uint256[50] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _accessHub) external initializer {
        require(_accessHub != address(0), "ZERO_ADDRESS");
        __UUPSUpgradeable_init();
        accessHub = _accessHub;
    }

    function _authorizeUpgrade(address newImplementation) internal override {
        require(msg.sender == accessHub, IVoter.NOT_AUTHORIZED(msg.sender));
    }

    function createGauge(address _pool) external returns (address) {
        Gauge gauge = new Gauge(_pool, msg.sender);
        lastGauge = address(gauge);
        return lastGauge;
    }
}
