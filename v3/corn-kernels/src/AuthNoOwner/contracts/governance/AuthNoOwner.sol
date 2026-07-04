// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.13;

import {Authority} from "../dependencies/solmate/Auth.sol";

/// @notice Provides a flexible and updatable auth pattern which is completely separate from application logic.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/auth/Auth.sol)
/// @author Modified from Dappsys (https://github.com/dapphub/ds-auth/blob/master/src/auth.sol)
contract AuthNoOwner {
    event AuthorityUpdated(address indexed user, Authority indexed newAuthority);

    Authority private _authority;
    bool private _authorityInitialized;

    /// @notice Modifier to require caller authorization for function execution.
    modifier requiresAuth() virtual {
        require(isAuthorized(msg.sender, msg.sig), "Auth: UNAUTHORIZED");

        _;
    }

    /// @notice Returns the authority contract that controls access permissions.
    /// @return The Authority contract instance.
    function authority() public view returns (Authority) {
        return _authority;
    }

    /// @notice Checks if the authority has been initialized.
    /// @notice The authority can only be initialized once.
    /// @return bool Returns true if the authority has been initialized, false otherwise.
    function authorityInitialized() public view returns (bool) {
        return _authorityInitialized;
    }

    /// @notice Determines if a user is authorized to call a specific function.
    /// @dev Memoizes the authority instance to save gas and checks if the authority allows the call.
    /// @param user The address of the user attempting to call the function.
    /// @param functionSig The signature of the function being called.
    /// @return bool Returns true if the user is authorized to call the function, false otherwise.
    function isAuthorized(address user, bytes4 functionSig) internal view virtual returns (bool) {
        Authority auth = _authority; // Memoizing authority saves us a warm SLOAD, around 100 gas.

        // Checking if the caller is the owner only after calling the authority saves gas in most cases, but be
        // aware that this makes protected functions uncallable even to the owner if the authority is out of order.
        return (address(auth) != address(0) && auth.canCall(user, address(this), functionSig));
    }

    /// @notice Changed constructor to initialize to allow flexiblity of constructor vs initializer use
    /// @notice sets authorityInitiailzed flag to ensure only one use of
    function _initializeAuthority(address newAuthority) internal {
        require(address(_authority) == address(0), "Auth: authority is non-zero");
        require(!_authorityInitialized, "Auth: authority already initialized");

        _authority = Authority(newAuthority);
        _authorityInitialized = true;

        emit AuthorityUpdated(address(this), Authority(newAuthority));
    }
}
