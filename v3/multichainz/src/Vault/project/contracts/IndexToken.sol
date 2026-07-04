// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

/**
 * @title MCZ-INDEX Share Token (single-chain v1)
 * @notice Minted/burned by Vault to represent proportional NAV ownership.
 * @dev Future: upgrade to OFT via LayerZero / CCIP wrapper, keep symbol/name stable.
 */
contract IndexToken is ERC20, AccessControl {
    bytes32 public constant VAULT_ROLE = keccak256("VAULT_ROLE");

    constructor(
        string memory name_,
        string memory symbol_,
        address admin_
    ) ERC20(name_, symbol_) {
        _grantRole(DEFAULT_ADMIN_ROLE, admin_);
    }

    function mint(address to, uint256 amount) external onlyRole(VAULT_ROLE) {
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) external onlyRole(VAULT_ROLE) {
        _burn(from, amount);
    }
}
