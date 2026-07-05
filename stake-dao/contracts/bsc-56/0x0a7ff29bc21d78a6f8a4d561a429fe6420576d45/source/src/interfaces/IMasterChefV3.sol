// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {INonfungiblePositionManagerStruct} from "./INonfungiblePositionManagerStruct.sol";

interface IMasterChefV3 {
    function latestPeriodStartTime() external view returns (uint256);

    function latestPeriodEndTime() external view returns (uint256);

    function balanceOf(address user) external view returns (uint256);

    function userPositionInfos(uint256 _tokenId)
        external
        view
        returns (uint128, uint128, int24, int24, uint256, uint256, address, uint256, uint256);

    function poolInfo(uint256 _pid)
        external
        view
        returns (
            uint256 allocPoint,
            address v3Pool,
            address token0,
            address token1,
            uint24 fee,
            uint256 totalLiqudiity,
            uint256 totalBoostLiquidity
        );

    function poolLength() external view returns (uint256);

    function v3PoolAddressPid(address _pool) external view returns (uint256);

    function updateBoostMultiplier(uint256 _tokenId, uint256 _newMultiplier) external;

    function updateLiquidity(uint256 _tokenId) external;

    function nonfungiblePositionManager() external view returns (address);

    function FARM_BOOSTER() external view returns (address);

    function updateFarmBoostContract(address _newFarmBoostContract) external;

    function decreaseLiquidity(INonfungiblePositionManagerStruct.DecreaseLiquidityParams calldata params)
        external
        returns (uint256 amount0, uint256 amount1);

    function increaseLiquidity(INonfungiblePositionManagerStruct.IncreaseLiquidityParams calldata params)
        external
        returns (uint128 liquidity, uint256 amount0, uint256 amount1);

    function upkeep(uint256 amount, uint256 duration, bool withUpdate) external;

    function withdraw(uint256 _tokenId, address _to) external returns (uint256 reward);

    function updatePools(uint256[] calldata pids) external;
}
