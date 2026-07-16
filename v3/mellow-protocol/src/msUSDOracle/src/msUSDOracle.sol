// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.25;

import "@openzeppelin/contracts/access/Ownable.sol";

contract msUSDOracle is Ownable {
    int256 public latestAnswer = 0.996e8;

    constructor(address owner_) Ownable(owner_) {}

    function set(int256 newPrice) external onlyOwner {
        if (newPrice < 0.98e8 || newPrice > 1.01e8) {
            revert("Invalid price range");
        }
        latestAnswer = newPrice;
    }
}
