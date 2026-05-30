// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0;

interface IZapDexEnum {
  enum DexType {
    UniswapV2,
    UniswapV3
  }
  enum SrcType {
    ERC20Token,
    ERC721Token,
    ERC1155Token
  }
}
