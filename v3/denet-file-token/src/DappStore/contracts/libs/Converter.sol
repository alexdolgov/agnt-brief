// SPDX-License-Identifier: MIT

/*
    Created by DeNet
*/

pragma solidity ^0.8.15;

import '../interfaces/ITypes.sol';

library Converter {
  function toDto(
    ITypes.Dapp memory dapp,
    uint256 tokenId,
    address owner
  ) internal pure returns (ITypes.DappDto memory _dappDto) {
    _dappDto.dappId = tokenId;
    _dappDto.owner = owner;
    _dappDto.dapp = dapp;
  }
}
