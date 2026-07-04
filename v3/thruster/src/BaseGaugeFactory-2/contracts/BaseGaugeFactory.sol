// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { Clones } from "@openzeppelin/contracts/proxy/Clones.sol";

abstract contract BaseGaugeFactory {
    address private _gaugeImplementation;

    mapping(address => bool) private _isGaugeFromFactory;

    event GaugeCreated(address indexed gauge);

    constructor(address gaugeImplementation) {
        _gaugeImplementation = gaugeImplementation;
    }

    /**
     * @notice Returns the address of the implementation used for gauge deployments.
     */
    function getGaugeImplementation() public view returns (address) {
        return _gaugeImplementation;
    }

    /**
     * @notice Returns true if `gauge` was created by this factory.
     */
    function isGaugeFromFactory(address gauge) external view returns (bool) {
        return _isGaugeFromFactory[gauge];
    }

    /**
     * @dev Deploys a new gauge as a proxy of the implementation in storage.
     * The deployed gauge must be initialized by the caller method.
     * @return The address of the deployed gauge
     */
    function _create() internal returns (address) {
        address gauge = Clones.clone(_gaugeImplementation);

        _isGaugeFromFactory[gauge] = true;
        emit GaugeCreated(gauge);

        return gauge;
    }
}
