//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import {SmolverseTransmolgrifierClaimState} from "./SmolverseTransmolgrifierClaimState.sol";

abstract contract SmolverseTransmolgrifierClaimContracts is Initializable, SmolverseTransmolgrifierClaimState {
    function __SmolverseTransmolgrifierClaimContracts_init() internal initializer {
        SmolverseTransmolgrifierClaimState.__SmolverseTransmolgrifierClaimState_init();
    }

    function setContracts(
        address _smolsAddress,
        address _smolverseLootAddress,
        address _treasuresAddress
    ) external requiresEitherRole(ADMIN_ROLE, OWNER_ROLE) {
        smolsAddress = _smolsAddress;
        smolverseLootAddress = _smolverseLootAddress;
        treasuresAddress = _treasuresAddress;
    }

    modifier contractsAreSet() {
        require(areContractsSet(), "Contracts aren't set");
        _;
    }

    function areContractsSet() public view returns (bool) {
        return
            smolsAddress != address(0) &&
            smolverseLootAddress != address(0) &&
            treasuresAddress != address(0);

    }
}
