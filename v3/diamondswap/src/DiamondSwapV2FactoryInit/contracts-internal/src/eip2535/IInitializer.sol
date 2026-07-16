// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @dev An interface which represents an initializer contract.
/// @notice This interface is not defined within the EIP-2535 standard, but is a requirement here for
///      the sake of simplicity of deployments using Foundry since Solidity does not support generics or
///      any other way of passing around arbitrary contract types.
/// @author Ryley Kimmel <ryley@hlwgroup.dev>
interface IInitializer { }
