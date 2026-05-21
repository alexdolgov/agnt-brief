// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IERC20 } from "@openzeppelin/contracts/interfaces/IERC20.sol";

import { IEscrowSeam } from "../interfaces/IEscrowSeam.sol";

contract EsSEAMAirdrop is Ownable {
  error ArrayLengthsAreDifferent();
  error AmountSumNotEqualTotalEsSEAMDeposit();

  IERC20 constant public SEAM = IERC20(0x1C7a460413dD4e964f96D8dFC56E7223cE88CD85);
  IEscrowSeam constant public esSEAM = IEscrowSeam(0x998e44232BEF4F8B033e5A5175BDC97F2B10d5e5);

  constructor(address initialOwner) Ownable(initialOwner) {

  }

  function multiDeposit(
    uint256 totalEsSEAMDeposit, 
    address[] calldata accounts,
    uint256[] calldata amounts
  ) external onlyOwner {
    SEAM.approve(address(esSEAM), totalEsSEAMDeposit);

    if (accounts.length != amounts.length) {
      revert ArrayLengthsAreDifferent();
    }

    uint256 actualSum = 0;
    for(uint256 i=0; i<accounts.length; i++) {
      esSEAM.deposit(accounts[i], amounts[i]);
      actualSum += amounts[i];
    }

    if (actualSum != totalEsSEAMDeposit) {
      revert AmountSumNotEqualTotalEsSEAMDeposit();
    }
  }

  function withdrawERC20(address token) external onlyOwner {
    uint256 balance = IERC20(token).balanceOf(address(this));
    IERC20(token).transfer(msg.sender, balance);
  }
}
