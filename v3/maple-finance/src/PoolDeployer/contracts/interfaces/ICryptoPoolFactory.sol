// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

interface ICryptoPoolFactory {
    function deploy_pool(string calldata _name, string calldata _symbol, address[2] calldata _coins, uint256 _A, uint256 _gamma, uint256 _mid_fee, uint256 _out_fee, uint256 _allowed_extra_profit, uint256 _fee_gamma, uint256 _adjustment_step, uint256 _admin_fee, uint256 _ma_half_time, uint256 _initial_price) external returns (address);
}