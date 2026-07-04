// SPDX-License-Identifier: UNLICENSED
// Copyright (c) Eywa.Fi, 2021-2025 - all rights reserved
pragma solidity 0.8.17;

import {IBasePoolAdapter} from "../interfaces/IBasePoolAdapter.sol";
import {IUnifiedRouter} from "../interfaces/IRouterV2.sol";
import {IAddressBook} from "../interfaces/IAddressBook.sol";

contract PoolHelper {

    /// @notice Interface for the AddressBook contract.
    IAddressBook public addressBook;

    /// @notice Contract constructor.
    /// @dev Set the AddressBook contract address.
    /// @param addressBook_ the AddressBook contract address.
    constructor(address addressBook_) {
        require(addressBook_ != address(0), "PoolHelper: zero address");
        addressBook = IAddressBook(addressBook_);
    }

    /// @notice Returns an array of fees for the passed pool address array.
    /// @dev From the router contract, the adapter contract address for the pool is determined.
    /// From which the fee set for this pool is determined.
    /// @param pools_ an array of pool contracts addresses.
    function getFeesForPools(address[] memory pools_) external view returns(uint256[] memory fees_) {
        IUnifiedRouter unifiedRouter = IUnifiedRouter(addressBook.router(uint64(block.chainid)));
        fees_ = new uint256[](pools_.length);
        for (uint256 i; i < pools_.length; i++) {
            fees_[i] = IBasePoolAdapter(unifiedRouter.poolAdapter(pools_[i])).fee(pools_[i]);
        }
    }
}
