// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;


interface IBlastPoints {
  function configurePointsOperator(address operator) external;
  function configurePointsOperatorOnBehalf(address contractAddress, address operator) external;
}

// EXAMPLE dAPP
contract Dapp {
  constructor(address _blastPointsAddress, address _pointsOperator) {
    // be sure to use the appropriate testnet/mainnet BlastPoints address
    IBlastPoints(_blastPointsAddress).configurePointsOperator(_pointsOperator);
  }
}