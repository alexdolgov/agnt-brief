// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Aggregator {
  function aggregate(address[] calldata to, bytes[] calldata calls) public returns (bytes[] memory returnData) {
    require(to.length == calls.length, "Aggregator: wrong parameter");
    returnData = new bytes[](calls.length);
    for(uint256 i = 0; i < calls.length; i++) {
      (, bytes memory ret) = to[i].call(calls[i]);
      returnData[i] = ret;
    }
  }
}
