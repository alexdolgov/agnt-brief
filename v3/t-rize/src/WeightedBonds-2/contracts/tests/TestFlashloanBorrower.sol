// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IERC3156FlashBorrower} from "@openzeppelin/contracts/interfaces/IERC3156FlashBorrower.sol";
import {IERC3156FlashLender} from "@openzeppelin/contracts/interfaces/IERC3156FlashLender.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/* solhint-disable */
contract TEST_FlashBorrower is IERC3156FlashBorrower {
    bytes32 private constant _RETURN_VALUE =
        keccak256("ERC3156FlashBorrower.onFlashLoan");


    function flashLoan(address lenderAddress, uint256 amount) external {
      IERC3156FlashLender lender = IERC3156FlashLender(lenderAddress);
      bytes memory data = abi.encode(1);
      require(
        lender.flashLoan(
          this,
          lenderAddress,
          amount,
          data
        )
      );
    }

    /**
     * @dev Receive a flash loan.
     * @param initiator The initiator of the loan.
     * @param token The loan currency.
     * @param amount The amount of tokens lent.
     * @param fee The additional amount of tokens to repay.
     * @param data Arbitrary data structure, intended to contain user-defined parameters.
     * @return The keccak256 hash of "ERC3156FlashBorrower.onFlashLoan"
     */
    function onFlashLoan(
        address initiator,
        address token,
        uint256 amount,
        uint256 fee,
        bytes calldata data
    ) external returns (bytes32) {
      initiator;
      token;
      data;
      IERC20 erc20 = IERC20(token);
      erc20.approve(msg.sender, amount + fee);
      return _RETURN_VALUE;
    }
}
