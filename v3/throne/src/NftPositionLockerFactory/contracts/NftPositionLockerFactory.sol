// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "./NftPositionLocker.sol";

/// @title NftPositionLockerFactory
/// @notice This contract locks v3 nft position in uniswap v3 for a period of time
contract NftPositionLockerFactory {
    uint40 public lockId;

    mapping(uint40 => address) public lockAddresses;

    event LockCreated(uint40 lockId, address positionManagerAddress, uint40 unlockTime, address lockAddress);

    function createLock(address nonfungiblePositionManager, uint40 unlockTime) external returns (address) {
        NftPositionLocker lock = new NftPositionLocker(lockId, nonfungiblePositionManager, unlockTime, msg.sender);
        lockAddresses[lockId] = address(lock);

        emit LockCreated(lockId, nonfungiblePositionManager, unlockTime, address(lock));

        lockId++;
        return address(lock);
    }
}
