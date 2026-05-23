// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

import "../interfaces/IAddressesProvider.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";

interface IConst{
  enum Token {
    Undefined,
    Usdt
  }
}

interface IExternalErc20Token {
  function decimals() external view returns (uint8);
  function balanceOf(address user) external view returns (uint256);
}

function getTokenIdFromAddressOrThrowIfUnsupported(address externalTokenAddress, IAddressesProvider addressProvider) view returns (IConst.Token result) {
  result = IConst.Token.Undefined;
  if (externalTokenAddress == addressProvider.getUsdt()) {
    result = IConst.Token.Usdt;
  }
  require(result != IConst.Token.Undefined, string.concat("OP: unsupported external token:", Strings.toHexString(uint160(externalTokenAddress), 20)));

  return result;
}
