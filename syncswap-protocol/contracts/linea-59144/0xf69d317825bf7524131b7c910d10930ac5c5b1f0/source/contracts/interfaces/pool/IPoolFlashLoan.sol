// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

import "../vault/IERC3156FlashLender.sol";

interface IPoolFlashLoan is IERC3156FlashLender {
    /**
     * @dev Emitted for each individual flash loan performed by `flashLoan`.
     */
    event FlashLoan(address indexed recipient, address indexed token, uint amount, uint feeAmount);
}