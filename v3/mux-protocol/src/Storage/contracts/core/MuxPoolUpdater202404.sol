// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.10;

import "./Storage.sol";

// will be removed in the next release
contract MuxPoolUpdater202404 is Storage {
    function setNativeUnwrapper(address oldNativeUnwrapper, address newNativeUnwrapper) external onlyOwner {
        require(_storage.nativeUnwrapper == oldNativeUnwrapper, "OLD");
        _storage.nativeUnwrapper = newNativeUnwrapper;
    }
}
