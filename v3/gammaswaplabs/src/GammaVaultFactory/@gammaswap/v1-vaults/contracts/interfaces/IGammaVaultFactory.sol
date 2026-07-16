// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.0;

/// @title Interface for GammaVaultFactory contracts.
/// @author Daniel D. Alcarraz (https://github.com/0xDanr)
/// @dev All instantiated GammaVaultFactory contracts must implement this interface
interface IGammaVaultFactory {

    /// @dev Emitted when vault is created
    event VaultCreated(uint16 indexed protocolId, uint16 indexed strategyId, address indexed assetToken, address lpPool,
        address gsPool, address implementation, uint16 refId, address vault, address depositVault, address withdrawVault, uint256 count);

    /// @dev Emitted when a new protocol implementation is defined
    event AddProtocol(uint16 protocolId, address implementation, address beacon);

    /// @dev Emitted when a protocol implementation is updated
    event UpdateProtocol(uint16 protocolId, address implementation);

    /// @dev Emitted when a new strategy is created or its parameters (range and ratio) are updated
    event SetStrategyId(uint16 indexed strategyId, uint64 range, uint64 ratio);

    /// @dev Emitted when a strategy is unset so new Vaults with this strategy can't be created
    event UnsetStrategyId(uint16 indexed strategyId);

    /// @dev Emitted when a protocol implementation is locked
    event LockProtocol(uint16 protocolId);

    /// @dev Emitted when a protocol fee is updated
    event UpdateFee(uint16 fee);

    /// @dev Emitted when a protocol fee receiver is updated
    event UpdateFeeTo(address feeTo);

    /// @dev Vault parameters used to create new Vaults
    struct CreateVaultParams {
        /// @dev protocolId of vault implementation contract
        uint16 protocolId;
        /// @dev strategyId identifying strategy (concentrated liquidity range and GS ratio) that will be used to create Vault
        uint16 strategyId;
        /// @dev Reference Id used to identify Vault in corresponding GammaPool. Must be unique for all of GammaSwap
        uint16 refId;
        /// @dev Address of token to maintain delta neutral value in Vault
        address assetToken;
        /// @dev Address of concentrated liquidity pool used in vault strategy
        address lpPool;
        /// @dev Address of GammaSwap pool used to hedge concentrated liquidity position
        address gsPool;
        /// @dev mid point price of concentrated liquidity position's range. Must be close to current price
        uint256 startPrice;
    }

    /// @dev Struct that defines strategy for a vault
    struct Strategy {
        /// @dev Range of concentrated liquidity position as an 18 decimal number (e.g. 3e17 = 30%)
        uint64 range;
        /// @dev Ratio of GammaSwap hedge position's collateral as an 18 decimal number (e.g. 5e17 = 0.5)
        uint64 ratio;
        /// @dev Is true strategy is active, if false strategy is unset (can't create vaults with this strategy).
        bool isActive;
    }

    /// @dev Initialize VaultFactory by setting funding vault factory contract
    /// @param _fundingVaultFactory - address of factory contract to create funding vaults
    function initialize(address _fundingVaultFactory) external;

    /// @dev Get GammaSwap factory contract
    function gsFactory() external view returns(address);

    /// @dev Get Vault Contract mapped to RefId
    function getVaultByRefId(uint16 refId) external view returns(address);

    /// @dev Get Strategy struct mapped to _strategyId
    function getStrategy(uint16 strategyId) external view returns(Strategy memory);

    /// @dev Get funding vault factory contract address
    function fundingVaultFactory() external view returns (address);

    /// @dev Set strategy parameters for strategyId
    /// @param strategyId - id to identify strategy parameters
    /// @param range - range of concentrated liquidity position as an 18 decimal number (E.g. 3e17 = 30%)
    /// @param ratio - ratio of GS collateral as an 18 decimal number (E.g. 5e17 = 50%)
    function setStrategyId(uint16 strategyId, uint64 range, uint64 ratio) external;

    /// @dev Unset strategyId. Strategy must be unset before it can be modified.
    /// @param strategyId - id of strategy to unset
    function unSetStrategyId(uint16 strategyId) external;

    /// @dev Get vault contract by _key. Returns non zero address if vault exists
    /// @param key - unique key that identifies vault contract
    /// @return vault contract mapped to _key
    function getVault(bytes32 key) external view returns(address);

    /// @dev Get key that maps to vault contract. Returns empty key if vault does not exist
    /// @param vault - address of vault contract
    /// @return bytes32 key mapped to _vault address
    function getKey(address vault) external view returns(bytes32);

    /// @dev Add vault implementation contract to create vaults with this Factory contract
    /// @param implementation - address of implementation contract to use to create vault proxy contracts
    function addProtocol(address implementation) external;

    /// @dev Get vault implementation contract for _protocolId
    /// @param protocolId - id of implementation contract used to define Vault contract
    /// @return implementation - implementation contract of Vault proxy contract
    function getProtocol(uint16 protocolId) external view returns (address implementation);

    /// @dev Update implementation contract of protocolId
    /// @param protocolId - protocolId of implementation contract to update
    /// @param newImplementation - new implementation contract for protocolId
    function updateProtocol(uint16 protocolId, address newImplementation) external;

    /// @dev lock protocolId's implementation contract to prevent future updates
    /// @param protocolId - id of protocol to lock
    function lockProtocol(uint16 protocolId) external;

    /// @dev Get Beacon proxy contract mapped to protocolId
    /// @param protocolId - id of implementation contract used to define Vault contract
    /// @return beacon - address of beacon contract that points to implementation contract mapped to protocolId
    function getProtocolBeacon(uint16 protocolId) external view returns (address beacon);

    /// @dev Get protocol fee information for all vault contracts created by this factory
    /// @return _fee - fee in basis points charged to Vault contract. Charged as share of Vault yield
    /// @return _feeTo - receiver of fee from Vault contract
    function feeInfo() external view returns(uint16 _fee, address _feeTo);

    /// @dev Update protocol fee charged to vault contracts
    /// @param _fee - fee in basis points charged to vault contracts. Charged as share of Vault yield
    function setFee(uint16 _fee) external;

    /// @dev Set receiver of protocol fees
    /// @param _feeTo - address of protocol fee receiver
    function setFeeTo(address _feeTo) external;

    /// @dev Get number of Vaults created by factory contract
    function allVaultsLength() external view returns (uint256);

    /// @dev Create vault contract
    /// @param params - parameters to define vault contract
    /// @param data - additional data to define vault contract (optional, depending on the vault implementation)
    /// @return address of newly created vault contract
    function createVault(CreateVaultParams memory params, bytes calldata data) external returns (address);

    /// @dev Set length a vault period will last in seconds
    /// @param vault - address of vault contract whose period length will be updated
    /// @param periodLength - length of period in seconds
    function setPeriodLength(address vault, uint256 periodLength) external;

    /// @dev Set network timestamp at which vault period will expire
    /// @param vault - address of vault contract whose period expiration will be updated
    /// @param periodExpiration - datetime in seconds at which time period will expire
    function setPeriodExpiration(address vault, uint256 periodExpiration) external;

    /// @dev Pause function identified by functionId in target contract
    /// @param target - address of pausable contract (e.g. funding vault contract)
    /// @param functionId - id of function to pause
    function pause(address target, uint8 functionId) external;

    /// @dev Unpause function identified by functionId in target contract
    /// @param target - address of pausable contract (e.g. funding vault contract)
    /// @param functionId - id of function to unpause
    function unpause(address target, uint8 functionId) external;
}
