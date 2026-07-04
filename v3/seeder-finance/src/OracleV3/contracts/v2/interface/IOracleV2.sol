// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "../../v1/interface/IOracle.sol";

interface IOracleV2 is IOracle {
    function requestBurnableTree(uint256 requestId, address treeOwner) payable external;
}
