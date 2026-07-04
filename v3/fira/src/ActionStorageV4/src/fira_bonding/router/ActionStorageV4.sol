// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../interfaces/IPActionStorageV4.sol";
import "./RouterStorage.sol";

/// @title ActionStorageV4
/// @notice Router facet managing selector-to-facet mappings and ownership
/// @dev This facet provides administrative functions for the diamond-like proxy pattern:
///      - Maps function selectors to their implementation facet addresses
///      - Manages ownership with two-step transfer for security
///
///      The selector mapping allows the router to know which facet contract
///      should handle each function call. Only the owner can modify mappings.
contract ActionStorageV4 is RouterStorage, IPActionStorageV4 {
    modifier onlyOwner() {
        require(msg.sender == owner(), "Ownable: caller is not the owner");
        _;
    }

    /// @notice Returns the current owner address
    /// @return The owner address
    function owner() public view returns (address) {
        return _getCoreStorage().owner;
    }

    /// @notice Returns the pending owner address (for two-step transfer)
    /// @return The pending owner address, or zero if no transfer pending
    function pendingOwner() public view returns (address) {
        return _getCoreStorage().pendingOwner;
    }

    /// @notice Sets the facet address for multiple function selectors
    /// @dev Allows batch configuration of selector->facet mappings
    /// @param arr Array of SelectorsToFacet structs containing selectors and target facet
    function setSelectorToFacets(SelectorsToFacet[] calldata arr) external onlyOwner {
        CoreStorage storage $ = _getCoreStorage();

        for (uint256 i = 0; i < arr.length; i++) {
            SelectorsToFacet memory s = arr[i];
            for (uint256 j = 0; j < s.selectors.length; j++) {
                $.selectorToFacet[s.selectors[j]] = s.facet;
                emit SelectorToFacetSet(s.selectors[j], s.facet);
            }
        }
    }

    /// @notice Returns the facet address for a given function selector
    /// @param selector The 4-byte function selector
    /// @return The facet address, or zero if not configured
    function selectorToFacet(bytes4 selector) external view returns (address) {
        CoreStorage storage $ = _getCoreStorage();
        return $.selectorToFacet[selector];
    }

    /// @notice Initiates or completes ownership transfer
    /// @dev If direct=true, transfers immediately. Otherwise, sets pending owner for two-step transfer.
    /// @param newOwner The new owner address
    /// @param direct If true, transfer immediately; if false, set as pending
    /// @param renounce If true with direct=true and newOwner=0, renounces ownership
    function transferOwnership(address newOwner, bool direct, bool renounce) external onlyOwner {
        CoreStorage storage $ = _getCoreStorage();

        if (direct) {
            require(newOwner != address(0) || renounce, "Ownable: zero address");

            emit OwnershipTransferred($.owner, newOwner);
            $.owner = newOwner;
            $.pendingOwner = address(0);
        } else {
            $.pendingOwner = newOwner;
        }
    }

    /// @notice Claims pending ownership (second step of two-step transfer)
    /// @dev Can only be called by the pending owner
    function claimOwnership() external {
        CoreStorage storage $ = _getCoreStorage();

        address _pendingOwner = $.pendingOwner;

        require(msg.sender == _pendingOwner, "Ownable: caller != pending owner");

        emit OwnershipTransferred($.owner, _pendingOwner);
        $.owner = _pendingOwner;
        $.pendingOwner = address(0);
    }
}
