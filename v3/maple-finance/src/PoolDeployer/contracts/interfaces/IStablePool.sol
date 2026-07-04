// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IStablePool is IERC20 {
    function add_liquidity(uint256[2] calldata _amounts, uint256 _min_mint_amount, address _receiver) external returns (uint256);
}