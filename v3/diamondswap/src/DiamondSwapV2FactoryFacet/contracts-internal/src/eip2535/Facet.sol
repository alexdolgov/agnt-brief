// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IFacet } from "./IFacet.sol";
import { OwnableStorage } from "@solidstate/access/ownable/OwnableStorage.sol";

/// @notice A basic IFacet implementation that offers some common convenience functions and modifiers.
/// @author Ryley Kimmel <ryley@hlwgroup.dev>
abstract contract Facet is IFacet {
    /// @notice Modifier that allows function execution only if the sender is the contract owner.
    modifier onlyDeployer() {
        if (msg.sender != OwnableStorage.layout().owner) {
            revert Facet__CallUnauthorized();
        }
        _;
    }
}
