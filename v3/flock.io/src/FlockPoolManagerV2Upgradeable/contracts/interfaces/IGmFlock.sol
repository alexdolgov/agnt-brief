// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./IMintBurnableERC20.sol";

/**
 * @title IGmFlock
 * @author Ryon
 */
interface IGmFlock is IMintBurnableERC20 {
    function setRegistered(address _addr, bool status) external;
}
