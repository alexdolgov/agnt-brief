// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.10;

import "./Storage.sol";

// will be removed in the next release
contract MuxBookUpdater202404 is Storage {
    function setNativeUnwrapper(
        INativeUnwrapper oldNativeUnwrapper,
        INativeUnwrapper newNativeUnwrapper
    ) external onlyOwner {
        require(_storage.nativeUnwrapper == oldNativeUnwrapper, "OLD");
        _storage.nativeUnwrapper = newNativeUnwrapper;
    }
}
