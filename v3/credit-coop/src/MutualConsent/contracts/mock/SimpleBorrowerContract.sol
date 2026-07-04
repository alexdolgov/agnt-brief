// SPDX-License-Identifier: GPL-3.0
// Copyright: https://github.com/credit-cooperative/Line-Of-Credit-v2/blob/master/COPYRIGHT.md

pragma solidity 0.8.25;

import {Denominations} from "chainlink/Denominations.sol";
import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol";
import {MutualConsent} from "../utils/MutualConsent.sol";

contract SimpleBorrowerContract is MutualConsent {
    address public owner;
    address public manager;
    address public methodologist;
    IERC20 spigotToken;
    uint256 public count;
    mapping(address => uint256) public nonce;

    constructor(address _owner, address token) {
        owner = _owner;
        manager = _owner;
        methodologist = _owner;
        spigotToken = IERC20(token);
    }

    function claimPullPayment() external returns (bool) {
        require(msg.sender == owner, "Claimable Tokens: Only owner can claim");
        if (address(spigotToken) != Denominations.ETH) {
            require(spigotToken.transfer(owner, spigotToken.balanceOf(address(this))), "Claimable Tokens: bad transfer");
        } else {
            payable(owner).transfer(address(this).balance);
        }
        return true;
    }

    function sendPushPayment() external returns (bool) {
        if (address(spigotToken) != Denominations.ETH) {
            require(spigotToken.transfer(owner, spigotToken.balanceOf(address(this))), "Claimable Tokens: bad transfer");
        } else {
            payable(owner).transfer(address(this).balance);
        }
        return true;
    }

    function doAnOperationsThing() external view returns (bool) {
        require(msg.sender == owner, "Claimable Tokens: Only owner can operate");
        return true;
    }

    function doAnOperationsThingWithArgs(uint256 val) external pure returns (bool) {
        require(val > 10, "too small");
        if (val % 2 == 0) return true;
        else return false;
    }

    function transferOwnership(address newOwner) external returns (bool) {
        require(msg.sender == owner, "Claimable Tokens: Only owner can transfer");
        owner = newOwner;
        return true;
    }

    function setMethodologist(address newMethodologist) external {
        require(msg.sender == methodologist, "Only methodologist can call");
        methodologist = newMethodologist;
    }

    function setManager(address newManager) external mutualConsent(manager, methodologist) {
        require(newManager != address(0), "Zero address not valid");
        manager = newManager;
    }

    function incrementCount() external {
        require(msg.sender == manager, "Only manager can call");
        count += 1;
    }

    function updateNonce(address _address, uint256 num) external {
        require(msg.sender == manager, "Only manager can call");
        nonce[_address] += num;
    }

    function getNonce(address _address) external view returns (uint256) {
        return nonce[_address];
    }

    receive() external payable {}
}
