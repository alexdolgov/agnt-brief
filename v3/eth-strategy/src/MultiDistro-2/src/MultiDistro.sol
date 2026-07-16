// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

interface IERC20 {
  function transferFrom(address from, address to, uint amount) external returns (bool);
  function transfer(address to, uint amount) external returns (bool);
}

contract MultiDistro {

  struct Batch {
    address[] targets;
    uint[] amounts;
    uint total;
    bool executed;
  }

  address immutable public proposer;
  address immutable public executor;
  IERC20 immutable public token;

  uint public nextBatchId = 1;
  mapping(uint => Batch) public batches;

  constructor(address _proposer, address _executor, address _token) {
    proposer = _proposer;
    executor = _executor;
    token = IERC20(_token);
  }

  function getBatch(uint batchId) external view returns (Batch memory) {
    return batches[batchId];
  }

  function propose(address[] calldata targets, uint[] calldata amounts) external {
    require(msg.sender == proposer, "Only proposer");
    require(targets.length == amounts.length, "Length mismatch");
    require(targets.length > 0, "No targets");
    uint total;
    Batch storage batch = batches[nextBatchId];
    for (uint i; i < amounts.length; i++) {
      total += amounts[i];
      batch.targets.push(targets[i]);
      batch.amounts.push(amounts[i]);
    }
    batch.total = total;
    nextBatchId++;
  }

  function execute(uint batchId) external {
    require(msg.sender == executor, "Only executor");
    Batch storage batch = batches[batchId];
    require(!batch.executed, "Already executed");
    batch.executed = true;
    IERC20(token).transferFrom(msg.sender, address(this), batch.total);
    for (uint i; i < batch.targets.length; i++) {
      IERC20(token).transfer(batch.targets[i], batch.amounts[i]);
    }
  }
}
