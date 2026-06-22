// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface VaultInterfaceV5 {
    function sendUsdcToTrader(address, uint) external;

    function receiveUsdcFromTrader(address, uint, uint) external;

    function currentBalanceUsdc() external view returns (uint);

    function distributeRewardUsdc(uint) external;

    function distributeReward(uint assets) external;

    function sendAssets(uint assets, address receiver) external;

    function receiveAssets(uint assets, address user) external;
}
