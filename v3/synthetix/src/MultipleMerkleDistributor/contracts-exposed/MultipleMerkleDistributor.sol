// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../contracts/MultipleMerkleDistributor.sol";

contract $MultipleMerkleDistributor is MultipleMerkleDistributor {
    constructor(address _owner, address _token) MultipleMerkleDistributor(_owner, _token) {}
}
