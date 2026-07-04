pragma solidity 0.6.12;

contract Timestamp {
  function getBlockTimestamp() external view returns (uint) {
    return block.timestamp;
  }
}