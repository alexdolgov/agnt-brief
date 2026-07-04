// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

interface IStakedINTX {
    function unstake(uint _tokenId) external returns (uint _intxAmountOut);

    function claim(uint[] calldata _tokenIds) external;

    function lastTokenId() external view returns (uint256);

    function rewardToken() external view returns (address);
    function INTX() external view returns (address);
}
