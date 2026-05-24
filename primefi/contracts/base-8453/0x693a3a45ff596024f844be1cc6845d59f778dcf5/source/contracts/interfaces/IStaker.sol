// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.29;

interface IStaker {
    function airdrop(uint256 rewardAmount) external payable;

    function burnAndRedeem(uint256 tokenId) external returns (uint256 nftStaked);

    function merge(uint256 tokenId1, uint256 tokenId2) external returns (uint256 newTokenId);

    function stake(uint256 tokenId, uint256 amount) external;

    function lockNFT(uint256 tokenId) external;

    function unlockNFT(uint256 tokenId) external;

    function withdraw(uint256 tokenId, uint256 amount) external returns (uint256 amountToWithdraw);

    function claim(uint256 tokenId) external returns (uint256 claimedRewards);

    function checkLevel(uint256 staked) external view returns (uint256);

    function calcWeight(uint256 nftStaked, uint256 tokenMultipliers) external pure returns (uint256);
}
