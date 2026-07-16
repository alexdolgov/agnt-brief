// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {LibClone} from "solady/utils/LibClone.sol";
import {OwnableRoles} from "solady/auth/OwnableRoles.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {VestingVault} from "./VestingVault.sol";
import {IEsToken} from "./interfaces/esVesting/IEsToken.sol";
import {EsTokenController} from "./EsTokenController.sol";

contract VestingFactory is OwnableRoles, ReentrancyGuard {
    error InvalidVestingParameters();
    error TransferFailed();
    error WhitelistFailed();
    error Paused();
    error MaxVaultsReached();
    error InvalidAmount();
    error InvalidStartTime();
    error InvalidToken();
    error InvalidDuration();
    error RollbackFailed(address vault);
    error InvalidOrTerminatedVault();

    event VestingVaultCreated(address indexed vault, address indexed beneficiary, address indexed token, uint256 amount, uint64 startTime, uint64 duration, uint64 cliff, bool canStake, bool canHarvest);
    event VestingVaultTerminated(address indexed vault, address indexed beneficiary, uint64 timestamp);
    event VestingVaultDeployedDeterministic(address indexed vault, bytes32 salt);
    event BeneficiaryVaultAdded(address indexed beneficiary, address indexed vault);
    event FactoryPaused(address indexed owner);
    event FactoryUnpaused(address indexed owner);
    event RollbackAttemptFailed(address indexed vault, bytes reason);

    address constant ETH_ADDRESS = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    uint256 private constant OWNER_ROLE = _ROLE_0;

    uint256 private constant MAX_VAULTS_PER_BENEFICIARY = 100;
    uint256 private constant MAX_ALLOCATION = 1e30;
    uint256 private constant MIN_DURATION = 1 days;
    uint256 private constant MAX_DURATION = 2190 days; // 6 years
    uint256 private constant MAX_CLIFF = 730 days;
    uint256 private constant ROLLBACK_GAS_LIMIT = 100_000; // Increased from 50_000

    address public immutable implementation;
    address public immutable esToken;
    IEsToken public immutable esTokenContract;
    EsTokenController public immutable controller;
    bool public paused;

    mapping(address => address[]) public beneficiaryVaults; // Beneficiary -> list of vaults
    mapping(address => bool) public isValidVault;           // Vault address -> validity

    constructor(address _esToken, address _controller) {
        _initializeOwner(msg.sender);
        _grantRoles(msg.sender, OWNER_ROLE);

        implementation = address(new VestingVault());
        esToken = _esToken;
        esTokenContract = IEsToken(_esToken);
        controller = EsTokenController(_controller);
    }

    modifier whenNotPaused() {
        if (paused) revert Paused();
        _;
    }

    // Create a vesting vault (non-deterministic)
    function createVestingVault(
        address token,
        uint256 amount,
        address beneficiary,
        address manager,
        uint64 startTime,
        uint64 duration,
        uint64 cliff,
        bool canStake,
        bool canHarvest,
        address dividendsAddress
    ) external payable nonReentrant onlyOwnerOrRoles(OWNER_ROLE) whenNotPaused returns (address vault) {
        address[] storage vaults = beneficiaryVaults[beneficiary];
        if (vaults.length >= MAX_VAULTS_PER_BENEFICIARY) revert MaxVaultsReached();
        if (token != address(0) && token != esToken) revert InvalidToken();
        if (token == address(0) && msg.value != amount) revert InvalidAmount();
        _validateParameters(amount, beneficiary, startTime, duration, cliff, canStake, token);

        vault = LibClone.clone(implementation);
        isValidVault[vault] = true;

        _transferToVault(vault, token, amount);
        _initializeVault(vault, beneficiary, manager, startTime, duration, cliff, canStake, canHarvest, dividendsAddress);
        vaults.push(vault);

        emit VestingVaultCreated(vault, beneficiary, token, amount, startTime, duration, cliff, canStake, canHarvest);
        emit BeneficiaryVaultAdded(beneficiary, vault);
    }

    // Create a vesting vault (deterministic)
    function createVestingVaultDeterministic(
        address token,
        uint256 amount,
        address beneficiary,
        address manager,
        uint64 startTime,
        uint64 duration,
        uint64 cliff,
        bool canStake,
        bool canHarvest,
        address dividendsAddress,
        bytes32 salt
    ) external payable nonReentrant onlyOwnerOrRoles(OWNER_ROLE) whenNotPaused returns (address vault) {
        address[] storage vaults = beneficiaryVaults[beneficiary];
        if (vaults.length >= MAX_VAULTS_PER_BENEFICIARY) revert MaxVaultsReached();
        if (token != address(0) && token != esToken) revert InvalidToken();
        if (token == address(0) && msg.value != amount) revert InvalidAmount();
        _validateParameters(amount, beneficiary, startTime, duration, cliff, canStake, token);

        vault = LibClone.cloneDeterministic(implementation, salt);
        isValidVault[vault] = true;

        _transferToVault(vault, token, amount);
        _initializeVault(vault, beneficiary, manager, startTime, duration, cliff, canStake, canHarvest, dividendsAddress);
        vaults.push(vault);

        emit VestingVaultCreated(vault, beneficiary, token, amount, startTime, duration, cliff, canStake, canHarvest);
        emit VestingVaultDeployedDeterministic(vault, salt);
        emit BeneficiaryVaultAdded(beneficiary, vault);
    }

    // Validate vesting parameters
    function _validateParameters(
        uint256 amount,
        address beneficiary,
        uint64 startTime,
        uint64 duration,
        uint64 cliff,
        bool canStake,
        address token
    ) internal view {
        uint64 now = uint64(block.timestamp);
        if (beneficiary == address(0) || amount == 0 || amount > MAX_ALLOCATION) revert InvalidVestingParameters();
        if (duration < MIN_DURATION || duration > MAX_DURATION || cliff > MAX_CLIFF || cliff >= duration) revert InvalidDuration();
        if (startTime <= now) revert InvalidStartTime();
        if (canStake && token != esToken) revert InvalidVestingParameters();
    }

    // Transfer tokens to vault before initialization
    function _transferToVault(address vault, address token, uint256 amount) internal {
        if (token == esToken) {
            controller.updateWhitelist(vault, true);
            uint256 preBalance = IERC20(token).balanceOf(vault);
            if (!IERC20(token).transferFrom(msg.sender, vault, amount) || IERC20(token).balanceOf(vault) - preBalance != amount) {
                (bool success, bytes memory reason) = address(controller).call{gas: ROLLBACK_GAS_LIMIT}(
                    abi.encodeWithSelector(controller.updateWhitelist.selector, vault, false)
                );
                if (!success) emit RollbackAttemptFailed(vault, reason);
                revert TransferFailed();
            }
        } else {
            SafeTransferLib.safeTransferETH(vault, amount);
        }
    }

    // Initialize the vault
    function _initializeVault(
        address vault,
        address beneficiary,
        address manager,
        uint64 startTime,
        uint64 duration,
        uint64 cliff,
        bool canStake,
        bool canHarvest,
        address dividendsAddress
    ) internal {
        (bool success, ) = vault.call(
            abi.encodeCall(
                VestingVault.initialize,
                (manager, beneficiary, startTime, duration, cliff, canStake, canHarvest, dividendsAddress)
            )
        );
        if (!success) revert TransferFailed();
    }

    // Terminate a vesting vault
    function terminateVestingVault(address payable vault, address[] calldata tokens) 
        external 
        onlyOwnerOrRoles(OWNER_ROLE) 
        nonReentrant 
        whenNotPaused 
    {
        if (!isValidVault[vault] || VestingVault(vault).isTerminated()) revert InvalidOrTerminatedVault();

        VestingVault vestingVault = VestingVault(vault);
        address beneficiary = vestingVault.beneficiary();

        vestingVault.terminateVesting(tokens, new bytes(0));

        // Remove vault from beneficiary's vaults list
        address[] storage vaults = beneficiaryVaults[beneficiary];
        uint256 len = vaults.length;
        for (uint256 i; i < len;) {
            if (vaults[i] == vault) {
                if (i != len - 1) vaults[i] = vaults[len - 1];
                vaults.pop();
                break;
            }
            unchecked { ++i; }
        }

        delete isValidVault[vault];
        emit VestingVaultTerminated(vault, beneficiary, uint64(block.timestamp));
    }

    // Remove whitelist status
    function removeWhitelist(address vault) external onlyOwnerOrRoles(OWNER_ROLE) {
        if (address(controller) == address(0)) revert WhitelistFailed();
        controller.updateWhitelist(vault, false);
    }

    // Pause/unpause factory
    function setPaused(bool _paused) external onlyOwnerOrRoles(OWNER_ROLE) {
        paused = _paused;
        if (_paused) {
            emit FactoryPaused(msg.sender);
        } else {
            emit FactoryUnpaused(msg.sender);
        }
    }

    // Emergency withdraw
    function emergencyWithdraw(address token) external onlyOwnerOrRoles(OWNER_ROLE) {
        if (token == ETH_ADDRESS) {
            SafeTransferLib.safeTransferETH(msg.sender, address(this).balance);
        } else {
            uint256 balance = IERC20(token).balanceOf(address(this));
            if (balance > 0) SafeTransferLib.safeTransfer(token, msg.sender, balance);
        }
    }

    // Predict deterministic address
    function predictDeterministicAddress(bytes32 salt) external view returns (address) {
        return LibClone.predictDeterministicAddress(implementation, salt, address(this));
    }

    // Get vaults for a beneficiary
    function getBeneficiaryVaults(address beneficiary) external view returns (address[] memory) {
        return beneficiaryVaults[beneficiary];
    }

    // Check if a vault is valid
    function isVaultValid(address vault) external view returns (bool) {
        return isValidVault[vault];
    }

    receive() external payable {}
}