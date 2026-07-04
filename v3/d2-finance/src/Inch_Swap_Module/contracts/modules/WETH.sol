// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import "@solidstate/contracts/utils/ReentrancyGuard.sol";
import "@solidstate/contracts/access/access_control/AccessControl.sol";

interface IWETH_Module {
    function weth_deposit(uint256 amount) external;
    function weth_withdraw(uint256 amount) external;
}

contract WETH_Module is IWETH_Module, AccessControl, ReentrancyGuard {
    bytes32 public constant EXECUTOR_ROLE = keccak256("EXECUTOR_ROLE");

    IWETH public immutable weth;

    constructor(address _weth) {
        weth = IWETH(_weth);
    }

    function weth_deposit(uint256 amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        weth.deposit{value: amount}();
    }

    function weth_withdraw(uint256 amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        weth.withdraw(amount);
    }
}

interface IWETH {
    function deposit() external payable;
    function withdraw(uint256 amount) external;
}
