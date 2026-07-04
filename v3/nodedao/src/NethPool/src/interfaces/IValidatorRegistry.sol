// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

interface IValidatorRegistry {
    function registerPubkey(bytes memory _pubkey) external;

    event PubkeyRegistered(bytes[] _pubkeys, address _poolAddr);
}
