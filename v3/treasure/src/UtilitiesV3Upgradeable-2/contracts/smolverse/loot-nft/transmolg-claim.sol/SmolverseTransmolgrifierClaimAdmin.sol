//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {SmolverseTransmolgrifierClaimContracts} from "./SmolverseTransmolgrifierClaimContracts.sol";

contract SmolverseTransmolgrifierClaimAdmin is Initializable, SmolverseTransmolgrifierClaimContracts {
    
    function __SmolverseTransmolgrifierClaimAdmin_init() internal initializer {
        SmolverseTransmolgrifierClaimContracts.__SmolverseTransmolgrifierClaimContracts_init();
    }

    function setTierIdToTierMultiplier(uint256 _tierId, uint256 _multiplier) public requiresEitherRole(OWNER_ROLE, ADMIN_ROLE){
        tierIdToTierMultiplier[_tierId] = _multiplier;
    }

    function setSmolTierMerkleRoot(bytes32 _smolTierMerkleRoot) public requiresEitherRole(OWNER_ROLE, ADMIN_ROLE){
        smolTierMerkleRoot = _smolTierMerkleRoot;
    }

    function setTotalNumberOfSmolsTransmolged(uint256 _totalNumberOfSmolsTransmolged) public requiresEitherRole(OWNER_ROLE, ADMIN_ROLE) {
        totalNumberOfSmolsTransmolged = _totalNumberOfSmolsTransmolged;
    }

    function incrementTotalNumberOfSmolsTransmolged() public requiresEitherRole(OWNER_ROLE, ADMIN_ROLE) {
        totalNumberOfSmolsTransmolged++;
    }
}