// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { ERC20 } from "@openzeppelin-contracts-5.1.0/token/ERC20/ERC20.sol";
import { AccessControl } from "@openzeppelin-contracts-5.1.0/access/AccessControl.sol";

/**
 * @title Pre-TGE Paw Token Contract
 * @notice Pre-TGE BeraPaw governance token contract.
 */
contract PrePaw is ERC20, AccessControl {
    error MaxSupplyReached();

    uint256 constant MAX_SUPPLY = 15_000_000 ether;

    bytes32 constant ROLE_GOD = keccak256("ROLE_GOD");
    bytes32 constant ROLE_MINTER = keccak256("ROLE_MINTER");
    bytes32 constant ROLE_BURNER = keccak256("ROLE_BURNER");
    bytes32 constant ROLE_TRANSFER = keccak256("ROLE_TRANSFER");

    constructor(address _owner) ERC20("Pre-TGE Paw", "pPAW") AccessControl() {
        _setRoleAdmin(ROLE_GOD, ROLE_GOD);
        _setRoleAdmin(ROLE_MINTER, ROLE_GOD);
        _setRoleAdmin(ROLE_BURNER, ROLE_GOD);
        _setRoleAdmin(ROLE_TRANSFER, ROLE_GOD);
        _grantRole(ROLE_GOD, _owner);
    }

    function mint(address to, uint256 amount) public onlyRole(ROLE_MINTER) {
        require(totalSupply() + amount <= MAX_SUPPLY, MaxSupplyReached());
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) public onlyRole(ROLE_BURNER) {
        _burn(from, amount);
    }

    function transfer(address to, uint256 amount) public override onlyRole(ROLE_TRANSFER) returns (bool) {
        return super.transfer(to, amount);
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    )
        public
        override
        onlyRole(ROLE_TRANSFER)
        returns (bool)
    {
        return super.transferFrom(from, to, amount);
    }
}
