// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import '@openzeppelin/contracts-upgradeable/utils/StringsUpgradeable.sol';

library NFTDescriptor {
  using StringsUpgradeable for address;
  using StringsUpgradeable for uint256;

  struct ConstructorParams {
    address pool;
    address token;
    string symbol;
    uint256 id;
    uint256 interestRate;
    uint256 penaltyRate;
    uint256 endDate;
    uint256 decimals;
  }

  function constructURI(ConstructorParams memory params) public pure returns (string memory) {
    return
      string(
        abi.encodePacked(
          'https://clearpool.finance/api/bonds/',
          params.token.toHexString(),
          '/',
          params.id.toString(),
          '?symbol=',
          params.symbol,
          '&iRate=',
          params.interestRate.toString(),
          '&pRate=',
          params.penaltyRate.toString(),
          '&date=',
          params.endDate.toString(),
          '&pool=',
          params.pool.toHexString(),
          '&decimals=',
          params.decimals.toString()
        )
      );
  }
}
