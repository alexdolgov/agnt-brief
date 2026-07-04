//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import "./TransmolgrifierState.sol";

abstract contract TransmolgrifierContracts is Initializable, TransmolgrifierState {

    function __TransmolgrifierContracts_init() internal initializer {
        TransmolgrifierState.__TransmolgrifierState_init();
    }

    function setContracts(
        address _smolsAddress,
        address _smolsStateAddress,
        address _schoolAddress,
        address _smolTreasuresAddress,
        address _smolverseTransmolgrifierClaimAddress
        )
    external requiresEitherRole(ADMIN_ROLE, OWNER_ROLE)
    {
        smolsAddress = _smolsAddress;
        smolsStateAddress = _smolsStateAddress;
        schoolAddress = _schoolAddress;
        smolTreasuresAddress = _smolTreasuresAddress;
        smolverseTransmolgrifierClaimAddress = _smolverseTransmolgrifierClaimAddress;
    }

    modifier contractsAreSet() {
        require(areContractsSet(), "Contracts aren't set");
        _;
    }

    function areContractsSet() public view returns(bool) {
        return address(smolsAddress) != address(0) &&
        address(smolsStateAddress) != address(0) &&
        address(schoolAddress) != address(0) &&
        address(smolTreasuresAddress) != address(0) &&
        address(smolverseTransmolgrifierClaimAddress) != address(0);
    }
}