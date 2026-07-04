// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {
    TOSRegistryGovernanceAccessor
} from "../../../src/registries/TOSRegistryGovernanceAccessor.sol";

contract ChronicleGovernance_Accessor_TOSRegistry_1 is
    TOSRegistryGovernanceAccessor
{
    // TODO:                                      ^^^^^^^ Update counter.
    constructor(address spellExecutor)
        TOSRegistryGovernanceAccessor(spellExecutor)
    {}
}
