pragma solidity 0.8.19;

// SPDX-License-Identifier: UNLICENSED


/// @title The interface of the zkSync contract, responsible for the main zkSync logic.
/// @author Matter Labs
/// @custom:security-contact security@matterlabs.dev
interface IBase {
    /// @return Returns facet name.
    function getName() external view returns (string memory);
}
