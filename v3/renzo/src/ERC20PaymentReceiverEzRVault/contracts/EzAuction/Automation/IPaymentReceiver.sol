// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IPaymentReceiver {
    function processPayment(IERC20 token) external returns (bool);
}
