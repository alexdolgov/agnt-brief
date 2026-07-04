// SPDX-License-Identifier: MIT
//
//        ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██╗███████╗
//        ██╔══██╗██║   ██║████╗  ██║██╔══██╗██║██╔════╝
//        ██████╔╝██║   ██║██╔██╗ ██║██║  ██║██║█████╗  
//        ██╔══██╗██║   ██║██║╚██╗██║██║  ██║██║██╔══╝  
//        ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║███████╗
//        ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝
//
//        Cross-Chain Yield Aggregation Protocol
//
pragma solidity 0.8.34;

import {Initializable} from "lib/openzeppelin-contracts/contracts/proxy/utils/Initializable.sol";
import {AccountBase} from "./base/AccountBase.sol";

/// @title Account
/// @author Bundie Team
/// @notice Beacon proxy implementation for user portfolio accounts
/// @dev Concrete account implementation deployed via beacon proxy pattern for upgradeability.
///      Each user has exactly one Account deployed through AccountManager.
///      Implementation cannot be initialized directly — only proxies can be initialized.
contract Account is Initializable, AccountBase {
    // ========================== Constructor ==========================

    /// @notice Initialize account implementation contract
    /// @dev Constructor disables initializers to prevent the implementation from being initialized directly.
    /// @param _routerManager RouterManager address for strategy resolution
    /// @param _factory AccountManager (factory) address for access control
    constructor(address _routerManager, address _factory) AccountBase(_routerManager, _factory) {
        _disableInitializers();
    }

    // ========================== Initialization ==========================

    /// @notice Initialize account proxy for a user
    /// @dev Called by AccountManager during account creation. Sets the user and transfers ownership to factory.
    ///      user: address that can perform account operations. owner: factory with admin control.
    /// @param _user Address of user who owns the account funds
    function initialize(address _user) external initializer {
        user = _user;
        _transferOwnership(FACTORY);
    }
}
