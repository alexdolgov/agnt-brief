//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol";
import "./interface/IConfig.sol";
import "./Base.sol";

/// @title Config
/// @dev This contract manages the configuration for the protocol.
contract Config is IConfig, Base {
    /// @notice Emits when `role`'s admin role is set to `newAdminRole`
    /// @param role role hash
    /// @param previousAdminRole the old admin role
    /// @param newAdminRole the new admin role
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    /// @notice Emits when `account` is granted `role`.
    /// @param role role hash
    /// @param account role granted account
    /// @param sender operator account
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);

    /// @notice Emits when `account` is revoked `role`.
    /// @param role role hash
    /// @param account role revoked account
    /// @param sender operator account
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);

    /// @notice Emits when `isPublic` is set to `newValue`
    /// @param oldValue old value of `isPublic`
    /// @param newValue new value of `isPublic`
    event PublicSet(bool oldValue, bool newValue);

    /// @notice Emits when `protocolTreasury` is set to `newValue`
    /// @param oldValue old value of `protocolTreasury`
    /// @param newValue new value of `protocolTreasury`
    event ProtocolTreasurySet(address oldValue, address newValue);

    /// @notice Emits when `protocolTreasuryRatio` is set to `newValue`
    /// @param oldValue old value of `protocolTreasuryRatio`
    /// @param newValue new value of `protocolTreasuryRatio`
    event ProtocolTreasuryRatioSet(uint64 oldValue, uint64 newValue);

    /// @notice Emits when `vestingRatio` is set to `newValue`
    /// @param oldValue old value of `vestingRatio`
    /// @param newValue new value of `vestingRatio`
    event VestingRatioSet(uint64 oldValue, uint64 newValue);

    /// @notice Emits when `vestingDuration` is set to `newValue`
    /// @param oldValue old value of `vestingDuration`
    /// @param newValue new value of `vestingDuration`
    event VestingDurationSet(uint64 oldValue, uint64 newValue);

    /// @notice Emits when `queueLengthSecs` is set to `newValue`
    /// @param oldValue old value of `queueLengthSecs`
    /// @param newValue new value of `queueLengthSecs`
    event QueueLengthSecsSet(uint64 oldValue, uint64 newValue);

    /// @notice Emits when `earlyExitFee` is set to `newValue`
    /// @param oldValue old value of `earlyExitFee`
    /// @param newValue new value of `earlyExitFee`
    event EarlyExitFeeSet(uint64 oldValue, uint64 newValue);

    /// @notice Emits when `isPaused` is set to `newValue`
    /// @param oldValue old value of `isPaused`
    /// @param newValue new value of `isPaused`
    event PausedSet(bool oldValue, bool newValue);

    /// @notice Data structure for role
    struct RoleData {
        mapping(address => bool) members;
        bytes32 adminRole;
    }

    /// @notice Data structure for initialize config
    struct ConfigData {
        bool isPublic;
        address inviterNFT;
        address eMetis;
        address eMetisMinter;
        address vesting;
        address seMetis;
        address rewardDispatcher;
        address enki;
        address metis;
        address bridge;
        address l1Dealer;
        address protocolTreasury;
        uint64 protocolTreasuryRatio;
        uint64 vestingRatio;
        uint64 vestingDuration;
    }

    /// @notice mapping role hash to role data
    mapping(bytes32 => RoleData) public _roles;

    // config keys
    uint256 public constant BOOL_IS_PUBLIC = uint256(keccak256("BOOL_IS_PUBLIC"));
    uint256 public constant BOOL_IS_PAUSED = uint256(keccak256("BOOL_IS_PAUSED"));
    uint256 public constant ADDRESS_INVITER_NFT = uint256(keccak256("ADDRESS_INVITER_NFT"));
    uint256 public constant ADDRESS_EMETIS = uint256(keccak256("ADDRESS_EMETIS"));
    uint256 public constant ADDRESS_EMETIS_MINTER = uint256(keccak256("ADDRESS_EMETIS_MINTER"));
    uint256 public constant ADDRESS_VESTING = uint256(keccak256("ADDRESS_VESTING"));
    uint256 public constant ADDRESS_SE_METIS = uint256(keccak256("ADDRESS_SE_METIS"));
    uint256 public constant ADDRESS_REWARD_DISPATCHER = uint256(keccak256("ADDRESS_REWARD_DISPATCHER"));
    uint256 public constant ADDRESS_ENKI = uint256(keccak256("ADDRESS_ENKI"));
    uint256 public constant ADDRESS_METIS = uint256(keccak256("ADDRESS_METIS"));
    uint256 public constant ADDRESS_BRIDGE = uint256(keccak256("ADDRESS_BRIDGE"));
    uint256 public constant ADDRESS_L1_DEALER = uint256(keccak256("ADDRESS_L1_DEALER"));
    uint256 public constant ADDRESS_PROTOCOL_TREASURY = uint256(keccak256("ADDRESS_PROTOCOL_TREASURY"));
    uint256 public constant UINT64_PROTOCOL_TREASURY_RATIO = uint256(keccak256("UINT64_PROTOCOL_TREASURY_RATIO"));
    uint256 public constant UINT64_VESTING_RATIO = uint256(keccak256("UINT64_VESTING_RATIO"));
    uint256 public constant UINT64_VESTING_DURATION = uint256(keccak256("UINT64_VESTING_DURATION"));

    /// @notice mapping config key to config value
    mapping(uint256 => uint256) public configMap;

    /// @notice initialize config
    /// @param initialValues initialize config data
    function initialize(bytes calldata initialValues) external initializer{
        __Base_init(address(this), new address[](0));
        _grantRole(TIMELOCK_ROLE, msg.sender);

        ConfigData memory configData = abi.decode(initialValues, (ConfigData));

        configMap[ADDRESS_INVITER_NFT] = uint256(uint160(configData.inviterNFT));
        configMap[ADDRESS_EMETIS] = uint256(uint160(configData.eMetis));
        configMap[ADDRESS_EMETIS_MINTER] = uint256(uint160(configData.eMetisMinter));
        configMap[ADDRESS_VESTING] = uint256(uint160(configData.vesting));
        configMap[ADDRESS_SE_METIS] = uint256(uint160(configData.seMetis));
        configMap[ADDRESS_REWARD_DISPATCHER] = uint256(uint160(configData.rewardDispatcher));
        configMap[ADDRESS_ENKI] = uint256(uint160(configData.enki));
        configMap[ADDRESS_METIS] = uint256(uint160(configData.metis));
        configMap[ADDRESS_BRIDGE] = uint256(uint160(configData.bridge));
        configMap[ADDRESS_L1_DEALER] = uint256(uint160(configData.l1Dealer));
        configMap[ADDRESS_PROTOCOL_TREASURY] = uint256(uint160(configData.protocolTreasury));
        setPublic(configData.isPublic);
        setProtocolTreasury(configData.protocolTreasury);
        setProtocolTreasuryRatio(configData.protocolTreasuryRatio);
        setVestingRatio(configData.vestingRatio);
        setVestingDuration(configData.vestingDuration);
    }

    function addContract(string memory key, address value) external override onlyOperatorOrTimeLock {
        require(value != address(0), "Config: value is zero address");
        uint256 keyHash = uint256(keccak256(abi.encodePacked(key)));
        //require(configMap[keyHash] == 0, "Config: key already exists");
        configMap[keyHash] = uint256(uint160(value));
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleRevoked} event.
     */
    function revokeRole(bytes32 role, address account) external override onlyOperatorOrTimeLock {
        _revokeRole(role, account);
    }

    function setRoleAdmin(bytes32 role, bytes32 adminRole) external override onlyOperatorOrTimeLock {
        _setRoleAdmin(role, adminRole);
    }

    function grantRole(bytes32 role, address account) external override onlyOperatorOrTimeLock {
        _grantRole(role, account);
    }

    function setPaused(bool _isPaused) external override onlyOperatorOrTimeLock {
        bool oldValue = configMap[BOOL_IS_PAUSED] == 1;
        configMap[BOOL_IS_PAUSED] = _isPaused ? 1 : 0;
        emit PausedSet(oldValue, _isPaused);
    }

    /// @notice whether the protocol is paused
    function isPaused() external view override returns (bool) {
        return configMap[BOOL_IS_PAUSED] == 1;
    }

    /// @notice get public (specifies whether the protocol is public or in beta mode)
    function isPublic() external view override returns (bool) {
        return configMap[BOOL_IS_PUBLIC] == 1;
    }

    /// @notice get inviter NFT address
    function inviterNFT() external view override returns (address) {
        return address(uint160(configMap[ADDRESS_INVITER_NFT]));
    }

    /// @notice get eMetis address
    function eMetis() external view override returns (address) {
        return address(uint160(configMap[ADDRESS_EMETIS]));
    }

    /// @notice get eMetisMinter address
    function eMetisMinter() external view override returns (address) {
        return address(uint160(configMap[ADDRESS_EMETIS_MINTER]));
    }

    /// @notice get vesting address
    function vesting() external view override returns (address) {
        return address(uint160(configMap[ADDRESS_VESTING]));
    }

    /// @notice get seMetis address
    function seMetis() external view override returns (address) {
        return address(uint160(configMap[ADDRESS_SE_METIS]));
    }

    /// @notice get rewardDispatcher address
    function rewardDispatcher() external view override returns (address) {
        return address(uint160(configMap[ADDRESS_REWARD_DISPATCHER]));
    }

    /// @notice get enki address
    function enki() external view override returns (address) {
        return address(uint160(configMap[ADDRESS_ENKI]));
    }

    /// @notice get metis address
    function metis() external view override returns (address) {
        return address(uint160(configMap[ADDRESS_METIS]));
    }

    /// @notice get L2 bridge address
    function bridge() external view override returns (address) {
        return address(uint160(configMap[ADDRESS_BRIDGE]));
    }

    /// @notice get L1 dealer address
    function l1Dealer() external view override returns (address) {
        return address(uint160(configMap[ADDRESS_L1_DEALER]));
    }

    /// @notice get protocol treasury address
    function protocolTreasury() external view override returns (address) {
        return address(uint160(configMap[ADDRESS_PROTOCOL_TREASURY]));
    }

    /// @notice get protocol treasury ratio
    function protocolTreasuryRatio() external view override returns (uint64) {
        return uint64(configMap[UINT64_PROTOCOL_TREASURY_RATIO]);
    }

    /// @notice get vesting ratio
    function vestingRatio() external view override returns (uint64) {
        return uint64(configMap[UINT64_VESTING_RATIO]);
    }

    /// @notice get vesting duration
    function vestingDuration() external view override returns (uint64) {
        return uint64(configMap[UINT64_VESTING_DURATION]);
    }

    /// @notice set public (specifies whether the protocol is public or in beta mode)
    /// @param _isPublic is public
    function setPublic(bool _isPublic) public onlyOperatorOrTimeLock {
        bool oldValue = configMap[BOOL_IS_PUBLIC] == 1;
        configMap[BOOL_IS_PUBLIC] = _isPublic ? 1 : 0;
        emit PublicSet(oldValue, _isPublic);
    }

    /// @notice set protocol treasury address
    /// @param _protocolTreasury protocol treasury address
    function setProtocolTreasury(address _protocolTreasury) public override onlyOperatorOrTimeLock {
        require(_protocolTreasury != address(0), "Config: protocolTreasury is zero address");
        address oldValue = address(uint160(configMap[ADDRESS_PROTOCOL_TREASURY]));
        configMap[ADDRESS_PROTOCOL_TREASURY] = uint256(uint160(_protocolTreasury));
        emit ProtocolTreasurySet(oldValue, _protocolTreasury);
    }

    /// @notice set protocol treasury ratio
    /// @param _protocolTreasuryRatio protocol treasury ratio
    function setProtocolTreasuryRatio(uint64 _protocolTreasuryRatio) public override onlyOperatorOrTimeLock {
        require(_protocolTreasuryRatio <= FEE_PRECISION, "Config: protocolTreasuryRatio must be less than 1000000");
        uint64 oldValue = uint64(configMap[UINT64_PROTOCOL_TREASURY_RATIO]);
        configMap[UINT64_PROTOCOL_TREASURY_RATIO] = _protocolTreasuryRatio;
        emit ProtocolTreasuryRatioSet(oldValue, _protocolTreasuryRatio);
    }

    /// @notice set vesting ratio
    /// @param _vestingRatio vesting ratio in precision of 1000000
    function setVestingRatio(uint64 _vestingRatio) public override onlyOperatorOrTimeLock {
        require(_vestingRatio <= FEE_PRECISION, "Config: vestingRatio must be less than 1000000");
        uint64 oldValue = uint64(configMap[UINT64_VESTING_RATIO]);
        configMap[UINT64_VESTING_RATIO] = _vestingRatio;
        emit VestingRatioSet(oldValue, _vestingRatio);
    }

    /// @notice set vesting duration
    /// @param _vestDuration vesting duration in seconds
    function setVestingDuration(uint64 _vestDuration) public override onlyOperatorOrTimeLock {
        require(_vestDuration > 0, "Config: vestingDuration must be greater than 0");
        uint64 oldValue = uint64(configMap[UINT64_VESTING_DURATION]);
        configMap[UINT64_VESTING_DURATION] = _vestDuration;
        emit VestingDurationSet(oldValue, _vestDuration);
    }

    /// @notice check if account has role
    /// @param role role hash
    /// @param account account address
    function hasRole(bytes32 role, address account) public view override returns (bool) {
        return _roles[role].members[account];
    }

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) public view override returns (bytes32) {
        return _roles[role].adminRole;
    }

    /**
     * @dev Sets `adminRole` as ``role``'s admin role.
     *
     * Emits a {RoleAdminChanged} event.
     */
    function _setRoleAdmin(bytes32 role, bytes32 adminRole) internal virtual {
        bytes32 previousAdminRole = getRoleAdmin(role);
        _roles[role].adminRole = adminRole;
        emit RoleAdminChanged(role, previousAdminRole, adminRole);
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleGranted} event.
     */
    function _grantRole(bytes32 role, address account) internal virtual {
        if (!hasRole(role, account)) {
            _roles[role].members[account] = true;
            emit RoleGranted(role, account, _msgSender());
        }
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleRevoked} event.
     */
    function _revokeRole(bytes32 role, address account) internal virtual {
        if (hasRole(role, account)) {
            _roles[role].members[account] = false;
            emit RoleRevoked(role, account, _msgSender());
        }
    }

}