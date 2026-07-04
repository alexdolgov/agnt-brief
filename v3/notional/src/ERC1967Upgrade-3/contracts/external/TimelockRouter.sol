// SPDX-License-Identifier: BSUL-1.1
pragma solidity =0.7.6;
pragma abicoder v2;

import {StorageLayoutV2} from "../global/StorageLayoutV2.sol";
import {UUPSUpgradeable} from "../proxy/utils/UUPSUpgradeable.sol";

contract TimelockRouter is StorageLayoutV2, UUPSUpgradeable {
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /// @dev Throws if called by any account other than the owner.
    modifier onlyOwner() {
        require(owner == msg.sender, "Ownable: caller is not the owner");
        _;
    }

    /// @notice Transfers ownership to `newOwner`.
    /// @param newOwner Address of the new owner.
    function transferOwnership(address newOwner) external onlyOwner {
        pendingOwner = newOwner;
    }

    /// @notice Needs to be called by `pendingOwner` to claim ownership.
    function claimOwnership() external {
        address _pendingOwner = pendingOwner;

        // Checks
        require(msg.sender == _pendingOwner, "Ownable: caller != pending owner");

        // Effects
        emit OwnershipTransferred(owner, _pendingOwner);
        owner = _pendingOwner;
        pendingOwner = address(0);
    }

    /// @dev Only the owner may upgrade the contract
    function _authorizeUpgrade(address newImplementation) internal override {
        require(owner == msg.sender,  "Unauthorized");
    }
}