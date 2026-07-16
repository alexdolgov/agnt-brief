// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.6.12;

import "./oracles/BaseValue.sol";

contract ValueETHUSD is BaseValue {

    function wat() public pure override returns (bytes32) {
        return "ETHUSD";
    }

    function recover(uint256 val_, uint256 age_, uint8 v, bytes32 r, bytes32 s) internal pure override returns (address) {
        return ecrecover(
            keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", keccak256(abi.encodePacked(val_, age_, wat())))),
            v, r, s
        );
    }
}
