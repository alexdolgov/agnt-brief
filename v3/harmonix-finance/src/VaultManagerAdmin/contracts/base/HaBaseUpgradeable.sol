// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {IVaultManager} from "../interfaces/IVaultManager.sol";
import {ErrorsLib} from "../libraries/ErrorsLib.sol";

/// @title HaBaseUpgradeable
/// @notice Abstract base for all upgradeable Harmonix contracts.
/// @dev Provides VaultManager wiring, role-based access control, and UUPS upgrade authorization.
abstract contract HaBaseUpgradeable is Initializable, UUPSUpgradeable {
    using EnumerableSet for EnumerableSet.Bytes32Set;

    bytes32 public constant DEFAULT_ADMIN_ROLE = bytes32(0);
    bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");
    bytes32 public constant SENTINEL_ROLE = keccak256("SENTINEL_ROLE");
    bytes32 public constant TIMELOCK_PROPOSER_ROLE = keccak256("TIMELOCK_PROPOSER_ROLE");

    // --- Linear storage (upgrade-safe, never reorder or insert here) ---

    /// @notice The VaultManager used for role checks and system coordination.
    IVaultManager internal _vaultManager;

    /// @notice Timelock duration (in seconds) per function selector. 0 means no timelock.
    mapping(bytes4 => uint256) public timelockDuration;

    /// @notice keccak256(calldata) => timestamp when the pending operation becomes executable.
    mapping(bytes32 => uint256) public executableAt;

    /// @notice Set of keccak256 keys for all currently pending operations (for enumeration).
    EnumerableSet.Bytes32Set private _pendingKeys;

    /// @notice keccak256(calldata) => original calldata for all currently pending operations.
    mapping(bytes32 => bytes) private _pendingData;

    /// @dev Reserved storage gap for future base-contract upgrades (50 slots total: 6 used + 44 gap).
    /// @custom:oz-renamed-from _gap
    uint256[44] private __gap;

    // --- Events ---

    event TimelockSubmit(bytes4 indexed selector, bytes data, uint256 executableAt);
    event TimelockAccept(bytes4 indexed selector, bytes data);
    event TimelockRevoke(address indexed sender, bytes4 indexed selector, bytes data);
    event TimelockDurationSet(bytes4 indexed selector, uint256 newDuration);

    // --- View ---

    /// @notice Returns the VaultManager address used for role checks and system coordination.
    function vaultManager() public view virtual returns (address) {
        return address(_vaultManager);
    }

    /// @notice Returns the number of operations currently waiting to be executed.
    function pendingCount() external view returns (uint256) {
        return _pendingKeys.length();
    }

    /// @notice Returns the full calldata of the pending operation at the given index.
    /// @param index Zero-based index into the pending set (must be < pendingCount()).
    function getPendingAt(uint256 index) external view returns (bytes memory) {
        return _pendingData[_pendingKeys.at(index)];
    }

    /// @notice Returns the full calldata stored for a specific pending key (keccak256 of the data).
    /// @dev Returns empty bytes if the key is not currently pending.
    function getPendingData(bytes32 key) external view returns (bytes memory) {
        return _pendingData[key];
    }

    /// @notice Returns the full calldata of every currently pending operation.
    /// @dev Iterates the entire pending set — avoid calling on-chain in a loop.
    function getAllPending() external view returns (bytes[] memory result) {
        uint256 count = _pendingKeys.length();
        result = new bytes[](count);
        for (uint256 i = 0; i < count; i++) {
            result[i] = _pendingData[_pendingKeys.at(i)];
        }
    }

    // --- Modifiers ---

    modifier onlyRole(bytes32 role) {
        _onlyRole(role);
        _;
    }

    modifier onlyVaultManager() {
        _onlyVaultManager();
        _;
    }

    modifier isNotPaused() {
        _isNotPaused();
        _;
    }

    modifier isFunctionEnabled() {
        _isFunctionEnabled(msg.sig);
        _;
    }

    // ==================== INIT ==========================

    function __HaBase_init(address vaultManagerAddr) internal onlyInitializing {
        if (vaultManagerAddr == address(0)) revert ErrorsLib.ZeroAddress();
        _vaultManager = IVaultManager(vaultManagerAddr);
    }

    // =================== INTERNAL ==========================

    function _onlyVaultManager() private view {
        require(msg.sender == address(_vaultManager), ErrorsLib.Unauthorized());
    }

    function _onlyRole(bytes32 role) private view {
        require(_vaultManager.hasRole(role, msg.sender), ErrorsLib.Unauthorized());
    }

    function _isNotPaused() private view {
        require(!_vaultManager.pauseStatus(address(this)), ErrorsLib.Paused(address(this)));
    }

    function _isFunctionEnabled(bytes4 selector) private view {
        require(
            !_vaultManager.functionDisabled(address(this), selector),
            ErrorsLib.FunctionDisabled(address(this), selector)
        );
    }

    // =================== TIMELOCK ==========================

    /**
     * @notice Queue a timelocked operation.
     * @param data ABI-encoded calldata (selector + arguments) for the target function.
     */
    function submit(bytes calldata data) external onlyRole(TIMELOCK_PROPOSER_ROLE) {
        bytes32 key = keccak256(data);
        require(executableAt[key] == 0, ErrorsLib.DataAlreadyPending());
        bytes4 selector = bytes4(data);
        uint256 eta = block.timestamp + timelockDuration[selector];
        executableAt[key] = eta;
        _pendingKeys.add(key);
        _pendingData[key] = data;
        emit TimelockSubmit(selector, data, eta);
    }

    /**
     * @notice Cancel a pending timelocked operation.
     * @dev Callable by DEFAULT_ADMIN_ROLE or SENTINEL_ROLE.
     * @param data The same ABI-encoded calldata that was passed to `submit`.
     */
    function revoke(bytes calldata data) external {
        require(
            _vaultManager.hasRole(DEFAULT_ADMIN_ROLE, msg.sender) || _vaultManager.hasRole(SENTINEL_ROLE, msg.sender),
            ErrorsLib.Unauthorized()
        );
        bytes32 key = keccak256(data);
        require(executableAt[key] != 0, ErrorsLib.DataNotPending());
        executableAt[key] = 0;
        _pendingKeys.remove(key);
        delete _pendingData[key];
        emit TimelockRevoke(msg.sender, bytes4(data), data);
    }

    /**
     * @notice Set the timelock delay for a specific function selector.
     * @dev Setting duration to 0 disables the timelock for that selector.
     * @param selector The 4-byte function selector.
     * @param duration The delay in seconds.
     */
    function setTimelockDuration(bytes4 selector, uint256 duration) external onlyRole(DEFAULT_ADMIN_ROLE) {
        timelockDuration[selector] = duration;
        emit TimelockDurationSet(selector, duration);
    }

    /**
     * @notice Internal guard for timelocked functions.
     * @dev Call at the top of any function that should be subject to timelock.
     *      If `timelockDuration[selector] == 0`, the check is skipped entirely.
     *      Otherwise, verifies a prior `submit` with matching calldata has been
     *      queued and that the delay has elapsed, then clears the entry.
     */
    function _timelocked() internal {
        bytes4 selector = bytes4(msg.data);
        if (timelockDuration[selector] == 0) return;
        bytes32 key = keccak256(msg.data);
        require(executableAt[key] != 0, ErrorsLib.DataNotPending());
        require(block.timestamp >= executableAt[key], ErrorsLib.TimelockNotExpired());
        executableAt[key] = 0;
        _pendingKeys.remove(key);
        delete _pendingData[key];
        emit TimelockAccept(selector, msg.data);
    }

    // --- UUPS ---

    function _authorizeUpgrade(address) internal override onlyRole(UPGRADER_ROLE) {}

    function _validateVault(address vault) internal view returns (address asset) {
        asset = _vaultManager.assetForVault(vault);
        require(asset != address(0), ErrorsLib.ZeroAddress());
    }
}
