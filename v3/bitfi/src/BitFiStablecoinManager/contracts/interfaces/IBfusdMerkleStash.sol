// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

interface IBfusdMerkleStash {
    function addStash(bytes32 _merkleRoot) external;
}
