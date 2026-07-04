// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title ZeroDevWithdrawalHelper
 * @notice This contract helps users to manually transfer USDB out of their ZeroDev smart accounts
 * @author predict.fun protocol team
 */
contract ZeroDevWithdrawalHelper {
    address public constant USDB = 0x4300000000000000000000000000000000000003;

    function encodeUSDBTransfer(address to, uint256 amount) external pure returns (bytes memory userOpCalldata) {
        bytes memory callData = abi.encode(to, amount);
        userOpCalldata = abi.encodePacked(USDB, uint256(0), IERC20.transfer.selector, callData);
    }
}
