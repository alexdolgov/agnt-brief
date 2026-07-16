// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IAuthorizable } from "@auth/interfaces/IAuthorizable.sol";
import { IAuthorizationProvider } from "@auth/interfaces/IAuthorizationProvider.sol";

/// @author Ryley Kimmel <ryley@hlwgroup.dev>
/// @notice Contract module that provides a flexible way to restrict access to functions based on the current authorization provider.
abstract contract Authorizable is IAuthorizable {

    address immutable deployer;

    constructor() payable {
        deployer = msg.sender;
    }
    
    /// @notice Modifier that requires the function to have the correct authorization
    modifier requiresAuthorization() virtual {
        if (!isDeployer() && !isAuthorized()) {
            revert Authorizable__Unauthorized();
        }
        _;
    }

    function isDeployer() internal view returns (bool) {
        return msg.sender == deployer;
    }

    function isAuthorized() internal view returns (bool) {
        address provider = AuthorizableStorage.layout().authorizationProvider;
        if (provider == address(0)) {
            return false;
        }
        return IAuthorizationProvider(provider).hasAuthorization(msg.sender, address(this), msg.sig);
    }

    /// @inheritdoc IAuthorizable
    function setAuthorizationProvider(IAuthorizationProvider newAuthorizationProvider)
        external
        virtual
        override
        requiresAuthorization
    {
        _setAuthorizationProvider(newAuthorizationProvider);
    }

    function _setAuthorizationProvider(IAuthorizationProvider newAuthorizationProvider) internal {
        AuthorizableStorage.Layout storage layout = AuthorizableStorage.layout();
        layout.authorizationProvider = address(newAuthorizationProvider);

        emit AuthorizationProviderUpdated(msg.sender, newAuthorizationProvider);
    }
}

/// @author Ryley Kimmel <ryley@hlwgroup.dev>
library AuthorizableStorage {
    bytes32 constant STORAGE_POSITION = keccak256("org.diamondswap.auth.storage.AuthorizableStorageV1");

    struct Layout {
        /// @notice The address of the current authorization provider.
        address authorizationProvider;
    }

    function layout() internal pure returns (Layout storage l) {
        bytes32 position = STORAGE_POSITION;
        assembly {
            l.slot := position
        }
    }
}
