// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "../base/interface/IController.sol";
import "../base/interface/IBookkeeper.sol";
import "../base/interface/ISmartVault.sol";

contract HardWorkResolver {

  uint public constant MIN_GAS_PER_CALL = 1_000_000;

  address public owner;
  IController public controller;
  IBookkeeper public bookkeeper;
  uint public delay = 1 days;
  uint public maxGas = 35 gwei;

  uint public lastVaultId;
  mapping(address => uint) public lastHW;
  mapping(address => bool) public operators;

  constructor(
    address controller_,
    address bookkeeper_
  ) {
    controller = IController(controller_);
    bookkeeper = IBookkeeper(bookkeeper_);
  }

  function setDelay(uint value) external {
    require(msg.sender == owner, "!owner");
    delay = value;
  }

  function setMaxGas(uint value) external {
    require(msg.sender == owner, "!owner");
    maxGas = value;
  }

  function changeOperatorStatus(address operator, bool status) external {
    require(msg.sender == owner, "!owner");
    operators[operator] = status;
  }

  function call(bytes memory data) external {
    require(operators[msg.sender], "!operator");

    address[] memory vaults = abi.decode(data, (address[]));
    IController _controller = controller;
    uint _delay = delay;
    uint vaultsLength = vaults.length;
    uint i = lastVaultId;
    for (; i < vaultsLength; ++i) {
      address vault = vaults[i];

      if (
        !ISmartVault(vault).active()
      || lastHW[vault] + _delay > block.timestamp
      ) {
        continue;
      }

      _controller.doHardWork(vault);
      lastHW[vault] = block.timestamp;
      if (gasleft() < MIN_GAS_PER_CALL) {
        break;
      }

    }
    lastVaultId = i;

  }

  function checker() external view returns (bool canExec, bytes memory execPayload) {
    if (tx.gasprice > maxGas) {
      return (false, bytes("Too high gas"));
    }

    IBookkeeper _bookkeeper = bookkeeper;
    uint _delay = delay;
    uint vaultsLength = _bookkeeper.vaultsLength();
    address[] memory vaults = new address[](vaultsLength);
    uint counter;
    for (uint i; i < vaultsLength; ++i) {
      address vault = _bookkeeper._vaults(i);
      if (lastHW[vault] + _delay < block.timestamp) {
        vaults[i] = vault;
        counter++;
      }
    }
    if (counter == 0) {
      return (false, bytes("No ready vaults"));
    } else {
      address[] memory vaultsResult = new address[](counter);
      uint j;
      for (uint i; i < vaultsLength; ++i) {
        if (vaults[i] != address(0)) {
          vaultsResult[j] = vaults[i];
          ++j;
        }
      }
      return (true, abi.encode(vaultsResult));
    }
  }

}
