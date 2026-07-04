// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./interfaces/IKYC.sol";
import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";


contract KYC is IKYC, AccessControlEnumerable {
   bytes32 public constant MINTER_ADMIN = keccak256("MINTER_ADMIN");
    mapping(address => User) public users;

   constructor(
        address minterAdmin,
        address defaultAdmin
   ) {
        _grantRole(MINTER_ADMIN, minterAdmin);
        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
    }
        // Override grantRole to restrict to DEFAULT_ADMIN_ROLE
    function grantRole(bytes32 role, address account) public override(AccessControl, IAccessControl) onlyRole(DEFAULT_ADMIN_ROLE) {
        super.grantRole(role, account);
    }

    // Override revokeRole to restrict to DEFAULT_ADMIN_ROLE
    function revokeRole(bytes32 role, address account) public override(AccessControl, IAccessControl) onlyRole(DEFAULT_ADMIN_ROLE) {
        super.revokeRole(role, account);
    }

    modifier onlyManager() {
        require(hasRole(MINTER_ADMIN, _msgSender()), "KYC: Caller is not a manager");
        _;
    }
    // Grant KYC
    function grantKyc(address user) external onlyManager {
        _grantKyc(user);
    }

    function grantKycInBulk(address[] calldata _users) external onlyManager {
        require(_users.length <= 256, "KYC: too many users");
        for (uint256 i = 0; i < _users.length; i++) {
            _grantKyc(_users[i]);
        }
    }

    function _grantKyc(address user) internal {
        users[user].isKYC = true;
        emit GrantKyc(user);
    }

    // Revoke KYC
    function revokeKyc(address user) external onlyManager {
        _revokeKyc(user);
    }

    function revokeKycInBulk(address[] calldata _users) external onlyManager {
        require(_users.length <= 256, "KYC: too many users");
        for (uint256 i = 0; i < _users.length; i++) {
            _revokeKyc(_users[i]);
        }
    }

    function _revokeKyc(address user) internal {
        users[user].isKYC = false;
        emit RevokeKyc(user);
    }

    // Ban
    function ban(address user) external onlyManager {
        _ban(user, true);
    }

    function _ban(address user, bool status) internal {
        users[user].isBanned = status;
        emit Banned(user, status);
    }

    // By Interface
    function isKYC(address user) external view override returns (bool) {
        return users[user].isKYC && !users[user].isBanned;
    }

    function isKYCBulk(address[] calldata _users) external view returns (bool[] memory) {
    require(_users.length <= 256, "KYC: too many users");

    bool[] memory results = new bool[](_users.length);

    for (uint256 i = 0; i < _users.length; i++) {
        results[i] = users[_users[i]].isKYC;
    }

    return results;
}

    function isBanned(address user) external view override returns (bool) {
        return users[user].isBanned;
    }

    function onlyNotBanned(address user) external view {
        require(!users[user].isBanned, "KYC: user is banned");
    }
    function onlyKyc(address user) external view {
        require(users[user].isKYC, "KYC: user is not KYC");
    }
}
