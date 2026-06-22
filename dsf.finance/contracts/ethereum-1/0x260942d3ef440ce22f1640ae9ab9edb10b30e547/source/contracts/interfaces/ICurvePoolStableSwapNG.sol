//SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;

interface ICurvePoolStableSwapNG {
    function add_liquidity(
        uint256[] memory _amounts,
        uint256 _min_mint_amount
    ) external returns (uint256);

    function calc_token_amount(
        uint256[] memory _amounts,
        bool _is_deposit
    ) external view returns (uint256);

    function calc_withdraw_one_coin(
        uint256 _burn_amount,
        int128 i
    ) external view returns (uint256);

    function remove_liquidity_one_coin(
        uint256 _burn_amount,
        int128 i,
        uint256 _min_received
    ) external returns (uint256);

    function get_virtual_price() external view returns (uint256);

    function get_dy(
        uint256 i,
        uint256 j,
        uint256 dx
    ) external view returns (uint256);

    function exchange(
        uint256 i,
        uint256 j,
        uint256 dx,
        uint256 min_dy
    ) external returns (uint256);
}