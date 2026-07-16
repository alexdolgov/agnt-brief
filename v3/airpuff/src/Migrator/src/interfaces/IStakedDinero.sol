// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

interface IStakedDinero is IERC20 {
    /**
     * @notice Deposit DINERO into the StakedDinero vault.
     * @param  assets    uint256  Assets amount.
     * @param  receiver  address  Receiver address.
     * @return shares    uint256  Shares amount.
     */
    function deposit(
        uint256 assets,
        address receiver
    ) external returns (uint256 shares);
}
