// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { IERC20 } from "@openzeppelin/contracts/interfaces/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract TokenTopupTool is Initializable, AccessControlUpgradeable, UUPSUpgradeable {
    using SafeERC20 for IERC20;

    error InvalidImplementationAddress(address implementation);
    error InvalidAddress();
    error InvalidAmount();
    error InvalidPeriod();
    error TopupPeriodNotElapsed();
    error InsufficientTreasuryBalance();
    error ReceiverNotConfigured(uint256 receiverId);

    bytes32 public constant UPGRADE_ROLE = keccak256("UPGRADE_ROLE");
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

    struct ReceiverConfig {
        address receiver;
        address treasury;
        address token;
        uint256 amount;
        uint256 period;
        uint256 lastTopupTime;
        bool enabled;
        string name;
    }

    mapping(uint256 => ReceiverConfig) public receiverObjects;

    event TopupExecuted(uint256 indexed receiverId, address indexed receiver, uint256 amount, uint256 timestamp);
    event ReceiverConfigured(
        uint256 indexed receiverId,
        string name,
        address indexed receiver,
        address indexed treasury,
        address token,
        uint256 amount,
        uint256 period,
        bool enabled
    );
    event ReceiverTreasuryUpdated(uint256 indexed receiverId, address indexed oldTreasury, address indexed newTreasury);
    event ReceiverAmountUpdated(uint256 indexed receiverId, uint256 oldAmount, uint256 newAmount);
    event ReceiverPeriodUpdated(uint256 indexed receiverId, uint256 oldPeriod, uint256 newPeriod);
    event ReceiverNameUpdated(uint256 indexed receiverId, string oldName, string newName);
    event ReceiverEnabledChanged(uint256 indexed receiverId, bool enabled);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initialize the TokenTopupTool contract
     * @dev Sets up the contract with initial parameters and grants roles
     * @param _admin Address of the admin
     * @param _operator Address of the operator
     */
    function initialize(address _admin, address _operator) public initializer {
        if (_admin == address(0)) revert InvalidAddress();
        if (_operator == address(0)) revert InvalidAddress();

        __AccessControl_init();
        __UUPSUpgradeable_init();

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(UPGRADE_ROLE, _admin);
        _grantRole(OPERATOR_ROLE, _operator);
    }

    /**
     * @notice Execute topup transfer from treasury to specific receiver
     * @dev Only callable by addresses with OPERATOR_ROLE, once per topup period per receiver
     * @param _receiverId ID of the receiver to topup
     */
    function topup(uint256 _receiverId) external onlyRole(OPERATOR_ROLE) {
        ReceiverConfig storage config = receiverObjects[_receiverId];
        if (config.receiver == address(0) || !config.enabled) {
            revert ReceiverNotConfigured(_receiverId);
        }

        if (config.lastTopupTime > 0 && block.timestamp < config.lastTopupTime + config.period) {
            revert TopupPeriodNotElapsed();
        }

        IERC20 token = IERC20(config.token);
        uint256 treasuryBalance = token.balanceOf(config.treasury);
        if (treasuryBalance < config.amount) {
            revert InsufficientTreasuryBalance();
        }

        config.lastTopupTime = block.timestamp;
        token.safeTransferFrom(config.treasury, config.receiver, config.amount);

        emit TopupExecuted(_receiverId, config.receiver, config.amount, block.timestamp);
    }

    /**
     * @notice Configure a receiver with specific parameters
     * @dev Only callable by admin
     * @param _receiverId ID of the receiver
     * @param _name Name of the receiver
     * @param _receiver Address of the receiver
     * @param _treasury Address of the treasury for this receiver
     * @param _token Address of the token contract for this receiver
     * @param _amount Amount to topup for this receiver
     * @param _period Period between topups in seconds
     */
    function configureReceiver(
        uint256 _receiverId,
        string calldata _name,
        address _receiver,
        address _treasury,
        address _token,
        uint256 _amount,
        uint256 _period
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_receiver == address(0)) revert InvalidAddress();
        if (_treasury == address(0)) revert InvalidAddress();
        if (_token == address(0)) revert InvalidAddress();
        if (_amount == 0) revert InvalidAmount();
        if (_period == 0) revert InvalidPeriod();

        receiverObjects[_receiverId] = ReceiverConfig({
            receiver: _receiver,
            treasury: _treasury,
            token: _token,
            amount: _amount,
            period: _period,
            lastTopupTime: 0,
            enabled: true,
            name: _name
        });

        emit ReceiverConfigured(_receiverId, _name, _receiver, _treasury, _token, _amount, _period, true);
    }

    /**
     * @notice Enable or disable a receiver
     * @dev Only callable by admin
     * @param _receiverId ID of the receiver
     * @param _enabled Whether to enable or disable the receiver
     */
    function setReceiverEnabled(uint256 _receiverId, bool _enabled) external onlyRole(DEFAULT_ADMIN_ROLE) {
        ReceiverConfig storage config = receiverObjects[_receiverId];
        if (config.receiver == address(0)) {
            revert ReceiverNotConfigured(_receiverId);
        }

        config.enabled = _enabled;
        emit ReceiverEnabledChanged(_receiverId, _enabled);
    }

    /**
     * @notice Get receiver configuration
     * @dev Returns the configuration for a specific receiver
     * @param _receiverId ID of the receiver
     * @return receiver Address of the receiver
     * @return treasury Address of the treasury
     * @return token Address of the token
     * @return amount Amount to topup for this receiver
     * @return period Period between topups in seconds
     * @return lastTopupTime Timestamp of the last topup
     * @return enabled Whether the receiver is enabled
     * @return name Name of the receiver
     */
    function getReceiverInfo(
        uint256 _receiverId
    )
        external
        view
        returns (
            address receiver,
            address treasury,
            address token,
            uint256 amount,
            uint256 period,
            uint256 lastTopupTime,
            bool enabled,
            string memory name
        )
    {
        ReceiverConfig memory config = receiverObjects[_receiverId];
        return (
            config.receiver,
            config.treasury,
            config.token,
            config.amount,
            config.period,
            config.lastTopupTime,
            config.enabled,
            config.name
        );
    }

    /**
     * @notice Get the next available topup time for a specific receiver
     * @dev Returns 0 if topup can be executed immediately
     * @param _receiverId ID of the receiver
     * @return nextTopupTime Timestamp when next topup can be executed
     */
    function getNextTopupTime(uint256 _receiverId) external view returns (uint256) {
        ReceiverConfig memory config = receiverObjects[_receiverId];
        if (config.receiver == address(0) || !config.enabled) {
            revert ReceiverNotConfigured(_receiverId);
        }

        if (config.lastTopupTime == 0) {
            return 0;
        }
        uint256 nextTime = config.lastTopupTime + config.period;
        return block.timestamp >= nextTime ? 0 : nextTime;
    }

    /**
     * @notice Check if topup can be executed for a specific receiver
     * @dev Returns true if the topup period has elapsed since last topup
     * @param _receiverId ID of the receiver
     * @return canTopup Whether topup can be executed
     */
    function canExecuteTopup(uint256 _receiverId) external view returns (bool) {
        ReceiverConfig memory config = receiverObjects[_receiverId];
        if (config.receiver == address(0) || !config.enabled) {
            return false;
        }

        if (config.lastTopupTime == 0) {
            return true;
        }
        return block.timestamp >= config.lastTopupTime + config.period;
    }

    /**
     * @notice Update treasury address for a specific receiver ID
     * @dev Only callable by admin
     * @param _receiverId ID of the receiver
     * @param _newTreasury New treasury address
     */
    function updateReceiverTreasury(uint256 _receiverId, address _newTreasury) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_newTreasury == address(0)) revert InvalidAddress();

        ReceiverConfig storage config = receiverObjects[_receiverId];
        if (config.receiver == address(0)) {
            revert ReceiverNotConfigured(_receiverId);
        }

        address oldTreasury = config.treasury;
        config.treasury = _newTreasury;

        emit ReceiverTreasuryUpdated(_receiverId, oldTreasury, _newTreasury);
    }

    /**
     * @notice Update topup amount for a specific receiver ID
     * @dev Only callable by admin
     * @param _receiverId ID of the receiver
     * @param _newAmount New topup amount
     */
    function updateReceiverAmount(uint256 _receiverId, uint256 _newAmount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_newAmount == 0) revert InvalidAmount();

        ReceiverConfig storage config = receiverObjects[_receiverId];
        if (config.receiver == address(0)) {
            revert ReceiverNotConfigured(_receiverId);
        }

        uint256 oldAmount = config.amount;
        config.amount = _newAmount;

        emit ReceiverAmountUpdated(_receiverId, oldAmount, _newAmount);
    }

    /**
     * @notice Update topup period for a specific receiver ID
     * @dev Only callable by admin
     * @param _receiverId ID of the receiver
     * @param _newPeriod New topup period in seconds
     */
    function updateReceiverPeriod(uint256 _receiverId, uint256 _newPeriod) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_newPeriod == 0) revert InvalidPeriod();

        ReceiverConfig storage config = receiverObjects[_receiverId];
        if (config.receiver == address(0)) {
            revert ReceiverNotConfigured(_receiverId);
        }

        uint256 oldPeriod = config.period;
        config.period = _newPeriod;

        emit ReceiverPeriodUpdated(_receiverId, oldPeriod, _newPeriod);
    }

    /**
     * @notice Update name for a specific receiver ID
     * @dev Only callable by admin
     * @param _receiverId ID of the receiver
     * @param _newName New name for the receiver
     */
    function updateReceiverName(uint256 _receiverId, string calldata _newName) external onlyRole(DEFAULT_ADMIN_ROLE) {
        ReceiverConfig storage config = receiverObjects[_receiverId];
        if (config.receiver == address(0)) {
            revert ReceiverNotConfigured(_receiverId);
        }

        string memory oldName = config.name;
        config.name = _newName;

        emit ReceiverNameUpdated(_receiverId, oldName, _newName);
    }

    /**
     * @notice Authorize contract upgrade
     * @dev Only callable by addresses with UPGRADE_ROLE
     * @param _newImplementation New implementation address
     */
    function _authorizeUpgrade(address _newImplementation) internal view override onlyRole(UPGRADE_ROLE) {
        if (_newImplementation == address(0)) {
            revert InvalidImplementationAddress(_newImplementation);
        }
    }
}
