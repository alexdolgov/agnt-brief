// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface IPumpStaking {
    function stake(uint256 amount) external;

    function claimAll() external;

    function unstakeRequest(uint256 amount) external;

    function MAX_DATE_SLOT() external view returns (uint256);

    function pendingUnstakeAmount(address user, uint8 slot) external view returns (uint256);
}
