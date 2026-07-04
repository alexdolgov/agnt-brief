// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import { ERC20 } from "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import { Ownable } from "lib/openzeppelin-contracts/contracts/access/Ownable.sol";

contract LDESK2 is ERC20, Ownable {
  mapping(address => bool) public isTransferer;
  mapping(address => bool) public isMinter;

  // Events
  event LDESK_SetMinter(address minter, bool prevAllow, bool newAllow);
  event LDESK_SetTransferer(address transferor, bool prevAllow, bool newAllow);

  // Errors
  error LDESK_NotMinter();
  error LDESK_IsNotTransferer();

  modifier onlyMinter() {
    if (!isMinter[msg.sender]) revert LDESK_NotMinter();
    _;
  }

  constructor() ERC20("Locked DESK 2", "LDESK 2") {}

  /// @notice Set minter.
  /// @param minter The address of the minter.
  /// @param allow Whether to allow the minter.
  function setMinter(address minter, bool allow) external onlyOwner {
    emit LDESK_SetMinter(minter, isMinter[minter], allow);
    isMinter[minter] = allow;
  }

  function setTransferer(address transferor, bool isActive) external onlyOwner {
    emit LDESK_SetTransferer(transferor, isTransferer[transferor], isActive);
    isTransferer[transferor] = isActive;
  }

  function mint(address to, uint256 amount) public onlyMinter {
    _mint(to, amount);
  }

  function burn(address from, uint256 amount) public onlyMinter {
    _burn(from, amount);
  }

  function _beforeTokenTransfer(
    address /* from */,
    address /* to */,
    uint256 /*amount*/
  ) internal virtual override {
    if (!isTransferer[msg.sender]) revert LDESK_IsNotTransferer();
  }
}
