// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IGudPartnerPool } from "./interfaces/IGudPartnerPool.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Pausable } from "@openzeppelin/contracts/utils/Pausable.sol";
import { Ownable, Ownable2Step } from "@openzeppelin/contracts/access/Ownable2Step.sol";

contract GudPartnerPool is IGudPartnerPool, Ownable2Step, Pausable {

  error ExceedDeposits();

  using SafeERC20 for IERC20;

  /// @custom:storage-location erc7201:gudpartnerpool.deposit.storage
  struct DepositStorage {
    IERC20 underlying;
    mapping(address => uint256) userDeposit;
  }

  // keccak256(abi.encode(uint256(keccak256("gudpartnerpool.deposit.storage")) - 1)) & ~bytes32(uint256(0xff));
  bytes32 private constant _DEPOSIT_STORAGE_SLOT = 0x28ec8b7592064ff5e18f6bc772e7eff34ecfca6d1980a4330c7b2fbd0ed52100;
	
  constructor(IERC20 _underlying, address _initOwner) Ownable(_initOwner) {
    DepositStorage storage $ = _getDepositStorage();
    $.underlying = _underlying;
    _pause();
	}

  function _getDepositStorage() private pure returns (DepositStorage storage ds) {
    assembly {
      ds.slot := _DEPOSIT_STORAGE_SLOT
    }
  }

  function underlying() public view returns (address) {
    DepositStorage storage $ = _getDepositStorage();
    return address($.underlying);
  }
	
	// get total amount of deposit
  function totalDeposit() external view returns(uint256) {
    DepositStorage storage $ = _getDepositStorage();
    return $.underlying.balanceOf(address(this));
  }
	
  function deposit(uint256 amount) external whenNotPaused {
    DepositStorage storage $ = _getDepositStorage();
    $.userDeposit[msg.sender] += amount;
    $.underlying.safeTransferFrom(msg.sender, address(this), amount);

    emit Deposit(msg.sender, amount);
  }
	
  function withdraw(uint256 amount) external {
    DepositStorage storage $ = _getDepositStorage();
    if ($.userDeposit[msg.sender] < amount) revert ExceedDeposits();
    $.userDeposit[msg.sender] -= amount;
    $.underlying.safeTransfer(msg.sender, amount);

    emit Withdraw(msg.sender, amount);
  }

  function balanceOf(address user) view external returns(uint256) {
    DepositStorage storage $ = _getDepositStorage();
    return $.userDeposit[user];
  }

  function pause() external onlyOwner {
    _pause();
  }

  function unpause() external onlyOwner {
    _unpause();
  }
}