// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

interface IFeeDistributor {
    event SourceAdded(address indexed source, uint256 startWeek);

    event UpdateFee(address indexed source, uint256 indexed wTime, uint256 amount);

    event ClaimReward(address indexed source, address indexed user, uint256 wTime, uint256 amount);

    struct UserInfo {
        uint128 firstUnclaimedWeek;
        uint128 iter;
    }

    function claimReward() external returns (uint256[] memory amountRewardOut);

    function fund(
        address[] calldata sources,
        uint256[][] calldata wTimes,
        uint256[][] calldata amounts,
        uint256 totalAmountToFund
    ) external;

    function lastFundedWeek(address source) external view returns (uint256);
    function firstFundedWeek(address source) external view returns (uint256);
    function vePollen() external view returns (address);
    function token() external view returns (address);
    function rewardDistributor() external view returns (address);
}