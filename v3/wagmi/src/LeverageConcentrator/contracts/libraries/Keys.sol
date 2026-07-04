// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.23;

library Keys {
    function computeLCpoolKey(
        address factory,
        address token0,
        address token1,
        uint24 fee
    ) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(factory, token0, token1, fee));
    }
}
