// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./proxy/RewarderProxy.sol";
import "./interfaces/IRewarder.sol";
import "./interfaces/IRewardRegistry.sol";

contract RewarderFactory {
    address private immutable REWARD_REGISTRY;
    address private immutable REWARDER_BEACON;

    bytes32 internal constant ROLE_BEACON_MANAGER = keccak256("ROLE_BEACON_MANAGER");


    modifier auth(bytes32 role) {
        require(IRewardRegistry(REWARD_REGISTRY).hasRole(role, msg.sender) || msg.sender == REWARD_REGISTRY, "REWARDER_FACTORY: UNAUTHOROZED");
        _;
    }

    /**
    * @notice Constructor
    * @param _rewarderRegistry - Rewarder Registry address
    * @param _rewarderBeacon - rewarder beacon address
    */
    constructor(address _rewarderRegistry, address _rewarderBeacon) {
        require(_rewarderRegistry != address(0), "LF: FM_ZERO_ADDRESS");
        require(_rewarderBeacon != address(0), "LF: BEACON_ZERO_ADDRESS");

        REWARD_REGISTRY = _rewarderRegistry;
        REWARDER_BEACON = _rewarderBeacon;
    }

    /**
    * @notice Create new rewarder proxy contract
    */
    function createRewarder() external auth(ROLE_BEACON_MANAGER) returns (address) {
        address rewarder = address(
            new RewarderProxy(
                REWARDER_BEACON, 
                abi.encodeWithSelector(
                    IRewarder.initialize.selector,
                    REWARD_REGISTRY
                )
            )
        );

        return rewarder;
    }
}