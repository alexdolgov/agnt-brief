// SPDX-License-Identifier: MIT

// Verified on snowscan.xyz by @Toinounet21

pragma solidity ^0.8.17;

import "./interfaces/IBellumToken.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BellumToken is ERC20, IBellumToken {

    // Address of Bellum Contracts
    address public bellumFactory;

    // Bonding Curve Complete
    bool public curveComplete;

    constructor(string memory _name, string memory _symbol, uint112 _totalSupply) ERC20(_name, _symbol) {
        bellumFactory = msg.sender;
        _mint(msg.sender, _totalSupply);
    }

    function completeTheCurve() external {
        require(msg.sender == bellumFactory, "Bellum: NOT_ALLOWED");
        curveComplete = true;
    }

    function _update(address from, address to, uint256 amount) internal virtual override {
        // Is still in bonding curve phase
        super._update(from, to, amount);
        if (!curveComplete) {
            require(from == bellumFactory || to == bellumFactory || from == address(0), "Bellum: Cannot transfer tokens yet");
        }
    }
}