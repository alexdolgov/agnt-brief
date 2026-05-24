// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title BatchDeposit
 * @dev Helper contract for testing batch deposits in a single transaction
 */
contract BatchDeposit {
    /**
     * @dev Transfers two amounts of tokens from the caller to a target address in one transaction
     * @param token The ERC20 token address
     * @param to The destination address
     * @param amount1 First transfer amount
     * @param amount2 Second transfer amount
     */
    function batchDeposit(
        address token,
        address to,
        uint256 amount1,
        uint256 amount2
    ) external {
        IERC20(token).transferFrom(msg.sender, to, amount1);
        IERC20(token).transferFrom(msg.sender, to, amount2);
    }
}

