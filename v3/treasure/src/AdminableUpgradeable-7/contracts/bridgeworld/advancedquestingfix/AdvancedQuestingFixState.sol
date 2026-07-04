//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import "./IAdvancedQuestingFix.sol";
import "../advancedquesting/IAdvancedQuesting.sol";
import "../../shared/AdminableUpgradeable.sol";

abstract contract AdvancedQuestingFixState is Initializable, IAdvancedQuestingFix, AdminableUpgradeable {

    IAdvancedQuesting public advancedQuesting;

    bytes32 public merkleRoot;

    mapping(uint256 => bool) public legionIdToHasUncorruptedLegion;

    function __AdvancedQuestingFixState_init() internal initializer {
        AdminableUpgradeable.__Adminable_init();
    }
}