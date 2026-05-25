// SPDX-License-Identifier: GPLv3

pragma solidity ^0.8;

interface IERC20WithVotes {
    function balanceOf(address) external view returns (uint256);
    function delegates(address) external view returns (address);
    function getVotes(address) external view returns (uint256);
}

contract DelegatedWithBalanceWeight {
    function getVotesWithBalance(address account) external view returns (uint256){
        IERC20WithVotes token = IERC20WithVotes(0xCdF7028ceAB81fA0C6971208e83fa7872994beE5);
        uint256 votes = token.getVotes(account);
        address delegate = token.delegates(account);
        if (delegate == address(0)){
            votes += token.balanceOf(account);
        }
        return votes;
    }
}