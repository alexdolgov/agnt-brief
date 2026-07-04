// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IAuthorizationProvider } from "./IAuthorizationProvider.sol";

/// @author Ryley Kimmel <ryley@hlwgroup.dev>
/// @notice Interface that defines authorization functionalities for upgradable contracts. Utilizes the Diamond Storage pattern.
/// @dev Inspired by ds-auth (https://github.com/dapphub/ds-auth/) and solmate (https://github.com/transmissions11/solmate/)
interface IAuthorizable {
    /// @notice Emitted when the authorization provider is updated
    /// @param caller The address of the caller who updated the provider
    /// @param newAuthorizationProvider The new authorization provider
    event AuthorizationProviderUpdated(address indexed caller, IAuthorizationProvider indexed newAuthorizationProvider);

    /// @notice Error to be thrown if the caller is unauthorized
    error Authorizable__Unauthorized();

    /// @notice Error to be thrown if no authorization provider is set
    error Authorizable__NoAuthorizationProvider();

    /// @notice Updates the authorization provider
    /// @param newAuthorizationProvider The new authorization provider to be set
    function setAuthorizationProvider(IAuthorizationProvider newAuthorizationProvider) external;
}
