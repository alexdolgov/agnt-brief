// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import {IDVNPublisherFactory} from "../interfaces/IDVNPublisherFactory.sol";

import {DVNPublisher} from "../publisher/DVNPublisher.sol";

import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";

/// @title DVNPublisherFactory
/// @notice Factory for creating DVN publishers
contract DVNPublisherFactory is IDVNPublisherFactory, Ownable2Step {
    /// @notice The implementation address of the DVN publisher
    address public implementation;

    /// @notice Initializes the factory
    /// @param owner_ The factory  owner
    /// @param implementation_ The implementation address
    constructor(address owner_, address implementation_) Ownable(owner_) {
        implementation = implementation_;
    }

    /// @inheritdoc IDVNPublisherFactory
    function createDVNPublisher(address strategy_, uint256 threshold_) external returns (address publisher) {
        bytes memory initData = abi.encodeCall(DVNPublisher.initialize, (strategy_, threshold_));

        publisher = address(new ERC1967Proxy(implementation, initData));

        emit DVNPublisherCreated(publisher);
    }

    /// @inheritdoc IDVNPublisherFactory
    function setImplementation(address implementation_) external onlyOwner {
        emit ImplementationSet(implementation, implementation_);
        implementation = implementation_;
    }
}
