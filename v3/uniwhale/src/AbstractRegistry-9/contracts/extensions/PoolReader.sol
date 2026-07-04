// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import "../RegistryCore.sol";
import "../OracleAggregator.sol";
import "../interfaces/IRegistry.sol";
import "../interfaces/IRegistryCore.sol";
import "../interfaces/ITradingCore.sol";
import "../interfaces/IOracleProvider.sol";
import "../interfaces/AbstractOracleAggregator.sol";
import "../libs/TradingCoreLib.sol";
import "../libs/math/FixedPoint.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";

abstract contract AbstractToken {
  mapping(address => uint256) public emissions;

  function getBaseBalance() external view virtual returns (uint256);

  function totalSupply() public view virtual returns (uint256);

  function getTotalStaked() external view virtual returns (uint256);
}

contract PoolReader {
  using FixedPoint for uint256;
  using SafeCast for uint256;
  using ERC20Fixed for ERC20;

  struct PoolStat {
    uint256 liquidityBalance;
    uint256 liquiditySupply;
    uint256 unwStaked;
    uint256 unwSupply;
    uint256 esUnwStaked;
    uint256 esUnwSupply;
    uint256 ulpEmission;
    uint256 unwEmission;
    uint256 esUnwEmission;
  }

  function getPoolStat(
    address liquidityPoolAddress,
    address unwAddress,
    address esunwAddress
  ) external view returns (PoolStat memory) {
    return
      PoolStat(
        AbstractToken(liquidityPoolAddress).getBaseBalance(),
        AbstractToken(liquidityPoolAddress).totalSupply(),
        AbstractToken(unwAddress).getTotalStaked(),
        AbstractToken(unwAddress).totalSupply(),
        AbstractToken(esunwAddress).getTotalStaked(),
        AbstractToken(esunwAddress).totalSupply(),
        AbstractToken(esunwAddress).emissions(liquidityPoolAddress),
        AbstractToken(esunwAddress).emissions(unwAddress),
        AbstractToken(esunwAddress).emissions(esunwAddress)
      );
  }
}
