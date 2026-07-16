// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.8.0;

interface ICurve {
  function exchange(int128 i, int128 j, uint256 dx, uint256 min_dy) payable external returns (uint256);
  function remove_liquidity_one_coin(uint256 _token_amount, int128 i, uint256 min_amount) external;
  function balances(uint256 index) external returns (uint256);
  function totalSupply() external returns (uint256);
}

interface ICurveLegacy {
  function exchange(int128 i, int128 j, uint256 dx, uint256 min_dy) payable external;
}

interface ICurve2Tokens {
  function add_liquidity(uint256[2] memory amounts, uint256 min_mint_amount) external;
}

interface ICurve3Tokens {
  function add_liquidity(uint256[3] memory amounts, uint256 min_mint_amount) external;
}