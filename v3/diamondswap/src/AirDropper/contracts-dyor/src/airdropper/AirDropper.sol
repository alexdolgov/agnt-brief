// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IERC20 } from "@openzeppelin/contracts/interfaces/IERC20.sol";

contract AirDropper {

    error InvalidLengths();

    function distribute(address tokenAddress, address[] calldata recipients, uint256[] calldata amounts) external {
        uint256 recipientsLength = recipients.length;
        uint256 amountsLength = amounts.length;
        if (recipientsLength != amountsLength) {
            revert InvalidLengths();
        }
        IERC20 token = IERC20(tokenAddress);
        for (uint256 i = 0; i < recipientsLength; i++) {
            token.transferFrom(msg.sender, recipients[i], amounts[i]);
        }
    }
}