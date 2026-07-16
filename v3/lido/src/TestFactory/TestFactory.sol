// SPDX-FileCopyrightText: 2024 Lido <info@lido.fi>
// SPDX-License-Identifier: GPL-3.0

// See contracts/COMPILERS.md
pragma solidity 0.8.25;

import {Clones} from "./Clones.sol";

contract TestFactory {
    address public immutable IMPL;

    constructor(address _impl) {
        if (_impl == address(0)) revert ZeroArgument();

        IMPL = _impl;
    }

    function createVaultCloneWithImmutable() external returns (address clone) {

        bytes memory immutableArgs = abi.encode(msg.sender);
        clone = Clones.cloneWithImmutableArgs(IMPL, immutableArgs);
        emit CloneCreated(clone);
    }

    function createVaultClone() external returns (address clone) {
        clone = Clones.clone(IMPL);
        emit CloneCreated(clone);
    }

    event CloneCreated(address indexed clone);

    error ZeroArgument();
}
