// SPDX-License-Identifier: MIT
pragma solidity 0.8.34;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "contracts/helpers/Constants.sol";

contract TokenBalanceHelper is Constants {
    function getBalance(address token, address recipient) internal view returns (uint256) {
        if (token == NATIVE) {
            return recipient.balance;
        }
        return IERC20(token).balanceOf(recipient);
    }
}
