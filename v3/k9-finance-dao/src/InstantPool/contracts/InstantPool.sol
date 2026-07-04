// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";

import "./interfaces/IInstantPool.sol";

contract InstantPool is IInstantPool, AccessControlUpgradeable, PausableUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    bytes32 public constant PAUSE_ROLE = keccak256("PAUSE_ROLE");
    bytes32 public constant UNPAUSE_ROLE = keccak256("UNPAUSE_ROLE");
    bytes32 public constant WITHDRAWER_ROLE = keccak256("WITHDRAWER_ROLE");

    function initialize(address _dao, address _knBONE) external initializer {
        __AccessControl_init();
        __Pausable_init();
        _grantRole(DEFAULT_ADMIN_ROLE, _dao);
        _grantRole(PAUSE_ROLE, _dao);
        _grantRole(UNPAUSE_ROLE, _dao);
        _grantRole(WITHDRAWER_ROLE, _knBONE);
    }

    function withdraw(IERC20Upgradeable token, address receiver, uint256 amount) external whenNotPaused onlyRole(WITHDRAWER_ROLE) {
        token.safeTransfer(receiver, amount);
    }

    function pause() external onlyRole(PAUSE_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(UNPAUSE_ROLE) {
        _unpause();
    }
}
