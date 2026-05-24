// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {ERC20PermitUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {AccessControlDefaultAdminRulesUpgradeable} from "@openzeppelin/contracts-upgradeable/access/extensions/AccessControlDefaultAdminRulesUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {ISimpleToken} from "./interfaces/ISimpleToken.sol";

contract SimpleToken is ISimpleToken, Initializable, ERC20PermitUpgradeable, AccessControlDefaultAdminRulesUpgradeable {

    bytes32 public constant SERVICE_ROLE = keccak256("SERVICE_ROLE");

    mapping(bytes32 => bool) private mintIds;
    mapping(bytes32 => bool) private burnIds;

    modifier idempotentMint(bytes32 idempotencyKey) {
        if (mintIds[idempotencyKey]) {
            revert IdempotencyKeyAlreadyExist(idempotencyKey);
        }
        _;
        mintIds[idempotencyKey] = true;
    }

    modifier idempotentBurn(bytes32 idempotencyKey) {
        if (burnIds[idempotencyKey]) {
            revert IdempotencyKeyAlreadyExist(idempotencyKey);
        }
        _;
        burnIds[idempotencyKey] = true;
    }

    function initialize(
        string memory name,
        string memory symbol
    ) public initializer {
        __ERC20_init(name, symbol);

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function mint(address account, uint256 amount) external onlyRole(SERVICE_ROLE) {
        _mint(account, amount);
    }

    function mint(bytes32 idempotencyKey, address account, uint256 amount) external
    onlyRole(SERVICE_ROLE) idempotentMint(idempotencyKey) {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) external onlyRole(SERVICE_ROLE) {
        _burn(account, amount);
    }

    function burn(bytes32 idempotencyKey, address account, uint256 amount) external
    onlyRole(SERVICE_ROLE) idempotentBurn(idempotencyKey) {
        _burn(account, amount);
    }
}
