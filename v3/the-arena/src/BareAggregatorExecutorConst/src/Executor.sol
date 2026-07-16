// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";


contract BareAggregatorExecutorConst is Ownable {
    address public constant AGGREGATOR = 0xF708e11A7C94abdE8f6217B13e6fE39C8b9cC0a6; // <- fill in

    constructor() Ownable(msg.sender) {}

    function execute(bytes calldata data) external returns (bytes memory result) {
        (bool ok, bytes memory ret) = AGGREGATOR.call(data);
        if (!ok) {
            assembly { revert(add(ret, 0x20), mload(ret)) }
        }
        return ret;
    }

    function rescueFunds(address token, uint256 amount) external onlyOwner {
        IERC20(token).transfer(msg.sender, amount);
    }

    function rescueFundsAvax(uint256 amount) external onlyOwner {
        payable(msg.sender).transfer(amount);
    }

    function rescueTokensAll(address[] calldata tokens) external onlyOwner {
        for (uint256 i = 0; i < tokens.length; i++) {
            IERC20(tokens[i]).transfer(msg.sender, IERC20(tokens[i]).balanceOf(address(this)));
        }
    }

    function approveToken(address token, address spender, uint256 amount) external onlyOwner {
        IERC20(token).approve(spender, amount);
    }
}
