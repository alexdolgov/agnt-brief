/**
 *Submitted for verification at Optimistic.Etherscan.io on 2023-09-24
*/

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


interface IVester {
    function claimableAll(address _account) external view returns(uint256 claimableAmount);
}

contract VesterReader {
    function getClaimableAll(address[] memory users, address vester) external view returns(uint256[] memory) {
        uint256 length = users.length;
        uint256[] memory amounts = new uint256[](length); 
        for (uint256 i = 0; i < length; i++) {
            amounts[i] = IVester(vester).claimableAll(users[i]);
        }
        return amounts;
    }

    function getTotalClaimableAll(address[] memory users, address vester) external view returns(uint256) {
        uint256 length = users.length;
        uint256 total = 0;
        uint256[] memory amounts = new uint256[](length); 
        for (uint256 i = 0; i < length; i++) {
            uint256 amount = IVester(vester).claimableAll(users[i]);
            amounts[i] = amount;
            total += amount;
        }
        return total;
    }
}