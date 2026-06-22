// SPDX-License-Identifier: MIT
pragma solidity >=0.8.20;

import {UUPSUpgradeable} from "@openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin-contracts-upgradeable/contracts/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts/proxy/beacon/UpgradeableBeacon.sol";
import "@openzeppelin/contracts/proxy/beacon/IBeacon.sol";
import "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import "@interfaces/IHourglassDepositor.sol";
/**
 * @title HourglassLockingTBTFactory
 * @notice Factory for deploying new Hourglass locking assets
 */

contract HourglassLockingTBTFactory is AccessControlUpgradeable, UUPSUpgradeable {
    ////////// ROLES //////////
    bytes32 public constant REGISTRY_MANAGER = keccak256("REGISTRY_MANAGER");
    bytes32 public constant DEPLOYER = keccak256("DEPLOYER");

    struct Version {
        address depositorBeacon;
        bool isActive;
    }

    struct Deployment {
        address depositor;
        address[] reciepts;
    }

    /// @notice Versions of depositors
    Version[] public versions;

    /// @notice Allowable token implementations
    mapping(address => bool) public allowableReceiptImplementations;

    /// @notice index in versions -> Deployment [cloned deployment]
    mapping(uint256 => Deployment[]) public deployments;
    /// @notice Tracks whether an address is a system address, both depositors & reciepts
    mapping(address => bool) public isSystemAddress;

    ////////// INITIALIZATION //////////
    constructor() {
        _disableInitializers();
    }

    /// @dev UUPS Proxy Pattern
    function _authorizeUpgrade(address) internal view override onlyRole(DEFAULT_ADMIN_ROLE) {}

    function initialize() external initializer {
        __AccessControl_init();
        __UUPSUpgradeable_init();
        // setup role admin
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(DEPLOYER, msg.sender);
        _grantRole(REGISTRY_MANAGER, msg.sender);
        _setRoleAdmin(REGISTRY_MANAGER, DEFAULT_ADMIN_ROLE);
        _setRoleAdmin(DEPLOYER, REGISTRY_MANAGER);
    }

    /// @notice Allows the Registry Manager to add a new version
    /// @param _depositorImplementation The address of the new depositor implementation
    function addVersion(address _depositorImplementation) external onlyRole(REGISTRY_MANAGER) {
        if (_depositorImplementation == address(0)) revert CannotBeZero();

        // create the new beacon (set's owner as this contract)
        address depBeacon = address(new UpgradeableBeacon(_depositorImplementation));

        // emit the addition of the new depositor version
        emit NewDepositorAdded(_depositorImplementation, depBeacon, versions.length);

        // store the version info
        versions.push(Version({depositorBeacon: depBeacon, isActive: true}));
    }

    function grantReceiptImplementation(address implementation) external onlyRole(REGISTRY_MANAGER) {
        if (implementation == address(0)) revert CannotBeZero();
        allowableReceiptImplementations[implementation] = true;
    }

    /// @notice Creates a new maturity, which is a depositor & any associated reciepts
    /// @param index The index of the version to use
    /// @param depositorData The data to initialize the depositor with
    /// @return newDepositor The address of the new depositor
    function createMaturity(uint256 index, bytes calldata depositorData)
        external
        onlyRole(DEPLOYER)
        returns (address newDepositor)
    {
        if (!versions[index].isActive) revert InactiveVersion();
        if (depositorData.length == 0) revert CannotBeZero();

        // create the new depositor, which creates it's own tokens
        newDepositor = address(new BeaconProxy(versions[index].depositorBeacon, ""));
        // register this as a system addres so it can call & create clones as needed
        isSystemAddress[newDepositor] = true;

        // initialize the depositor
        (bool success,) = newDepositor.call(depositorData);
        if (!success) revert InitializationFailed();

        // obtain the address(es) of the reciepts
        address[] memory _reciepts = IHourglassDepositor(newDepositor).getTokens();

        emit NewMaturityCreated(deployments[index].length, newDepositor, _reciepts);

        // add it to the deployments
        deployments[index].push(Deployment({depositor: newDepositor, reciepts: _reciepts}));

        return (newDepositor);
    }

    /// @notice Allows the Registry Manager to deactivate a version, preventing new maturities from being created
    /// @param index The index of the version to deactivate
    function deactivateVersion(uint256 index) external onlyRole(REGISTRY_MANAGER) {
        versions[index].isActive = false;
        emit VersionDeactivated(index);
    }

    /// @notice Upgrades the version's depositor to a new implementation
    /// @dev This will upgrade ALL Deployments utilizing this version
    /// @param version The version to upgrade
    /// @param newImplementation The new implementation to upgrade to
    function upgradeVersion(uint256 version, address newImplementation) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newImplementation == address(0)) revert CannotBeZero();
        // upgrade the beacon to the new implementation
        address beacon = versions[version].depositorBeacon;
        emit VersionUpgraded(version, IBeacon(beacon).implementation(), newImplementation);
        UpgradeableBeacon(beacon).upgradeTo(newImplementation);
    }

    /// @notice Sets the deposit cap for the depositor
    /// @param depositors The depositors to set the deposit cap for
    /// @param depositCaps The new deposit caps
    function setDepositCap(address[] calldata depositors, uint256[] calldata depositCaps) external onlyRole(DEPLOYER) {
        if (depositors.length != depositCaps.length) revert ArrayLengthMismatch();
        for (uint256 i; i < depositors.length; i++) {
            IHourglassDepositor(depositors[i]).setMaxDeposits(depositCaps[i]);
        }

        emit DepositCapsUpdated(depositors, depositCaps);
    }

    /// @notice Extracts `token`from the depositor(s), sending them to `rewardsDistributor`
    /// @notice Depositors should block the withdrawal of the deposit token.
    /// @param depositors The depositors to call, rather than looking them up from state.
    /// @param token The token to recover
    /// @param rewardsDistributor The address to send the recovered tokens to
    function recoverTokens(address[] calldata depositors, address token, address rewardsDistributor)
        external
        onlyRole(REGISTRY_MANAGER)
    {
        if (rewardsDistributor == address(0)) revert CannotBeZero();
        uint256 numDepositors = depositors.length;
        uint256[] memory amounts = new uint256[](numDepositors);
        for (uint256 i; i < numDepositors; i++) {
            amounts[i] = IHourglassDepositor(depositors[i]).recoverToken(token, rewardsDistributor);
        }

        emit TokensRecovered(depositors, token, amounts);
    }

    ////////// Depositor Functions //////////

    /// @notice Called by the depositor during initialization to clone the proxies for the deposit tokens
    /// @param implementation The implementation to clone
    /// @return deployment The address of the new deployment
    function cloneReceipt(address implementation) external returns (address deployment) {
        if (!isSystemAddress[msg.sender]) revert UnauthorizedAddress();
        if (!allowableReceiptImplementations[implementation]) revert UnauthorizedCloneImplementation();
        // Create a non-upgradeable clone referencing the desired implementation (the tokens)
        // note that this creates an uninitialized, non-upgradeable clone
        // the depositor must immediately initialize it with the relevant values.
        if (implementation.code.length == 0) revert InvalidImplementation();

        /// @solidity memory-safe-assembly
        assembly {
            // Cleans the upper 96 bits of the `implementation` word, then packs the first 3 bytes
            // of the `implementation` address with the bytecode before the address.
            mstore(0x00, or(shr(0xe8, shl(0x60, implementation)), 0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000))
            // Packs the remaining 17 bytes of `implementation` with the bytecode after the address.
            mstore(0x20, or(shl(0x78, implementation), 0x5af43d82803e903d91602b57fd5bf3))
            deployment := create(0, 0x09, 0x37)
        }

        if (deployment == address(0)) {
            revert ERC1167FailedCreateClone();
        }

        isSystemAddress[deployment] = true;

        return deployment;
    }

    ////////// GETTERS //////////

    /// @notice Returns the number of versions
    /// @return The number of versions
    function numberOfVersions() external view returns (uint256) {
        return versions.length;
    }

    /// @notice Returns the number of deployments for a version
    /// @param version The version to look up
    function numberOfDeployments(uint256 version) external view returns (uint256) {
        return deployments[version].length;
    }

    /// @notice Returns the address of the depositor beacon for a version
    /// @param version The version to look up
    /// @return The address of the depositor beacon
    function depositorBeacon(uint256 version) external view returns (address) {
        return versions[version].depositorBeacon;
    }

    ////////// ERRORS //////////
    error InactiveVersion();
    error InvalidMaturity();
    error CannotBeZero();
    error ERC1167FailedCreateClone();
    error InitializationFailed();
    error InvalidImplementation();
    error UnauthorizedCloneImplementation();
    error UnauthorizedAddress();
    error ArrayLengthMismatch();

    ////////// EVENTS //////////
    event VersionDeactivated(uint256 versionId);
    event NewDepositorAdded(address implementation, address beacon, uint256 index);
    event NewMaturityCreated(uint256 deploymentIndex, address depositor, address[] receipts);
    event DepositCapsUpdated(address[] depositors, uint256[] newDepositCaps);
    event VersionUpgraded(uint256 version, address oldImplementation, address newImplementation);
    event TokensRecovered(address[] depositors, address token, uint256[] amounts);
}
