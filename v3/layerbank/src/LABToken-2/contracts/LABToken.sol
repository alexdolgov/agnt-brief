// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.12;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./interfaces/IRegister.sol";

contract LABToken is Ownable, ERC20("LayerBank Token", "LAB") {
  /* ========== STATE VARIABLES ========== */

  mapping(address => bool) private _minters;

  /* ========== MODIFIERS ========== */

  modifier onlyMinter() {
    require(isMinter(msg.sender), "LAB: caller is not the minter");
    _;
  }

  /* ========== INITIALIZER ========== */

  constructor() public {
    _minters[owner()] = true;
    IRegister sfsContract = IRegister(0x8680CEaBcb9b56913c519c069Add6Bc3494B7020);
    sfsContract.register(msg.sender);
  }

  /* ========== RESTRICTED FUNCTIONS ========== */

  function setMinter(address minter, bool canMint) external onlyOwner {
    _minters[minter] = canMint;
  }

  function mint(address _to, uint256 _amount) public onlyMinter {
    _mint(_to, _amount);
  }

  /* ========== VIEWS ========== */

  function isMinter(address account) public view returns (bool) {
    return _minters[account];
  }
}
