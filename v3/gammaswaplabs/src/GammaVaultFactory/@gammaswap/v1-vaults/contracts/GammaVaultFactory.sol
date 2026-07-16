// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import "@gammaswap/v1-core/contracts/interfaces/IPausable.sol";
import "@gammaswap/v1-core/contracts/libraries/GammaSwapLibrary.sol";
import "@gammaswap/v1-core/contracts/utils/LockableMinimalBeacon.sol";
import "@gammaswap/v1-core/contracts/utils/TwoStepOwnable.sol";
import "@gammaswap/v1-staking/contracts/interfaces/IBeaconProxyFactory.sol";

import "./interfaces/IFundingProtocol.sol";
import "./interfaces/IGammaVaultFactory.sol";
import "./interfaces/IVaultProtocol.sol";
import "./libraries/VaultAddressCalculator.sol";

/// @title Factory contract to create more GammaVault contracts.
/// @author Daniel D. Alcarraz (https://github.com/0xDanr)
/// @dev Creates new GammaVault instances as minimal proxy contracts (EIP-1167) to implementation contracts identified by a protocol id
contract GammaVaultFactory is IGammaVaultFactory, TwoStepOwnable {

    error DeployFailed();
    error GammaPoolDoesNotExist();
    error InvalidImplementation();
    error InvalidStrategyRange();
    error InvalidStrategyRatio();
    error ProtocolExists();
    error ProtocolLocked();
    error ProtocolMismatch();
    error ProtocolNotSet();
    error StrategyIsSet();
    error StrategyNotSet();
    error VaultExists();
    error ZeroProtocol();
    error ZeroStrategyId();

    /// @dev See {IGammaVaultFactory-getVault}
    mapping(bytes32 => address) public override getVault; // all GS Vaults addresses can be predetermined through key

    /// @dev See {IGammaVaultFactory-getKey}
    mapping(address => bytes32) public override getKey; // predetermined key maps to vault address

    /// @dev See {IGammaVaultFactory-getProtocol}
    mapping(uint16 => address) public override getProtocol;

    /// @dev See {IGammaVaultFactory-getProtocolBeacon}
    mapping(uint16 => address) public override getProtocolBeacon;

    /// @dev See {IGammaVaultFactory-getVaultByRefID}
    mapping(uint16 => address) public override getVaultByRefId;

    /// @dev Strategy parameters identified by strategyId
    mapping(uint16 => Strategy) private strategy;

    /// @dev Array of all GammaVault instances created by this factory contract
    address[] public allVaults;

    /// @dev See {IGammaVaultFactory-gsFactory}
    address public immutable override gsFactory;

    /// @dev See {IGammaVaultFactory-fundingVaultFactory}
    address public override fundingVaultFactory;

    /// @dev Receiver of protocol revenue
    address private feeTo;

    /// @dev Protocol fee in basis points charged to vaults as share of concentrated liquidity pool yield
    uint16 private fee = 1000; // 10% fee

    /// @notice Constructs a new GammaVaultFactory contract
    /// @param _feeTo - Address that will receive protocol revenue from vaults
    /// @param _gsFactory - Address of the GammaPoolFactory that creates GammaSwap pools used in vaults
    constructor(address _feeTo, address _gsFactory) TwoStepOwnable(msg.sender) {
        feeTo = _feeTo;
        gsFactory = _gsFactory;
    }

    /// @dev See {IGammaVaultFactory-initialize}
    function initialize(address _fundingVaultFactory) external virtual override onlyOwner {
        require(_fundingVaultFactory != address(0), "INVALID_FUNDING_VAULT_FACTORY");
        require(fundingVaultFactory == address(0), "ALREADY_INITIALIZED");
        fundingVaultFactory = _fundingVaultFactory;
    }

    /// @dev See {IGammaVaultFactory-allVaultsLength}
    function allVaultsLength() external virtual override view returns (uint256) {
        return allVaults.length;
    }

    /// @dev Revert if there is no implementation contract set for this protocolId
    /// @param protocolId - id of implementation contract being checked
    function _isProtocolNotSet(uint16 protocolId) internal virtual view {
        if(getProtocol[protocolId] == address(0)) revert ProtocolNotSet();
    }

    /// @dev See {IGammaVaultFactory-addProtocol}
    function addProtocol(address implementation) external virtual override onlyOwner {
        uint16 protocolId = IVaultProtocol(implementation).protocolId();
        if(protocolId == 0) revert ZeroProtocol();// implementation protocolId is zero
        if(getProtocol[protocolId] != address(0)) revert ProtocolExists(); // protocolId already set
        if(IVaultProtocol(implementation).gvFactory() != address(this)) revert InvalidImplementation();

        getProtocol[protocolId] = implementation; // store implementation

        address beacon = address(new LockableMinimalBeacon(address(this), protocolId));
        getProtocolBeacon[protocolId] = beacon;// only set once

        emit AddProtocol(protocolId, implementation, beacon);
    }

    /// @dev See {IGammaVaultFactory-updateProtocol}
    function updateProtocol(uint16 protocolId, address newImplementation) external virtual override onlyOwner {
        _isProtocolNotSet(protocolId);
        if(IVaultProtocol(newImplementation).protocolId() == 0) revert ZeroProtocol();
        if(IVaultProtocol(newImplementation).protocolId() != protocolId) revert ProtocolMismatch();
        if(IVaultProtocol(newImplementation).gvFactory() != address(this)) revert InvalidImplementation();
        if(getProtocol[protocolId] == newImplementation) revert ProtocolExists(); // protocolId already set with same implementation
        if(LockableMinimalBeacon(getProtocolBeacon[protocolId]).protocol()!= address(0)) revert ProtocolLocked();
        getProtocol[protocolId] = newImplementation;

        emit UpdateProtocol(protocolId, newImplementation);
    }

    /// @dev See {IGammaVaultFactory-lockProtocol}
    function lockProtocol(uint16 protocolId) external virtual override onlyOwner {
        _isProtocolNotSet(protocolId);
        LockableMinimalBeacon(getProtocolBeacon[protocolId]).lock();

        emit LockProtocol(protocolId);
    }

    /// @dev Revert if key already maps to a GammaVault. This is used to avoid duplicating GammaVault instances
    /// @param key - unique key used to identify GammaVault instance (e.g. salt)
    function _hasVault(bytes32 key) internal virtual view {
        if(getVault[key] != address(0)) revert VaultExists();
    }

    /// @dev See {IGammaVaultFactory-getStrategy}
    function getStrategy(uint16 strategyId) external virtual override view returns(Strategy memory) {
        return strategy[strategyId];
    }

    /// @dev Create beacon proxy contract with protocolId implementation with predetermined address
    function _cloneDeterministic(address beacon, uint16 protocolId, bytes32 salt) internal virtual returns (address instance) {
        bytes memory bytecode = VaultAddressCalculator.calcMinimalBeaconProxyBytecode(beacon, protocolId, address(this));

        assembly {
            instance := create2(0, add(bytecode, 32), mload(bytecode), salt)
        }
        if(instance == address(0)) revert DeployFailed();
    }

    /// @dev Revert is strategyId is zero
    function _isStrategyIdValid(uint16 strategyId) internal virtual view {
        if(strategyId == 0) revert ZeroStrategyId(); // strategyId can't be zero
    }

    /// @dev Revert is strategy identified by strategyId is unset or has never been created
    function _isStrategyNotSet(uint16 strategyId) internal virtual view {
        Strategy memory _strategy = strategy[strategyId];
        if(!_strategy.isActive) revert StrategyNotSet();
    }

    /// @dev See {IGammaVaultFactory-setStrategyId}
    function setStrategyId(uint16 strategyId, uint64 range, uint64 ratio) external virtual override onlyOwner {
        _isStrategyIdValid(strategyId);
        if(strategy[strategyId].isActive) revert StrategyIsSet(); // strategyId already set
        if(!(range >= 5e16 && range <= 1e18)) revert InvalidStrategyRange();
        if(!(ratio >= 25e15 && ratio <= 1e18)) revert InvalidStrategyRatio();

        strategy[strategyId] = Strategy({
            range: range,
            ratio: ratio,
            isActive: true
        });

        emit SetStrategyId(strategyId, range, ratio);
    }

    /// @dev See {IGammaVaultFactory-unSetStrategyId}
    function unSetStrategyId(uint16 strategyId) external virtual override onlyOwner {
        _isStrategyIdValid(strategyId);
        _isStrategyNotSet(strategyId);
        strategy[strategyId].isActive = false;

        emit UnsetStrategyId(strategyId);
    }

    /// @dev Revert if GammaPool does not exist
    function _hasGammaPool(address gsPool) internal virtual {
        if(IGammaPoolFactory(gsFactory).getKey(gsPool) == bytes32(0)) revert GammaPoolDoesNotExist();
    }

    /// @dev See {IGammaVaultFactory-createVault}
    function createVault(CreateVaultParams memory createParams, bytes calldata data) external virtual override onlyOwner returns (address vault) {
        require(fundingVaultFactory != address(0), "FUNDING_VAULT_FACTORY_NOT_SET");
        require(getVaultByRefId[createParams.refId] == address(0), "USED_REFID");
        _isProtocolNotSet(createParams.protocolId); // check there is an implementation contract mapped to protocolId parameter
        _isStrategyIdValid(createParams.strategyId); // check strategy is valid
        _isStrategyNotSet(createParams.strategyId); // check if the strategy has been set
        _hasGammaPool(createParams.gsPool); // check if GammaPool exists

        IVaultProtocol.InitializeParameters memory params;
        params.strategyId = createParams.strategyId;
        params.assetToken = createParams.assetToken;
        params.lpPool = createParams.lpPool;
        params.gsPool = createParams.gsPool;
        params.startPrice = createParams.startPrice;
        params.refId = createParams.refId;

        // get implementation contract for protocolId parameter
        address implementation = getProtocol[createParams.protocolId]; // This is the GammaVault contract

        // check GammaVault can be created with this implementation
        (params.cfmm, params.token0, params.token1, params.tickSize, params.poolFee) =
            IVaultProtocol(implementation).validate(params.assetToken, params.lpPool, params.gsPool, data);

        bytes32 key = VaultAddressCalculator.getGammaVaultKey(params.assetToken, params.lpPool, params.gsPool, createParams.protocolId, params.strategyId);

        _hasVault(key); // check this instance hasn't already been created

        // instantiate GammaVault proxy contract address for protocol's implementation contract using unique key as salt for the vault's address
        vault = _cloneDeterministic(getProtocolBeacon[createParams.protocolId], createParams.protocolId, key);

        getVaultByRefId[params.refId] = vault;

        params.depositVault = IBeaconProxyFactory(fundingVaultFactory).deploy();
        IFundingProtocol(params.depositVault).initialize(vault, params.assetToken, true);

        params.withdrawVault = IBeaconProxyFactory(fundingVaultFactory).deploy();
        IFundingProtocol(params.withdrawVault).initialize(vault, params.assetToken, false);

        getVault[key] = vault; // map unique key to new instance of GammaVault
        getKey[vault] = key; // map unique key to new instance of GammaVault

        allVaults.push(vault); // store new GammaVault instance in an array

        IVaultProtocol(vault).initialize(params, data); // initialize GammaVault's state variables

        emit VaultCreated(createParams.protocolId, params.strategyId, params.assetToken, params.lpPool, params.gsPool,
            implementation, params.refId, vault, params.depositVault, params.withdrawVault, allVaults.length); // store creation details in blockchain
    }

    /// @dev See {IGammaVaultFactory-feeInfo}
    function feeInfo() external virtual override view returns(uint16, address) {
        return (fee, feeTo);
    }

    /// @dev See {IGammaVaultFactory-setFee}
    function setFee(uint16 _fee) external virtual override onlyOwner {
        fee = _fee;
        emit UpdateFee(_fee);
    }

    /// @dev See {IGammaVaultFactory-setFeeTo}
    function setFeeTo(address _feeTo) external virtual override onlyOwner {
        feeTo = _feeTo;
        emit UpdateFeeTo(_feeTo);
    }

    /// @dev Revert if address is zero address
    function _checkZeroAddress(address addr) internal virtual view {
        require(addr != address(0), "ZERO_ADDRESS");
    }

    /// @dev Revert if vault address has not been created by this factory
    /// @param vault - address of vault contract to check
    function _checkVaultExists(address vault) internal virtual view {
        require(getKey[vault] != bytes32(0), "VAULT_DOES_NOT_EXIST");
    }

    /// @dev Throw error if vault is zero address or vault contract has not been created
    /// @param vault - address of vault contract to check
    function _validateVault(address vault) internal virtual view {
        _checkZeroAddress(vault);
        _checkVaultExists(vault);
    }

    /// @dev See {IGammaVaultFactory-setPeriodLength}
    function setPeriodLength(address vault, uint256 periodLength) external virtual override onlyOwner {
        _validateVault(vault);
        address depositVault = IVaultProtocol(vault).depositVault();
        address withdrawVault = IVaultProtocol(vault).withdrawVault();
        IFundingProtocol(depositVault).setPeriodLength(periodLength);
        IFundingProtocol(withdrawVault).setPeriodLength(periodLength);
    }

    /// @dev See {IGammaVaultFactory-setPeriodExpiration}
    function setPeriodExpiration(address vault, uint256 periodExpiration) external virtual override onlyOwner {
        _validateVault(vault);
        address depositVault = IVaultProtocol(vault).depositVault();
        address withdrawVault = IVaultProtocol(vault).withdrawVault();
        IFundingProtocol(depositVault).setPeriodExpiration(periodExpiration);
        IFundingProtocol(withdrawVault).setPeriodExpiration(periodExpiration);
    }

    /// @dev See {IGammaVaultFactory-pause}
    function pause(address target, uint8 functionId) external override virtual onlyOwner {
        _checkZeroAddress(target);
        IPausable(target).pause(functionId);
    }

    /// @dev See {IGammaVaultFactory-unpause}
    function unpause(address target, uint8 functionId) external override virtual onlyOwner {
        _checkZeroAddress(target);
        IPausable(target).unpause(functionId);
    }
}
