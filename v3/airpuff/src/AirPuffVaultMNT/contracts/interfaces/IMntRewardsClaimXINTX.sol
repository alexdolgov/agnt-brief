// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

interface IMntRewardsClaimXINTX {
    function claimableAmount(address _user) external view returns (uint256);

    function claimableNow(
        address _user
    ) external view returns (uint amountToReceive);

    function xIntx() external view returns (address);

    function claim() external;
}
