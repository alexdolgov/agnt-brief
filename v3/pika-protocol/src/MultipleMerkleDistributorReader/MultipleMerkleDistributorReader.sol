// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


interface IMultipleMerkleDistributor {
    function isClaimed(uint256 index, uint256 epoch) external view returns (bool);
}

// forked from https://github.com/gmx-io/gmx-contracts/blob/master/contracts/referrals/ReferralReader.sol
contract MultipleMerkleDistributorReader {

    address public constant distributor = 0xd733c50EE90DB115de56A6FE7b07D3B37FC6543c;

    function areClaimed(uint256[] memory indexes, uint256[] memory epochs) public view returns (bool[] memory) {
        bool[] memory areClaimed = new bool[](indexes.length);
        for (uint256 i = 0; i < indexes.length; i++) {
            areClaimed[i] = IMultipleMerkleDistributor(distributor).isClaimed(indexes[i], epochs[i]);
        }
    }
}