// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/access/Ownable.sol";

abstract contract ForeverOwnable is Ownable {
    error CannotRenounceOwnership();

    /// @notice Blocks renouncing ownership.
    /// @dev Prevents orphaned contract.
    function renounceOwnership() public virtual override onlyOwner {
        revert CannotRenounceOwnership();
    }
}
