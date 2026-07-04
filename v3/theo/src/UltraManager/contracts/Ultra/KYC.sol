// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./interfaces/IKYC.sol";
import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";

/**
 * @title KYCUltra Contract
 * @notice This contract manages KYC (Know Your Customer) verification for the Ultra token system
 * @dev Inherits from IKYC and AccessControlEnumerable to handle KYC status and role-based access control
 */
contract KYCUltra is IKYC, AccessControlEnumerable {
    bytes32 public constant MINTER_ADMIN = keccak256("MINTER_ADMIN");
    mapping(address => User) public users;
    string public whitelistName;
    
    struct ExternalKYCContract {
        address contractAddress;
        bytes4 functionSelector;
    }

    ExternalKYCContract[] public externalKYCContracts;

    event ExternalKYCContractAdded(address indexed contractAddress, bytes4 functionSelector);
    event ExternalKYCContractRemoved(address indexed contractAddress, bytes4 functionSelector);

    /**
     * @notice Initializes the KYC contract with a whitelist name and admin roles
     * @dev Sets up the initial state with minter and default admin roles
     * @param _whitelistName Name of the whitelist for identification
     * @param minterAdmin Address that will receive the MINTER_ADMIN role
     * @param defaultAdmin Address that will receive the DEFAULT_ADMIN_ROLE
     */
    constructor(string memory _whitelistName, address minterAdmin, address defaultAdmin) {
        whitelistName = _whitelistName;
        _grantRole(MINTER_ADMIN, minterAdmin);
        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
    }

    /**
     * @notice Adds an external KYC contract to check for KYC status
     * @dev Can only be called by accounts with DEFAULT_ADMIN_ROLE
     * @param kycContract Address of the external KYC contract
     * @param functionSelector Function selector to call on the external contract
     */
    function addExternalKYCContract(address kycContract, bytes4 functionSelector)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        require(kycContract != address(0), "Invalid address");
        externalKYCContracts.push(
            ExternalKYCContract({
                contractAddress: kycContract,
                functionSelector: functionSelector
            })
        );
        emit ExternalKYCContractAdded(kycContract, functionSelector);
    }

    /**
     * @notice Removes an external KYC contract from the list
     * @dev Can only be called by accounts with DEFAULT_ADMIN_ROLE
     * @param index Index of the external KYC contract to remove
     */
    function removeExternalKYCContract(uint256 index) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(index < externalKYCContracts.length, "Index out of bounds");
        ExternalKYCContract memory removedContract = externalKYCContracts[index];
        externalKYCContracts[index] = externalKYCContracts[externalKYCContracts.length - 1];
        externalKYCContracts.pop();
        emit ExternalKYCContractRemoved(removedContract.contractAddress, removedContract.functionSelector);
    }

    /**
     * @notice Retrieves the list of external KYC contracts
     * @return Array of ExternalKYCContract structs containing contract addresses and function selectors
     */
    function getExternalKYCContracts() external view returns (ExternalKYCContract[] memory) {
        return externalKYCContracts;
    }

    /**
     * @notice Grants KYC status to a single user
     * @dev Can only be called by accounts with MINTER_ADMIN role
     * @param user Address of the user to grant KYC status
     */
    function grantKyc(address user) external onlyRole(MINTER_ADMIN) {
        _grantKyc(user);
    }

    /**
     * @notice Grants KYC status to multiple users in a single transaction
     * @dev Can only be called by accounts with MINTER_ADMIN role. Limited to 256 users per call
     * @param _users Array of addresses to grant KYC status
     */
    function grantKycInBulk(address[] calldata _users) external onlyRole(MINTER_ADMIN) {
        require(_users.length <= 256, "KYC: too many users");
        for (uint256 i = 0; i < _users.length; i++) {
            _grantKyc(_users[i]);
        }
    }

    /**
     * @notice Internal function to grant KYC status to a user
     * @dev Emits a GrantKyc event
     * @param user Address of the user to grant KYC status
     */
    function _grantKyc(address user) internal {
        users[user].isKYC = true;
        emit GrantKyc(user);
    }

    /**
     * @notice Revokes KYC status from a single user
     * @dev Can only be called by accounts with MINTER_ADMIN role
     * @param user Address of the user to revoke KYC status
     */
    function revokeKyc(address user) external onlyRole(MINTER_ADMIN) {
        _revokeKyc(user);
    }

    /**
     * @notice Revokes KYC status from multiple users in a single transaction
     * @dev Can only be called by accounts with MINTER_ADMIN role. Limited to 256 users per call
     * @param _users Array of addresses to revoke KYC status
     */
    function revokeKycInBulk(address[] calldata _users) external onlyRole(MINTER_ADMIN) {
        require(_users.length <= 256, "KYC: too many users");
        for (uint256 i = 0; i < _users.length; i++) {
            _revokeKyc(_users[i]);
        }
    }

    /**
     * @notice Internal function to revoke KYC status from a user
     * @dev Emits a RevokeKyc event
     * @param user Address of the user to revoke KYC status
     */
    function _revokeKyc(address user) internal {
        users[user].isKYC = false;
        emit RevokeKyc(user);
    }

    /**
     * @notice Bans a user from the system
     * @dev Can only be called by accounts with MINTER_ADMIN role
     * @param user Address of the user to ban
     */
    function ban(address user) external onlyRole(MINTER_ADMIN) {
        _ban(user, true);
    }

    /**
     * @notice Internal function to set the ban status of a user
     * @dev Emits a Banned event
     * @param user Address of the user to ban/unban
     * @param status True to ban, false to unban
     */
    function _ban(address user, bool status) internal {
        users[user].isBanned = status;
        emit Banned(user, status);
    }

    /**
     * @notice Checks if a user has valid KYC status
     * @dev Checks internal KYC status and external KYC contracts
     * @param user Address of the user to check
     * @return bool True if the user has valid KYC status and is not banned
     */
    function isKYC(address user) external view override returns (bool) {
        if (users[user].isBanned) {
            return false;
        }
        if (users[user].isKYC) {
            return true;
        }
        if (_isApprovedInExternalContracts(user)) {
            return true;
        }
        return false;
    }

    /**
     * @notice Internal function to check if a user is approved in any external KYC contracts
     * @dev Calls each external contract using their specified function selector
     * @param user Address of the user to check
     * @return bool True if the user is approved in any external KYC contract
     */
    function _isApprovedInExternalContracts(address user) internal view returns (bool) {
        for (uint256 i = 0; i < externalKYCContracts.length; i++) {
            ExternalKYCContract storage externalKYC = externalKYCContracts[i];
            (bool success, bytes memory result) = externalKYC.contractAddress.staticcall(
                abi.encodeWithSelector(externalKYC.functionSelector, user)
            );
            if (success && result.length >= 32) {
                bool approved = abi.decode(result, (bool));
                if (approved) {
                    return true;
                }
            }
        }
        return false;
    }

    /**
     * @notice Checks KYC status for multiple users in a single call
     * @dev Limited to 256 users per call
     * @param _users Array of addresses to check
     * @return Array of boolean values indicating KYC status for each user
     */
    function isKYCBulk(address[] calldata _users) external view returns (bool[] memory) {
        require(_users.length <= 256, "KYC: too many users");

        bool[] memory results = new bool[](_users.length);

        for (uint256 i = 0; i < _users.length; i++) {
            results[i] = users[_users[i]].isKYC;
        }

        return results;
    }

    /**
     * @notice Checks if a user is banned
     * @param user Address of the user to check
     * @return bool True if the user is banned
     */
    function isBanned(address user) external view override returns (bool) {
        return users[user].isBanned;
    }

    /**
     * @notice View function that reverts if the user is banned
     * @param user Address of the user to check
     */
    function onlyNotBanned(address user) external view {
        require(!users[user].isBanned, "KYC: user is banned");
    }

    /**
     * @notice View function that reverts if the user doesn't have valid KYC status
     * @param user Address of the user to check
     */
    function onlyKyc(address user) external view {
        require(
            users[user].isKYC || _isApprovedInExternalContracts(user),
            "KYC: user is not KYC"
        );
    }
}
