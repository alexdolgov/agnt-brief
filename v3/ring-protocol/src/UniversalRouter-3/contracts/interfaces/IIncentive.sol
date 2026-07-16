// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.15;

interface IIncentive {
    function incentivize(
        address inputToken,
        uint256 inputAmount,
        address outputToken,
        uint256 outputAmount
    ) external;
}
