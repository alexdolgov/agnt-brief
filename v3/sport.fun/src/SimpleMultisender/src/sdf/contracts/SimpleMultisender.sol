// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IERC20 {
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

contract SimpleMultisender {
    constructor() {}

    function distributeETH(address[] calldata wallets, uint256[] calldata amounts) external payable {
        require(wallets.length == amounts.length, "Invalid input");

        for (uint256 i = 0; i < wallets.length; i++) {
            address payable wallet = payable(wallets[i]);
            uint256 amount = amounts[i];
            require(amount > 0, "Invalid amount");

            (bool ok,) = wallet.call{value: amount}("");
            require(ok, "Transfer failed");
        }
    }

    function distributeERC20(address token, address[] calldata wallets, uint256[] calldata amounts) external {
        require(wallets.length == amounts.length, "Invalid input");

        IERC20 erc20 = IERC20(token);

        for (uint256 i = 0; i < wallets.length; i++) {
            address wallet = wallets[i];
            uint256 amount = amounts[i];
            require(amount > 0, "Invalid amount");

            require(erc20.transferFrom(msg.sender, wallet, amount), "Transfer failed");
        }
    }
}
