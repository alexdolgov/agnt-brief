// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.6;

import {IBasePoolFactory} from "@balancer-labs/v2-interfaces/contracts/pool-utils/IBasePoolFactory.sol";
import {VoterV4} from "src/VoterV4.sol";
import {IGauge} from "src/interfaces/IGauge.sol";

contract CadabraWrappersLens {

    VoterV4 public voter;
    IBasePoolFactory public factory;

    constructor(address _voter, address _factory) {
        voter = VoterV4(_voter);
        factory = IBasePoolFactory(_factory);
    }

    function wrappers() external view returns (address[] memory wrappers) {
        uint wrappersCount;

        uint voterPoolsLength = voter.poolsLength();
        for (uint i = 0; i < voterPoolsLength; i++) {
            address pool = voter.pools(i);

            if (factory.isPoolFromFactory(pool)) {
                address gauge = voter.gauges(pool);
                address[] memory yieldSources = IGauge(gauge).yieldSources();
                wrappersCount += yieldSources.length;
            }
        }


        wrappers = new address[](wrappersCount);
        uint index;

        for (uint i = 0; i < voterPoolsLength; i++) {
            address pool = voter.pools(i);

            if (factory.isPoolFromFactory(pool)) {
                address gauge = voter.gauges(pool);
                address[] memory yieldSources = IGauge(gauge).yieldSources();
                for (uint j = 0; j < yieldSources.length; j++) {
                    wrappers[index] = yieldSources[j];
                    index++;
                }
            }
        }
    }

}
