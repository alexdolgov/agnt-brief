// SPDX-License-Identifier: MIT
pragma solidity 0.8.34;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract HopHelper {
    using SafeERC20 for IERC20;

    struct Hop {
        uint256 index;
        uint256 sellAmount;
        uint256 buyAmount;
        bool approval;
    }

    event HopLog(uint256 index, uint256 sellAmount, uint256 buyAmount, bool approval);

    mapping(uint256 => Hop) internal hops;

    function logHop(uint256 index, uint256 sellAmount, uint256 buyAmount) external virtual {
        hops[index].index = index;
        hops[index].sellAmount = sellAmount;
        hops[index].buyAmount = buyAmount;
        emit HopLog(index, sellAmount, buyAmount, hops[index].approval);
    }

    function logAllowance(uint256 index, IERC20 sellToken, uint256 sellAmount, address, address owner, address spender)
        external
        virtual
    {
        uint256 allowance = sellToken.allowance(owner, spender);
        hops[index].approval = false;
        if (allowance < sellAmount) {
            hops[index].approval = true;
        }
    }
}
