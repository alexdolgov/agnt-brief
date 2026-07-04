// SPDX-License-Identifier: BUSL-1.1
// This code is made available under the terms and conditions of the Business Source License 1.1 (BUSL-1.1).
// The act of publishing this code is driven by the aim to promote transparency and facilitate its utilization for educational purposes.

pragma solidity 0.8.18;

import { ERC20Upgradeable } from "lib/openzeppelin-contracts-upgradeable/contracts/token/ERC20/ERC20Upgradeable.sol";
import { OwnableUpgradeable } from "lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";

contract bDESK is ERC20Upgradeable, OwnableUpgradeable {
  mapping(address => bool) public isTransferrer;
  mapping(address => bool) public isMinter;
  uint256 public maxTotalSupply;

  event bDESK_SetMinter(address minter, bool prevAllow, bool newAllow);

  error bDESK_isNotTransferrer();
  error bDESK_NotMinter();
  error bDESK_ExceedTotalSupply();

  modifier onlyMinter() {
    if (!isMinter[msg.sender]) revert bDESK_NotMinter();
    _;
  }

  function initialize() external initializer {
    OwnableUpgradeable.__Ownable_init();
    ERC20Upgradeable.__ERC20_init("Bonded DESK", "bDESK");

    maxTotalSupply = 1_000_000_000 ether;
  }

  function setMinter(address minter, bool allow) external onlyOwner {
    emit bDESK_SetMinter(minter, isMinter[minter], allow);
    isMinter[minter] = allow;
  }

  function mint(address to, uint256 amount) public onlyMinter {
    if (totalSupply() + amount > maxTotalSupply) revert bDESK_ExceedTotalSupply();
    _mint(to, amount);
  }

  function setTransferrer(address transferrer, bool isActive) external onlyOwner {
    isTransferrer[transferrer] = isActive;
  }

  function _transfer(address from, address to, uint256 amount) internal virtual override {
    if (!isTransferrer[msg.sender]) revert bDESK_isNotTransferrer();

    super._transfer(from, to, amount);
  }

  function transferFrom(
    address from,
    address to,
    uint256 amount
  ) public virtual override returns (bool) {
    _transfer(from, to, amount);
    return true;
  }
}
