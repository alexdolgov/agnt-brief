// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.27;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract TokenBatchTransfer is Ownable {
    mapping(address => bool) private s_isOperator;

    event OperatorAdded(address indexed operator, bool add);

    error TokenBatchTransfer__ZeroAddress();
    error TokenBatchTransfer__InvalidInputParameters();
    error TokenBatchTransfer__NotOperator();

    modifier onlyOperator() {
        if (!s_isOperator[msg.sender]) {
            revert TokenBatchTransfer__NotOperator();
        }
        _;
    }

    constructor() Ownable(msg.sender) {
        s_isOperator[msg.sender] = true;
    }

    function addOperator(address operator, bool add) external onlyOwner {
        if (operator == address(0)) {
            revert TokenBatchTransfer__ZeroAddress();
        }

        s_isOperator[operator] = add;
        emit OperatorAdded(operator, add);
    }

    function batchTransfer(address token, address tokenHolder, address[] calldata users, uint256[] calldata amounts)
        external
        onlyOperator
    {
        if (token == address(0)) {
            revert TokenBatchTransfer__ZeroAddress();
        }

        if (tokenHolder == address(0)) {
            revert TokenBatchTransfer__ZeroAddress();
        }

        if (users.length == 0 || amounts.length == 0 || users.length != amounts.length) {
            revert TokenBatchTransfer__InvalidInputParameters();
        }

        uint256 length = users.length;
        for (uint256 index; index < length;) {
            SafeERC20.safeTransferFrom(IERC20(token), tokenHolder, users[index], amounts[index]);

            unchecked {
                ++index;
            }
        }
    }

    function isOperator(address operator) external view returns (bool) {
        return s_isOperator[operator];
    }
}
