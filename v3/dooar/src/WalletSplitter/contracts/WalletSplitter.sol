// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/finance/PaymentSplitter.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract WalletSplitter is PaymentSplitter, ReentrancyGuard {

    uint256 private _totalPayees;
    address[] private _defaultErc20;

    constructor(
        address[] memory payees,
        uint256[] memory shares_,
        address[] memory defaultErc20Tokens
    ) PaymentSplitter(payees, shares_) {
        _totalPayees = payees.length;
        _defaultErc20 = defaultErc20Tokens;
    }

    function releaseNativeAll() public {
        if (address(this).balance >= 100) {
            for (uint256 i = 0; i < _totalPayees; i++) {
                release(payable(payee(i)));
            }
        }
    }

    function releaseErc20All(address[] memory tokens) public {
        for (uint256 j = 0; j < tokens.length; j++) {
            IERC20 token = IERC20(tokens[j]);
            if (token.balanceOf(address(this)) >= 100) {
                for (uint256 i = 0; i < _totalPayees; i++) {
                    release(token, payee(i));
                }
            }
        }
    }

    function releaseAll() public {
        releaseNativeAll();
        releaseErc20All(_defaultErc20);
    }
}
