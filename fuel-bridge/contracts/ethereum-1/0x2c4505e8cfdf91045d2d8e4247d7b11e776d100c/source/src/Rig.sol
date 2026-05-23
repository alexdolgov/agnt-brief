// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {MulticallUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/MulticallUpgradeable.sol";

import {ISequencerInterface} from "./interfaces/ISequencerInterface.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IRig} from "./interfaces/IRig.sol";

/// @notice Rig contract.
contract Rig is
    IRig,
    Initializable,
    UUPSUpgradeable,
    AccessControlUpgradeable,
    PausableUpgradeable,
    MulticallUpgradeable
{
    /// @notice A random constant used to identify addresses with the permission of a 'guardian'.
    ///         Guardian has admin access to pausing functions.
    /// @dev Can be set to any address, which may execute calls immediately.
    bytes32 public constant GUARDIAN_ROLE = keccak256("GUARDIAN_ROLE");

    /// @notice A random constant used to identify addresses with the permission of a 'operator'.
    ///         Has access to functions that manages the network.
    /// @dev Can be set to any address, which may execute calls immediately.
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

    /// @notice The deployed Sequencer Interface contract handling the bridge between Ethereum to Fuel Sequencer.
    ISequencerInterface public sequencerInterface;

    /// @notice The Fuel token.
    IERC20 public fuelToken;

    /// @notice The RIG Treasury. Holds the fees obtained by the protocol.
    address public rigTreasury;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    struct InitParameters {
        address sequencerInterface;
        address fuelToken;
    }

    function initialize(InitParameters calldata _params) external initializer {
        __AccessControl_init();
        __UUPSUpgradeable_init();
        __Pausable_init();
        __Multicall_init();

        _grantRole(DEFAULT_ADMIN_ROLE, _msgSender());

        if (_params.sequencerInterface == address(0)) revert InvalidSequencerInterface();
        if (_params.fuelToken == address(0)) revert InvalidFuelToken();

        sequencerInterface = ISequencerInterface(_params.sequencerInterface);
        fuelToken = IERC20(_params.fuelToken);
    }

    function VERSION() external pure virtual returns (string memory) {
        return "0.1.0";
    }

    // ----------- ADMIN FUNCTIONS

    function _authorizeUpgrade(address newImplementation) internal virtual override onlyRole(DEFAULT_ADMIN_ROLE) {}

    /// @notice Sets the Rig Treasury.
    function setRigTreasury(address treasury) external whenNotPaused onlyRole(DEFAULT_ADMIN_ROLE) {
        if (treasury == address(0)) revert InvalidRigTreasury();
        rigTreasury = treasury;
        emit RigTreasurySet(treasury);
    }

    // ----------- GUARDIAN FUNCTIONS

    /// @notice Freezes all contract functionality.
    function pause() public onlyRole(GUARDIAN_ROLE) {
        _pause();
    }

    /// @notice Unfreezes all contract functionality.
    function unpause() public onlyRole(GUARDIAN_ROLE) {
        _unpause();
    }

    // ----------- OPERATOR FUNCTIONS

    /// @notice Deposits tokens into the Sequencer chain.
    /// @param amount The amount of tokens to deposit.
    function deposit(uint256 amount) external whenNotPaused onlyRole(OPERATOR_ROLE) {
        fuelToken.approve(address(sequencerInterface), amount);
        sequencerInterface.deposit(amount);
    }

    /// @notice Delegates a specified amount of tokens found in the sequencer chain to a validator.
    ///         The transaction will not fail if contract does not have enough tokens but will fail on
    ///         the Sequencer chain.
    /// @param amount The amount of tokens to delegate.
    /// @param validator The address of the validator.
    function delegate(uint256 amount, address validator) external whenNotPaused onlyRole(OPERATOR_ROLE) {
        sequencerInterface.delegate(amount, validator);
    }

    /// @notice Deposits and delegates a specified amount of tokens found in the sequencer chain to a validator.
    /// @param amount The amount of tokens to delegate.
    /// @param validator The address of the validator.
    function depositAndDelegate(uint256 amount, address validator) external whenNotPaused onlyRole(OPERATOR_ROLE) {
        fuelToken.approve(address(sequencerInterface), amount);
        sequencerInterface.depositAndDelegate(amount, validator);
    }

    /// @notice Undelegates and initiates the unbonding period on the Sequencer chain.
    ///         The transaction will not fail if contract does not have enough tokens but will fail on
    ///         the Sequencer chain.
    /// @param amount The amount of tokens to unbond.
    /// @param validator The Sequencer Validator Address to unbond from.
    function unbond(uint256 amount, address validator) external whenNotPaused onlyRole(OPERATOR_ROLE) {
        sequencerInterface.unbond(amount, validator);
    }

    /// @notice Claim the rewards earned through staking with a validator.
    /// @param validator The Sequencer Validator Address to claim rewards from.
    function claimRewards(address validator) external whenNotPaused onlyRole(OPERATOR_ROLE) {
        sequencerInterface.claimRewards(validator);
    }

    /// @notice Transfer funds in the sequencer.
    ///         Warning: This function should only be used to transfer the fees obtained by the protocol.
    ///                  It is not possible to check the amount to transfer in the contract level, thus
    ///                  it is up to the operator to specify the amount.
    /// @param amount The amount of token to transfer.
    function transfer(uint256 amount) external whenNotPaused onlyRole(OPERATOR_ROLE) {
        if (rigTreasury == address(0)) revert RigTreasuryNotSet();
        sequencerInterface.transfer(rigTreasury, amount);
    }
}
