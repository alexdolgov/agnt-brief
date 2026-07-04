// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.17;

import "./MintSwapCanonicalTokenFreezable.sol";
import "../../../safeguard/Ownable.sol";

contract MintSwapCanonicalTokenFreezableFactory is Ownable {
    event TokenDeployed(address indexed tokenAddress);

    function deployToken(string memory name_, string memory symbol_, uint8 decimals_) public onlyOwner returns (address) {
        MintSwapCanonicalTokenFreezable token = new MintSwapCanonicalTokenFreezable(name_, symbol_, decimals_);
        emit TokenDeployed(address(token));
        return address(token);
    }
}