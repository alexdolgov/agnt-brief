// SPDX-License-Identifier: MIT
pragma solidity 0.8.34;

import "contracts/helpers/TokenBalanceHelper.sol";

interface Minter {
    function mint(uint256 sellAmount, address receiver) external;
}

contract MintModeler is TokenBalanceHelper {
    function mintToken(Minter minter, uint256 sellAmount, address buyToken, address receiver)
        external
        payable
        returns (uint256 buyAmount)
    {
        uint256 startBalance = getBalance(buyToken, address(this));
        minter.mint(sellAmount, receiver);
        uint256 endBalance = getBalance(buyToken, address(this));
        buyAmount = endBalance - startBalance;
    }
}
