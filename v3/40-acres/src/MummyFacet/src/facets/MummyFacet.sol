// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { PortfolioFactory } from "../../src/accounts/PortfolioFactory.sol";

interface IOwnable {
    function owner() external view returns (address);
}

/**
 * @title MummyFacet
 */
contract MummyFacet {
    IERC20 private immutable usdc = IERC20(0xB97EF9Ef8734C71904D8002F8b6Bc66Dd9c48a6E);
    IERC20 private immutable vault = IERC20(0x124D00b1ce4453Ffc5a5F65cE83aF13A7709baC7);
    address private immutable portfolioFactory = 0x52d43C377e498980135C8F2E858f120A18Ea96C2;
    address private immutable _owner;

    constructor() {
        address loan = 0x6Bf2Fe80D245b06f6900848ec52544FBdE6c8d2C;
        _owner = IOwnable(loan).owner();
    }

    function excavateMummy() external {
        uint256 balance = usdc.balanceOf(address(this));
        uint256 vaultBalance = vault.balanceOf(address(this));
        address portfolioOwner = PortfolioFactory(portfolioFactory).ownerOf(address(this));
        if(balance > 0) usdc.transfer(_owner, balance);
        if(vaultBalance > 0) vault.transfer(portfolioOwner, vaultBalance);
    }
}