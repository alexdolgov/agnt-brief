// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {Create2} from "@openzeppelin/contracts/utils/Create2.sol";

import {BaseFactory} from "./BaseFactory.sol";
import {Account} from "../Account.sol";

contract AccountFactory is BaseFactory {
    /**
     *
     *  CUSTOM ERRORS
     *
     */
    error AccountFactory__AccountAddressMismatch();

    /**
     *
     *  EVENTS
     *
     */
    event AccountDeployed(
        address indexed account,
        address indexed initialOwner,
        address sessionAccount,
        address agent,
        address[] subAccounts
    );

    /**
     *
     *  STORAGE
     *
     */
    mapping(address => bool) private _isDeployedAccount;

    /**
     *
     *  CONSTRUCTOR
     *
     */
    constructor(address initialOwner) BaseFactory(initialOwner) {}

    /**
     *
     *  VIEW FUNCTIONS
     *
     */

    /**
     * @notice Computes the CREATE2 address for an Account deployment with bootstrap support.
     * @dev Uses a salt derived from the current per-owner nonce and chainId only.
     *      The full Account configuration still affects the CREATE2 address through the initCode hash below.
     *      Do not change the salt formula without accepting different addresses for future Account deployments.
     */
    function getAccountCreate2Address(
        address initialOwner,
        address sessionAccount,
        address agent,
        address[] memory subAccounts,
        address bootstrapAuthority
    ) external view returns (address) {
        bytes32 salt = _computeSalt(initialOwner);
        bytes memory initCode = abi.encodePacked(
            type(Account).creationCode, abi.encode(initialOwner, sessionAccount, agent, subAccounts, bootstrapAuthority)
        );
        return Create2.computeAddress(salt, keccak256(initCode));
    }

    /**
     * @notice Checks if an account is deployed.
     */
    function isAccountDeployed(address account) external view returns (bool) {
        return _isDeployedAccount[account];
    }

    /**
     *
     *  EXTERNAL FUNCTIONS
     *
     */
    function deployAccount(
        address initialOwner,
        address sessionAccount,
        address agent,
        address[] memory subAccounts,
        address bootstrapAuthority,
        address expectedAccountAddress
    ) external onlyAuthorizedDeployer returns (address) {
        bytes32 salt = _computeSalt(initialOwner);

        address account =
            address(new Account{salt: salt}(initialOwner, sessionAccount, agent, subAccounts, bootstrapAuthority));
        // Prevents deployment of an Account at a different address than expected,
        // potentially due to multiple authorized deployers front-running each other.
        require(account == expectedAccountAddress, AccountFactory__AccountAddressMismatch());

        nonceByOwner[initialOwner]++;
        _isDeployedAccount[account] = true;

        emit AccountDeployed(account, initialOwner, sessionAccount, agent, subAccounts);

        return account;
    }

    /**
     *
     *  INTERNAL FUNCTIONS
     *
     */
    /// @dev AccountFactory intentionally salts only by per-owner nonce and chainId.
    ///      Deployment parameters are already committed by the Account initCode hash.
    function _computeSalt(address initialOwner) internal view returns (bytes32) {
        return keccak256(abi.encode(nonceByOwner[initialOwner], block.chainid));
    }
}
