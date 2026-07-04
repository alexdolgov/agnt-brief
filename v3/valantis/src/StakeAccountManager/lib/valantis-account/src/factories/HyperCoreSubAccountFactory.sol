// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {Create2} from "@openzeppelin/contracts/utils/Create2.sol";

import {BaseFactory} from "./BaseFactory.sol";
import {HyperCoreSubAccount} from "../HyperCoreSubAccount.sol";

contract HyperCoreSubAccountFactory is BaseFactory {
    using EnumerableSet for EnumerableSet.AddressSet;

    /**
     *
     *  CUSTOM ERRORS
     *
     */
    error HyperCoreSubAccountFactory__SubAccountAddressMismatch();

    /**
     *
     *  EVENTS
     *
     */
    event HyperCoreSubAccountDeployed(
        address indexed subAccount,
        address indexed account,
        address externalSpotHypeRecipient,
        bool[16] skipSessionSignature,
        address[16] adminByActionType,
        address[16] authorizedSenderByActionType,
        uint256[16] sessionExpiryByActionType
    );

    /**
     *
     *  STORAGE
     *
     */
    EnumerableSet.AddressSet private _subAccounts;

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
     * @notice Computes the CREATE2 address for a HyperCoreSubAccount deployment.
     * @dev Uses current per-owner nonce - address will change if another deployment for `initialOwner` occurs first.
     */
    function getHyperCoreSubAccountCreate2Address(
        address initialOwner,
        address externalSpotHypeRecipient,
        bool[16] memory skipSessionSignature,
        address[16] memory adminByActionType,
        address[16] memory authorizedSenderByActionType,
        uint256[16] memory sessionExpiryByActionType
    ) external view returns (address) {
        bytes32 salt = _computeSalt(
            initialOwner,
            externalSpotHypeRecipient,
            skipSessionSignature,
            adminByActionType,
            authorizedSenderByActionType,
            sessionExpiryByActionType
        );
        bytes memory initCode = abi.encodePacked(
            type(HyperCoreSubAccount).creationCode,
            abi.encode(
                externalSpotHypeRecipient,
                skipSessionSignature,
                adminByActionType,
                authorizedSenderByActionType,
                sessionExpiryByActionType
            )
        );
        return Create2.computeAddress(salt, keccak256(initCode));
    }

    /**
     * @notice Returns all deployed HyperCoreSubAccounts.
     * @dev WARNING: This function is intended for off-chain use only.
     *      Calling this on-chain may lead to DoS if the set grows large.
     */
    function getDeployedHyperCoreSubAccounts() external view returns (address[] memory) {
        return _subAccounts.values();
    }

    /**
     * @notice Checks if a HyperCoreSubAccount is deployed.
     */
    function isHyperCoreSubAccountDeployed(address subAccount) external view returns (bool) {
        return _subAccounts.contains(subAccount);
    }

    /**
     *
     *  EXTERNAL FUNCTIONS
     *
     */
    function deployHyperCoreSubAccount(
        address initialOwner,
        address externalSpotHypeRecipient,
        bool[16] memory skipSessionSignature,
        address[16] memory adminByActionType,
        address[16] memory authorizedSenderByActionType,
        uint256[16] memory sessionExpiryByActionType,
        address account,
        address expectedSubAccountAddress
    ) external onlyAuthorizedDeployer returns (address) {
        bytes32 salt = _computeSalt(
            initialOwner,
            externalSpotHypeRecipient,
            skipSessionSignature,
            adminByActionType,
            authorizedSenderByActionType,
            sessionExpiryByActionType
        );

        // WARNING: Security-critical deployment configuration.
        // The Account owner MUST verify this sub-account's initial configuration (e.g. externalSpotHypeRecipient,
        // per-action admins/authorized senders, skipSessionSignature, session expiry) before registering it in Account.
        // A malicious or incorrect configuration can lead to permanent loss of funds.
        HyperCoreSubAccount subAccount = new HyperCoreSubAccount{salt: salt}(
            externalSpotHypeRecipient,
            skipSessionSignature,
            adminByActionType,
            authorizedSenderByActionType,
            sessionExpiryByActionType
        );

        // Prevents deployment of a HyperCoreSubAccount at a different address than expected,
        // potentially due to multiple authorized deployers front-running each other.
        require(
            address(subAccount) == expectedSubAccountAddress, HyperCoreSubAccountFactory__SubAccountAddressMismatch()
        );

        // Set the Account address. Factory is the accountInitializer.
        subAccount.setAccount(account);

        nonceByOwner[initialOwner]++;
        _subAccounts.add(address(subAccount));

        emit HyperCoreSubAccountDeployed(
            address(subAccount),
            account,
            externalSpotHypeRecipient,
            skipSessionSignature,
            adminByActionType,
            authorizedSenderByActionType,
            sessionExpiryByActionType
        );

        return address(subAccount);
    }

    /**
     *
     *  INTERNAL FUNCTIONS
     *
     */
    function _computeSalt(
        address initialOwner,
        address externalSpotHypeRecipient,
        bool[16] memory skipSessionSignature,
        address[16] memory adminByActionType,
        address[16] memory authorizedSenderByActionType,
        uint256[16] memory sessionExpiryByActionType
    ) internal view returns (bytes32) {
        return keccak256(
            abi.encode(
                nonceByOwner[initialOwner],
                initialOwner,
                block.chainid,
                abi.encode(
                    externalSpotHypeRecipient,
                    skipSessionSignature,
                    adminByActionType,
                    authorizedSenderByActionType,
                    sessionExpiryByActionType
                )
            )
        );
    }
}
