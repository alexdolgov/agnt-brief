// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.25;

contract IsSafeWallet {
    function isSafeWallet(address a) public view returns (bool) {
        bytes32 codehash = a.codehash;
        return codehash == 0xb89c1b3bdf2cf8827818646bce9a8f6e372885f8c55e5c07acbd307cb133b000
            || codehash == 0xd7d408ebcd99b2b70be43e20253d6d92a8ea8fab29bd3be7f55b10032331fb4c;
    }

    function areSafeWallets(address[] calldata a) external view returns (bool[] memory) {
        bool[] memory response = new bool[](a.length);
        for (uint256 i = 0; i < a.length; i++) {
            response[i] = isSafeWallet(a[i]);
        }
        return response;
    }
}
