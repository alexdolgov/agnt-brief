// SPDX-License-Identifier: MIT

pragma solidity ^0.8.6;

contract Enum {
  enum Operation {
    Call,
    DelegateCall
  }
}

interface IERC20 {
  function transfer(address to, uint256 value) external returns (bool);

  function approve(address to, uint256 value) external returns (bool);
}

contract Wallet {
  address public owner;

  constructor() {
    owner = msg.sender;
  }

  function executeCall(
    address to,
    uint256 value,
    bytes memory data,
    uint256 txGas
  ) internal returns (bool success) {
    // solium-disable-next-line security/no-inline-assembly
    assembly {
      success := call(txGas, to, value, add(data, 0x20), mload(data), 0, 0)
    }
  }

  function updateOwner(address newOwner) public {
    require(msg.sender == owner, "Only owner");
    owner = newOwner;
  }

  function executeDelegateCall(
    address to,
    bytes memory data,
    uint256 txGas
  ) internal returns (bool success) {
    // solium-disable-next-line security/no-inline-assembly
    assembly {
      success := delegatecall(txGas, to, add(data, 0x20), mload(data), 0, 0)
    }
  }

  function send(address payable to, uint256 value)
    external
    returns (bool, bytes memory)
  {
    return to.call{ value: value }("");
  }

  function execTransaction(
    address to,
    uint256 value,
    bytes calldata data,
    Enum.Operation operation,
    uint256 gasLimit
  ) external returns (bool success) {
    require(msg.sender == owner, "Only owner");
    require(
      gasleft() >= gasLimit,
      "Not enough gas to execute safe transaction"
    );
    if (operation == Enum.Operation.Call)
      success = executeCall(to, value, data, gasLimit);
    else if (operation == Enum.Operation.DelegateCall)
      success = executeDelegateCall(to, data, gasLimit);
    require(success == true, "Transaction failed");
  }

  receive() external payable {}
}
