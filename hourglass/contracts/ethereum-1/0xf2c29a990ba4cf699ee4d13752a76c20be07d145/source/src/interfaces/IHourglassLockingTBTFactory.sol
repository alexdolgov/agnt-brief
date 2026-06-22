// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IHourglassLockingTBTFactory {
    function DEFAULT_ADMIN_ROLE() external view returns (bytes32);

    function DEPLOYER() external view returns (bytes32);

    function REGISTRY_MANAGER() external view returns (bytes32);

    function UPGRADE_INTERFACE_VERSION() external view returns (string memory);

    function addVersion(address _depositorImplementation) external;

    function allowableReceiptImplementations(address) external view returns (bool);

    function cloneReceipt(address implementation) external returns (address deployment);

    function createMaturity(uint256 index, bytes memory depositorData) external returns (address newDepositor);

    function deactivateVersion(uint256 index) external;

    function deployments(uint256, uint256) external view returns (address depositor);

    function depositorBeacon(uint256 version) external view returns (address);

    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    function grantReceiptImplementation(address implementation) external;

    function grantRole(bytes32 role, address account) external;

    function hasRole(bytes32 role, address account) external view returns (bool);

    function initialize() external;

    function isSystemAddress(address) external view returns (bool);

    function numberOfDeployments(uint256 version) external view returns (uint256);

    function numberOfVersions() external view returns (uint256);

    function proxiableUUID() external view returns (bytes32);

    function recoverTokens(address[] memory depositors, address token, address rewardsDistributor) external;

    function renounceRole(bytes32 role, address callerConfirmation) external;

    function revokeRole(bytes32 role, address account) external;

    function setDepositCap(address[] memory depositors, uint256[] memory depositCaps) external;

    function setVedaAccountant(address depositor, address accountant) external;

    function setVedaLens(address depositor, address lens) external;

    function setVedaTeller(address depositor, address teller) external;

    function supportsInterface(bytes4 interfaceId) external view returns (bool);

    function upgradeToAndCall(address newImplementation, bytes memory data) external payable;

    function upgradeVersion(uint256 version, address newImplementation) external;

    function versions(uint256) external view returns (address depositorBeacon, bool isActive);

    event DepositCapsUpdated(address[] depositors, uint256[] newDepositCaps);
    event Initialized(uint64 version);
    event NewDepositorAdded(address implementation, address beacon, uint256 index);
    event NewMaturityCreated(uint256 deploymentIndex, address depositor, address[] receipts);
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);
    event TokensRecovered(address[] depositors, address token, uint256[] amounts);
    event Upgraded(address indexed implementation);
    event VersionDeactivated(uint256 versionId);
    event VersionUpgraded(uint256 version, address oldImplementation, address newImplementation);

    error AccessControlBadConfirmation();
    error AccessControlUnauthorizedAccount(address account, bytes32 neededRole);
    error AddressEmptyCode(address target);
    error ArrayLengthMismatch();
    error CannotBeZero();
    error ERC1167FailedCreateClone();
    error ERC1967InvalidImplementation(address implementation);
    error ERC1967NonPayable();
    error FailedInnerCall();
    error InactiveVersion();
    error InitializationFailed();
    error InvalidImplementation();
    error InvalidInitialization();
    error InvalidMaturity();
    error NotInitializing();
    error UUPSUnauthorizedCallContext();
    error UUPSUnsupportedProxiableUUID(bytes32 slot);
    error UnauthorizedAddress();
    error UnauthorizedCloneImplementation();
}
