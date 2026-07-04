// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Currency, CurrencyLibrary} from "../libraries/CurrencyLibrary.sol";

contract DiscountStorage {
    using CurrencyLibrary for Currency;

    uint256 public constant BASIS = 10000;
    Currency zlk;

    constructor(Currency _zlk) {
        zlk = _zlk;
    }

    function getDiscount(address user) external view returns (uint256 discount, uint256 basis) {
        uint256 balance = zlk.balanceOf(user);

        if (balance == 0) {
            return (0, BASIS);
        } else if (balance < 5e21) {
            return (300, BASIS);
        } else if (balance < 3e22) {
            return (500, BASIS);
        } else if (balance < 6e22) {
            return (1000, BASIS);
        } else if (balance < 1e23) {
            return (1200, BASIS);
        } else if (balance < 15e22) {
            return (1500, BASIS);
        } else if (balance < 3e23) {
            return (1800, BASIS);
        } else {
            return (2000, BASIS);
        }
    }
}
