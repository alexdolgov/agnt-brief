// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import {
    OwnableUpgradeable
} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {
    ERC165Upgradeable
} from "@openzeppelin/contracts-upgradeable/utils/introspection/ERC165Upgradeable.sol";
import "./IPaymentReceiver.sol";
import "../../Errors/Errors.sol";
import "./WETHPaymentReceiverEzETHStorage.sol";
import { IEzRVault } from "../../EzRVault/IEzRVault.sol";

contract ERC20PaymentReceiverEzRVault is OwnableUpgradeable, ERC165Upgradeable, IPaymentReceiver {
    // immutables
    /// @dev address of flow vault where ERC20 will be deposited - underlying token is the asset that will be processed
    IEzRVault public immutable ezRVault;

    /// @dev Prevents implementation contract from being initialized.
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(IEzRVault _ezRVault) {
        // Check inputs
        if (address(_ezRVault) == address(0)) revert InvalidZeroInput();

        // Set variables
        ezRVault = _ezRVault;
        _disableInitializers();
    }

    /**
     * @notice  Initialize the contract
     * @dev     initialize ownership and variables
     */
    function initialize() public initializer {
        // Initialize inherited classes
        __Ownable_init();
    }

    /**
     * @notice  Checks whether the contract supports the given interface
     * @dev     Only the interfaceId of IPaymentReceiver is supported
     * @param   interfaceId  The interface identifier, as specified in ERC-165
     * @return  bool  True if the contract implements `interfaceId` and false otherwise
     */
    function supportsInterface(
        bytes4 interfaceId
    ) public view override(ERC165Upgradeable) returns (bool) {
        return
            interfaceId == type(IPaymentReceiver).interfaceId ||
            super.supportsInterface(interfaceId);
    }

    /**
     * @notice  Handles the payment of an ERC20 amount
     * @dev     Takes payment and deposits as incentive into the ezRVault
     * @param   token  The address of the token being paid
     * @return  bool  .
     */
    function processPayment(IERC20 token) external returns (bool) {
        // Verify token matches the vault underlying
        if (token != ezRVault.underlying()) revert InvalidToken();

        // Determine amount to deposit
        uint256 amount = token.balanceOf(address(this));
        if (amount == 0) revert InvalidZeroInput();

        // Approve the ezRVault to spend the token
        token.approve(address(ezRVault), amount);

        // Deposit the incentive into the ezRVault
        ezRVault.depositIncentive(amount);

        return true;
    }
}
