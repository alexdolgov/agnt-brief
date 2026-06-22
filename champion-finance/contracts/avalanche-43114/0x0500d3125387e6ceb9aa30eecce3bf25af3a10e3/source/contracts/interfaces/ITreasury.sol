// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

interface ITreasury {
    function epoch() external view returns (uint256);

    function nextEpochPoint() external view returns (uint256);

    function getMainTokenPrice() external view returns (uint256);
    
    function mainTokenPriceOne() external view returns (uint256);

    function mainToken() external view returns (address);

    function enabledEmergencyWithdrawTax() external view returns (bool);

    function polWallet() external view returns (address);

    function isDevWallet(address _user) external view returns (bool);

    function isDaoWallet(address _user) external view returns (bool);

    function additionalRewardPoolEndTime() external view returns (uint256);

    function additionalRewardPoolStartTime() external view returns (uint256);

    function aoeaTokenPerSecondForUser() external view returns (uint256);

    function additionalRewardTotalAllocPoint() external view returns (uint256);
}
