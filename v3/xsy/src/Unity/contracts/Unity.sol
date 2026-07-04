// DO NOT use delegatecall or selfdestruct
// https://docs.openzeppelin.com/upgrades-plugins/writing-upgradeable#potentially-unsafe-operations

// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity 0.8.24;

import {ERC20PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PausableUpgradeable.sol";
import {ERC20BurnableUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {XSYBaseContract} from "./XSYBaseContract.sol";
import {IUTYReceiver} from "./IUTYReceiver.sol";

contract Unity is XSYBaseContract, ERC20PausableUpgradeable, ERC20BurnableUpgradeable, ReentrancyGuardUpgradeable {
    bytes32 public constant MANAGEMENT_SMART_CONTRACT_ROLE = keccak256("MANAGEMENT_SMART_CONTRACT_ROLE");

    error UnexpectedCall(string functionName);

    event UnityInitialized(address indexed defaultAdmin, address indexed managementContract);

    function initialize(address defaultAdmin, address managementContract) public initializer {
        if (managementContract == address(0)) {
            revert InvalidRoleAddress(managementContract, MANAGEMENT_SMART_CONTRACT_ROLE);
        }

        __XSYBaseContract_init(defaultAdmin);
        __ERC20_init("Unity", "UTY");
        __ERC20Burnable_init();
        __ERC20Pausable_init();
        __ReentrancyGuard_init();

        _grantRole(MANAGEMENT_SMART_CONTRACT_ROLE, managementContract);

        emit UnityInitialized(defaultAdmin, managementContract);
    }

    /**
     * @notice Mint tokens to the given address.
     * @dev Only callable by addresses with the MANAGEMENT_SMART_CONTRACT_ROLE.
     * @param to The recipient address.
     * @param amount The amount to mint. Can be 0 without compomising the transaction.
     */
    function mint(address to, uint256 amount) public onlyRole(MANAGEMENT_SMART_CONTRACT_ROLE) {
        _mint(to, amount);
    }

    /**
     * @notice Burn tokens from the caller's account.
     * @dev Only callable by addresses with the MANAGEMENT_SMART_CONTRACT_ROLE.
     * @param amount The amount to burn. Can be 0 without compomising the transaction.
     */
    function burn(uint256 amount) public override onlyRole(MANAGEMENT_SMART_CONTRACT_ROLE) {
        _burn(_msgSender(), amount);
    }

    /**
     * @notice Burn tokens from a specified account, deducting from the caller's allowance.
     * @dev Only callable by addresses with the MANAGEMENT_SMART_CONTRACT_ROLE.
     */
    function burnFrom(
        address /*account*/,
        uint256 /*amount*/
    ) public view override onlyRole(MANAGEMENT_SMART_CONTRACT_ROLE) {
        revert UnexpectedCall("burnFrom");
    }

    /**
     * @dev Calls the receiver hook on `to` if it is a contract with the MANAGEMENT_SMART_CONTRACT_ROLE.
     */
    function _callReceiverHook(address from, address to, uint256 value) internal {
        // EOA have address.code == 0; MANAGEMENT_SMART_CONTRACT_ROLE cannot be null
        if (to.code.length > 0 && hasRole(MANAGEMENT_SMART_CONTRACT_ROLE, to)) {
            try IUTYReceiver(to).onUTYTokenReceived(from, to, value) {} catch (bytes memory reason) {
                if (reason.length == 0) {
                    revert("UTY: UTYReceiver hook failed");
                } else {
                    assembly ("memory-safe") {
                        revert(add(32, reason), mload(reason))
                    }
                }
            }
        }
    }

    function pause() public onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    function unpause() public onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    /**
     * @dev Override of the token update function that incorporates both pause and reentrancy protections,
     * and additionally calls the receiver hook after the state update.
     */
    function _update(
        address from,
        address to,
        uint256 value
    ) internal virtual override(ERC20PausableUpgradeable, ERC20Upgradeable) whenNotPaused {
        ERC20PausableUpgradeable._update(from, to, value);
        _callReceiverHook(from, to, value);
    }
}
