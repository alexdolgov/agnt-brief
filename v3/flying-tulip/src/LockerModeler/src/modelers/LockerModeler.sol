// SPDX-License-Identifier: MIT
pragma solidity 0.8.34;

import "contracts/helpers/TokenBalanceHelper.sol";

interface Locker {
    function deposit(uint256 sellAmount, bool lock, address stakeAddress) external;
}

contract LockerModeler is TokenBalanceHelper {
    function depositLocker(Locker locker, uint256 sellAmount, bool lock, address stakeAddress, address buyToken)
        external
        payable
        returns (uint256 buyAmount)
    {
        uint256 startBalance = getBalance(buyToken, address(this));
        locker.deposit(sellAmount, lock, stakeAddress);
        uint256 endBalance = getBalance(buyToken, address(this));
        buyAmount = endBalance - startBalance;
    }
}
