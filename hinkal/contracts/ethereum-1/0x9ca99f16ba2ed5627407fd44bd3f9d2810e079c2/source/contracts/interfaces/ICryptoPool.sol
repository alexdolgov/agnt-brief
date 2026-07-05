// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

interface ICryptoPool {
    function token() external view returns (address);
    function price_scale() external view returns (uint256);
    function add_liquidity(uint256[2] calldata _amounts, uint256 _min_mint_amount, bool _use_eth, address _receiver) external returns (uint256);
    function remove_liquidity_one_coin(uint256 _amount, uint256 _i, uint256 _minAmount) external returns (uint256);
}