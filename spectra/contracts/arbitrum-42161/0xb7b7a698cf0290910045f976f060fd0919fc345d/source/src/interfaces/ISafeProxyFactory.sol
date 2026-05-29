// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.22;

interface ISafeProxyFactory {
    function createProxyWithNonce(
        address _singleton,
        bytes memory initializer,
        uint256 saltNonce
    ) external returns (address proxy);
}
