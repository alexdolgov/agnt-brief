// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {GovernanceAccessor} from "../GovernanceAccessor.sol";

interface TOSRegistryLike {
    function updateTOS(string memory ipfs) external;
}

contract TOSRegistryGovernanceAccessor is GovernanceAccessor {
    constructor(address spellExecutor) GovernanceAccessor(spellExecutor) {}

    function updateTOS(address where, string memory ipfs) external spell {
        TOSRegistryLike(where).updateTOS(ipfs);
        emit AccessorExecuted(msg.sender, where);
    }
}
