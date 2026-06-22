// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

interface IThenianChef {
    
    // Functions
    function addKeeper(address[] calldata _keepers) external;
    function removeKeeper(address[] calldata _keepers) external;
    function setRewardPerSecond(uint256 _rewardPerSecond) external;
    function setDistributionRate(uint256 amount) external;
    function pendingReward(address _user) external view returns (uint256);
    function stakedTokenIds(address _user) external view returns (uint256[] memory);
    function deposit(uint256[] calldata tokenIds) external;
    function withdraw(uint256[] calldata tokenIds) external;
    function harvest() external;
    function onERC721Received(address, address, uint256, bytes calldata) external pure returns (bytes4);

    // Public Variables
    function TOKEN() external view returns (address);
    function NFT() external view returns (address);
    function poolInfo() external view returns (uint256, uint256);
    function tokenOwner(uint256 tokenId) external view returns (address);
    function userInfo(address user) external view returns (uint256, int256, uint256[] memory);
    function isKeeper(address keeper) external view returns (bool);
    function rewardPerSecond() external view returns (uint256);
    function ACC_TOKEN_PRECISION() external view returns (uint256);
    function distributePeriod() external view returns (uint256);
    function lastDistributedTime() external view returns (uint256);

}
