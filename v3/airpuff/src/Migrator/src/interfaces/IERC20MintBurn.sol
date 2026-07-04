// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

interface IERC20MintBurn is IERC20 {
    /**
     * @notice Mint tokens.
     * @param  to      address  Receiver address.
     * @param  amount  uint256  Amount.
     */
    function mint(address to, uint256 amount) external;

    /**
     * @notice Burn tokens.
     * @param  amount  uint256  Amount.
     */
    function burn(uint256 amount) external;
}
