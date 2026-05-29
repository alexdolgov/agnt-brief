// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import {VeFunderGauge} from "./../VeFunderGauge.sol";
import {IVoter} from "./../interfaces/IVoter.sol";

/**
 * @title VeFunderGaugeFactory
 * @notice Upgradeable factory for creating VeFunderGauge instances (non-proxy, direct deployment)
 */
contract VeFunderGaugeFactory is Initializable, UUPSUpgradeable {
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

    function createGauge(address _receiver, uint256 _maxEmission) external returns (address) {
        VeFunderGauge gauge = new VeFunderGauge(msg.sender, _receiver, _maxEmission);
        lastGauge = address(gauge);
        return lastGauge;
    }
}
