//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract DeadWallet is Ownable {
  using SafeERC20 for IERC20;

  uint256 constant MinMigrationAmount = 1e18;
  uint256 constant FRONT_TOKEN = 0;
  uint256 constant HOTCROSS_TOKEN = 1;

  IERC20 immutable front;
  IERC20 immutable hotcross;

  bool public isFrontOpen;
  bool public isHotcrossOpen;

  event NewMigration(
    address indexed ethAddress,
    uint256 indexed token,
    string destAddress,
    uint256 amount
  );

  modifier whenOpen(uint256 token) {
    if(token == FRONT_TOKEN) {
      require(isFrontOpen, "Front migration closed");
    } else {
      require(isHotcrossOpen, "Hotcross migration closed");
    }
    _;
  }

  constructor(IERC20 _front, IERC20 _hotcross) {
    front = _front;
    hotcross = _hotcross;
  }

  function setMigrationWindowOpen(uint256 token, bool isOpen) public onlyOwner {
    if(token == FRONT_TOKEN) {
      isFrontOpen = isOpen;
    } else if (token == HOTCROSS_TOKEN) {
      isHotcrossOpen = isOpen;
    }
  }

  function migrateFront(string memory destAddress) whenOpen(FRONT_TOKEN) public {
    uint256 amount = front.balanceOf(msg.sender);
    require(amount >= MinMigrationAmount, "Insufficient FRONT balance");

    front.safeTransferFrom(msg.sender, address(this), amount);

    emit NewMigration(msg.sender, FRONT_TOKEN, destAddress, amount);
  }

  function migrateHotcross(string memory destAddress) whenOpen(HOTCROSS_TOKEN) public {
    uint256 amount = hotcross.balanceOf(msg.sender);
    require(amount >= MinMigrationAmount, "Insufficient HOTCROSS balance");

    hotcross.safeTransferFrom(msg.sender, address(this), amount);

    emit NewMigration(msg.sender, HOTCROSS_TOKEN, destAddress, amount);
  }
}
