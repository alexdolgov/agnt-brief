// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import { IERC4626 } from "@openzeppelin/contracts/interfaces/IERC4626.sol";

interface IStakingVault is IERC4626 {
    function initialize(address) external;
    function pause() external;
    function resume() external;
    function paused() external view returns (bool);
    function addAssetToEmissionList(address asset_) external;
    function removeAssetFromEmissionList(address asset_) external;
    function setRewardParams(address token, uint256 rewardRate, uint32 claimStartTime) external;
    function claimReward() external;
    function claimableReward(address token, address account) external view returns (uint256);
    function isClaimStart(address token) external view returns (bool);
    function emissionList(uint256 index) external view returns (address);
    function emissionListLength() external view returns (uint256);
}
