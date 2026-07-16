//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@gammaswap/v1-staking/contracts/tokens/RestrictedToken.sol";

contract BnGS is RestrictedToken {
  constructor() RestrictedToken("Bonus GS", "bnGS", TokenType.BONUS) {}
}
