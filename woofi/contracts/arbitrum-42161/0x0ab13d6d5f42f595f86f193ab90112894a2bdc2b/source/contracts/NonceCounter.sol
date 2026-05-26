// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import {INonceCounter} from "./interfaces/INonceCounter.sol";

contract NonceCounterV2 is INonceCounter, OwnableUpgradeable {
    /* ----- State Variables ----- */

    mapping(address => bool) public isCrossChainRouter;
    mapping(uint16 => uint256) public outboundNonce;
    uint256 public a;

    /* ----- Modifiers ----- */

    modifier onlyCrossChainRouter() {
        require(isCrossChainRouter[_msgSender()], "NonceCounter: not crossChainRouter");
        _;
    }

    /* ----- Constructor ----- */

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /* ----- Functions ----- */

    function initialize() external initializer {
        __Ownable_init();
        a = 5;
    }

    function increment(uint16 dstChainId) external override onlyCrossChainRouter returns (uint256) {
        return ++outboundNonce[dstChainId];
    }

    function setCrossChainRouter(address crossChainRouter, bool flag) external onlyOwner {
        isCrossChainRouter[crossChainRouter] = flag;
        emit CrossChainRouterUpdated(crossChainRouter, flag);
    }
}
