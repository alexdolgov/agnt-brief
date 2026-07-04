// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {OFTUpgradeable, ERC20Upgradeable} from "@layerzerolabs/oft-evm-upgradeable/contracts/oft/OFTUpgradeable.sol";
import {ERC20AuthorizationUpgradeable} from "../extensions/ERC20AuthorizationUpgradeable.sol";
import {
    ERC20PausableUpgradeable
} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PausableUpgradeable.sol";
import {
    Ownable2StepUpgradeable,
    OwnableUpgradeable
} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/**
 * @title OFTExtended
 * @dev A ready-to-deploy extended LayerZero OFT with additional features such as pausing, voting, and ownership management.
 *
 * Inherits from multiple OpenZeppelin upgradeable contracts to provide a comprehensive token implementation.
 */
contract OFTExtended is
    OFTUpgradeable,
    ERC20AuthorizationUpgradeable,
    ERC20PausableUpgradeable,
    Ownable2StepUpgradeable,
    UUPSUpgradeable
{
    error OperationNotAllowed();

    /**
     * @dev Constructor for the parent OFT contract.
     * @param _lzEndpoint The LayerZero endpoint address.
     */
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(address _lzEndpoint) OFTUpgradeable(_lzEndpoint) {
        _disableInitializers();
    }

    /**
     * @dev Initializes the contract
     * @param name_ The name of the token
     * @param symbol_ The symbol of the token
     * @param initialOwner The owner of the contract
     */
    function initialize(string memory name_, string memory symbol_, address initialOwner) public virtual initializer {
        __OFT_init(name_, symbol_, initialOwner);
        __ERC20Permit_init(name_);
        __ERC20Pausable_init();

        __UUPSUpgradeable_init();

        __Ownable_init(initialOwner);
    }

    /*//////////////////////////////////////////////////////////////
        Admin functionality
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Allows owner to pause the contract
     * @notice When paused, deposits, withdrawals, and donations are disabled
     *
     * - Can only be called by owner or operator
     * - Emits Paused event
     */
    function pause() external virtual onlyOwner {
        _pause();
    }

    /**
     * @dev Allows owner to unpause the contract
     * @notice When unpaused, deposits, withdrawals, and donations are enabled again
     *
     * - Can only be called by owner or operator
     * - Emits Unpaused event
     */
    function unpause() external virtual onlyOwner {
        _unpause();
    }

    /*//////////////////////////////////////////////////////////////
        Ownership Safety
    //////////////////////////////////////////////////////////////*/

    /// @dev Block renounceOwnership to prevent accidental ownership loss.
    function renounceOwnership() public virtual override onlyOwner {
        revert OperationNotAllowed();
    }

    /*//////////////////////////////////////////////////////////////
        Contract upgrades
    //////////////////////////////////////////////////////////////*/

    /// @dev Only the owner (Timelock/multisig) can authorize upgrades.
    function _authorizeUpgrade(address /*newImplementation*/) internal virtual override onlyOwner {}

    /*//////////////////////////////////////////////////////////////
        Required by Solidity
    //////////////////////////////////////////////////////////////*/

    function transferOwnership(address newOwner)
        public
        virtual
        override(OwnableUpgradeable, Ownable2StepUpgradeable)
        onlyOwner
    {
        Ownable2StepUpgradeable.transferOwnership(newOwner);
    }

    function _update(address from, address to, uint256 value)
        internal
        virtual
        override(ERC20PausableUpgradeable, ERC20Upgradeable)
        whenNotPaused
    {
        super._update(from, to, value);
    }

    function _transferOwnership(address newOwner)
        internal
        virtual
        override(OwnableUpgradeable, Ownable2StepUpgradeable)
    {
        Ownable2StepUpgradeable._transferOwnership(newOwner);
    }
}
