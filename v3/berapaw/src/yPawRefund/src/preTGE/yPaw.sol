// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { ERC20 } from "@openzeppelin-contracts-5.1.0/token/ERC20/ERC20.sol";
import { AccessControl } from "@openzeppelin-contracts-5.1.0/access/AccessControl.sol";

/**
 * @title Pre-TGE Yeet Paw Token Contract (yPAW)
 * @notice Pre-TGE BeraPaw governance token contract with transferability controls.
 * @dev Inherits from PrePaw with additional transfer restrictions and whitelist functionality.
 */
contract yPaw is ERC20, AccessControl {
    error MaxSupplyReached();
    error TransfersDisabled();
    error InvalidAddress();

    uint256 constant MAX_SUPPLY = 10_000_000 ether;

    bytes32 constant ROLE_GOD = keccak256("ROLE_GOD");
    bytes32 constant ROLE_MINTER = keccak256("ROLE_MINTER");
    bytes32 constant ROLE_BURNER = keccak256("ROLE_BURNER");
    bytes32 constant ROLE_TRANSFER = keccak256("ROLE_TRANSFER");

    bool public transfersEnabled;
    mapping(address => bool) public whitelistedRecipients;

    event TransfersToggled(bool enabled);

    event WhitelistUpdated(address indexed recipient, bool whitelisted);

    constructor(address _owner) ERC20("Pre-TGE Yeet Paw", "yPAW") AccessControl() {
        _setRoleAdmin(ROLE_GOD, ROLE_GOD);
        _setRoleAdmin(ROLE_MINTER, ROLE_GOD);
        _setRoleAdmin(ROLE_BURNER, ROLE_GOD);
        _setRoleAdmin(ROLE_TRANSFER, ROLE_GOD);
        _grantRole(ROLE_GOD, _owner);

        transfersEnabled = false;
    }

    function mint(address to, uint256 amount) public onlyRole(ROLE_MINTER) {
        require(totalSupply() + amount <= MAX_SUPPLY, MaxSupplyReached());
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) public onlyRole(ROLE_BURNER) {
        _burn(from, amount);
    }

    function setTransfersEnabled(bool enabled) external onlyRole(ROLE_GOD) {
        transfersEnabled = enabled;
        emit TransfersToggled(enabled);
    }

    function setWhitelistedRecipients(
        address[] calldata recipients,
        bool whitelisted
    )
        external
        onlyRole(ROLE_GOD)
    {
        for (uint256 i = 0; i < recipients.length; i++) {
            if (recipients[i] == address(0)) revert InvalidAddress();
            whitelistedRecipients[recipients[i]] = whitelisted;
            emit WhitelistUpdated(recipients[i], whitelisted);
        }
    }

    function isTransferAllowed(address to) public view returns (bool) {
        if (whitelistedRecipients[to]) {
            return true;
        }

        return transfersEnabled;
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        if (hasRole(ROLE_TRANSFER, msg.sender)) {
            return super.transfer(to, amount);
        }

        if (!isTransferAllowed(to)) {
            revert TransfersDisabled();
        }

        return super.transfer(to, amount);
    }

    function transferFrom(address from, address to, uint256 amount) public override returns (bool) {
        if (hasRole(ROLE_TRANSFER, msg.sender)) {
            return super.transferFrom(from, to, amount);
        }

        if (!isTransferAllowed(to)) {
            revert TransfersDisabled();
        }

        return super.transferFrom(from, to, amount);
    }
}
