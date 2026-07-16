//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@gammaswap/v1-staking/contracts/tokens/RestrictedToken.sol";

contract EsGS is RestrictedToken {
  constructor() RestrictedToken("Escrowed GS", "esGS", TokenType.ESCROW) {}
}
