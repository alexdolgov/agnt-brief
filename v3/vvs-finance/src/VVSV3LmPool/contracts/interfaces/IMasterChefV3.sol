// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.0 <0.8.15;

interface IMasterChefV3 {
    function nonfungiblePositionManager() external view returns (address);

    function harvestVVSFromCraftsman(address v3PoolAddress) external returns (uint256);

    function onCrossTick(address v3PoolAddress, int24 tick, bool zeroForOne) external;
}
