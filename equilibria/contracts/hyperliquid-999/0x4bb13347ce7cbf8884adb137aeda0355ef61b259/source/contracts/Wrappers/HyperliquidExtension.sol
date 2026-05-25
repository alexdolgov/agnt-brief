// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.4;

import {TetherTokenOFTExtension} from "./OFTExtension.sol";

contract HyperliquidExtension is TetherTokenOFTExtension {
    event SetTrusted(address indexed _address, bool _isTrusted);

    function setTrusted(address _address, bool _isTrusted) external onlyOwner {
        isTrusted[_address] = _isTrusted; // uses mapping from base TetherToken.sol
        emit SetTrusted(_address, _isTrusted);
    }

    modifier onlyTrusted() {
        require(isTrusted[msg.sender], "Only trusted can call");
        _;
    }

    function transferWithHop(address intermediate, address recipient, uint256 amount) external onlyTrusted {
        require(intermediate != recipient, "intermediate == recipient");
        _transfer(msg.sender, intermediate, amount);
        _transfer(intermediate, recipient, amount);
    }
}