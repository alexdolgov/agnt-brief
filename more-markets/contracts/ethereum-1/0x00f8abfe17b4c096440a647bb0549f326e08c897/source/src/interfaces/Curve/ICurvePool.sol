// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/// @title ICurvePool
interface ICurvePool {
    function coins(uint256 i) external view returns (address);

    function get_virtual_price() external view returns (uint256);

    function remove_liquidity(
        uint256 amount,
        uint256[2] memory amounts
    ) external;

    function remove_liquidity(
        uint256 amount,
        uint256[3] memory amounts
    ) external;

    function remove_liquidity(
        uint256 amount,
        uint256[4] memory amounts
    ) external;

    function remove_liquidity(
        uint256 amount,
        uint256[5] memory amounts
    ) external;

    function balances(uint256 i) external view returns (uint256);

    function calc_withdraw_one_coin(uint256 amount, uint256 i) external view returns (uint256);
}