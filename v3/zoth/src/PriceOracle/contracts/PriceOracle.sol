// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol';
import './interfaces/priceOracles/IPriceOracle.sol';
import './interfaces/errors/ISystemErrors.sol';
import './interfaces/helpers/IOracle.sol';
import './libraries/SystemRoles.sol';

/**
 * @title Price Oracle Manager
 * @author ZeUSD Protocol Team
 * @notice Manages price oracles for protocol assets
 * @dev Implements UUPS upgradeable pattern with role-based access control and ERC7201 storage pattern
 *
 * The PriceOracle contract serves as a central manager for all price feeds within the ZeUSD protocol.
 * It aggregates and standardizes price data from various oracle sources, ensuring consistent
 * and reliable price information for protocol operations. The contract implements mechanisms
 * to prevent the use of stale or manipulated price data.
 *
 * Core Functionality:
 * - Asset price oracle management and configuration
 * - Price staleness validation with configurable thresholds
 * - Graceful handling of failed price lookups
 * - Standardized price query interface for protocol components
 *
 * Price Validation:
 * - Each asset has configurable staleness thresholds
 * - Default fallback threshold for new assets
 * - Maximum threshold cap to prevent extreme values
 * - Validation of returned values (non-negative)
 *
 * Storage Architecture:
 * - Uses ERC7201 namespaced storage pattern for upgrade safety
 * - Storage struct containing all state variables
 * - Constant storage slot to prevent collisions
 *
 * @custom:roles-and-capabilities
 * ORCHESTRATOR_ROLE:
 * - Configure asset price oracles
 * - Set staleness thresholds for price feeds
 * - Update default staleness threshold
 *
 * GUARDIAN_ROLE:
 * - Perform contract upgrades via UUPS pattern
 *
 * Security Considerations:
 * - Reentrancy protection on all state-modifying functions
 * - Staleness checks to prevent use of outdated prices
 * - Access control restrictions on configuration operations
 * - Graceful error handling for oracle interactions
 * - Input validation for configuration parameters
 *
 * @custom:security-contact tech@zoth.io
 */
contract PriceOracle is
    IPriceOracle,
    ISystemErrors,
    UUPSUpgradeable,
    AccessManagedUpgradeable,
    ReentrancyGuardUpgradeable
{
    /**
     * @notice Maximum allowable staleness threshold (7 days)
     * @dev Used to prevent setting an unreasonably high threshold that could allow stale prices
     */
    uint256 public constant MAX_STALENESS_THRESHOLD = Constants.ONE_WEEK;

    /**
     * @notice Main storage structure for the price oracle
     * @dev All state variables should be added here to maintain upgradeability
     * @custom:security-considerations Ensure proper initialization in upgrades
     */
    struct Storage {
        uint256 defaultStalenessThreshold;
        mapping(address => address) assetOracles;
        mapping(address => uint256) stalenessPeriods;
    }

    /**
     * @notice Storage location for ERC7201 pattern
     * @dev keccak256(abi.encode(uint256(keccak256("zeusd.price.oracle.storage")) - 1)) & ~bytes32(uint256(0xff))
     * @custom:security Critical for storage layout - do not modify
     */
    bytes32 private constant STORAGE_LOCATION =
        0xbe1d7db1a43de1ff1062e89209ef71e68afd0e9b4763f64a22313666a1ca1300;

    /**
     * @notice Gets storage reference using ERC7201 pattern
     * @return $ Storage pointer to PriceOracleStorage
     */
    function _getStorage() private pure returns (Storage storage $) {
        bytes32 location = STORAGE_LOCATION;
        assembly {
            $.slot := location
        }
    }

    /**
     * @dev Prevents implementation contract from being initialized
     * @custom:oz-upgrades-unsafe-allow constructor
     */
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the price oracle contract
     * @param _accessManager Address of the AccessManager contract
     * @custom:security Only callable once
     */
    function initialize(address _accessManager) external initializer {
        if (_accessManager == address(0)) revert InvalidAddressError(_accessManager);

        __UUPSUpgradeable_init();
        __AccessManaged_init(_accessManager);
        __ReentrancyGuard_init();

        Storage storage $ = _getStorage();
        $.defaultStalenessThreshold = Constants.ONE_DAY;
    }

    /**
     * @notice Gets the access manager interface
     * @return The access manager contract instance
     */
    function accessManager() external view returns (IAccessManager) {
        return IAccessManager(authority());
    }

    /**
     * @notice Sets oracle and staleness threshold for an asset
     * @param asset Asset address
     * @param oracle Oracle address
     * @param threshold Staleness threshold in seconds (optional, 0 for no change, otherwise must be less than or equal to the maximum allowed threshold)
     * @custom:security Only callable by ORCHESTRATOR_ROLE
     * @custom:emits AssetOracleSet, StalenessThresholdSet
     */
    function setAssetOracleAndThreshold(
        address asset,
        address oracle,
        uint256 threshold
    ) external override nonReentrant restricted {
        Storage storage $ = _getStorage();

        if (asset == address(0)) revert InvalidAddressError(asset);
        if (oracle == address(0)) revert InvalidAddressError(oracle);

        $.assetOracles[asset] = oracle;
        emit AssetOracleSet(asset, oracle);

        if (threshold > 0) {
            if (threshold > MAX_STALENESS_THRESHOLD)
                revert InvalidParameter('Threshold exceeds maximum allowed value');
            $.stalenessPeriods[asset] = threshold;
            emit StalenessThresholdSet(asset, threshold);
        } else {
            // Reset to default threshold by setting to 0 (which means use default in getOraclePrice)
            $.stalenessPeriods[asset] = 0;
            emit StalenessThresholdSet(asset, 0);
        }
    }

    /**
     * @notice Sets default staleness threshold
     * @param threshold Default threshold in seconds (must be greater than zero and less than or equal to the maximum allowed threshold)
     * @custom:security Only callable by ORCHESTRATOR_ROLE
     * @custom:emits DefaultStalenessThresholdSet
     */
    function setDefaultStalenessThreshold(
        uint256 threshold
    ) external override nonReentrant restricted {
        Storage storage $ = _getStorage();

        if (threshold == 0) revert InvalidParameter('Threshold cannot be zero');
        if (threshold > MAX_STALENESS_THRESHOLD)
            revert InvalidParameter('Threshold exceeds maximum allowed value');

        $.defaultStalenessThreshold = threshold;
        emit DefaultStalenessThresholdSet(threshold);
    }

    /**
     * @notice Gets oracle price for an asset
     * @param asset Asset address
     * @return price Current price
     * @return success Whether price fetch was successful
     */
    function getOraclePrice(
        address asset
    ) external view override returns (uint256 price, bool success) {
        Storage storage $ = _getStorage();

        address oracle = $.assetOracles[asset];
        if (oracle == address(0)) return (0, false);

        uint256 staleness = $.stalenessPeriods[asset];
        if (staleness == 0) staleness = $.defaultStalenessThreshold;

        try IOracle(oracle).latestRoundData() returns (
            uint80 /*roundId*/,
            int256 answer,
            uint256 /*startedAt*/,
            uint256 updatedAt,
            uint80 /*answeredInRound*/
        ) {
            if (answer <= 0) return (0, false);
            if (block.timestamp - updatedAt > staleness) return (0, false);
            return (uint256(answer), true);
        } catch {
            return (0, false);
        }
    }

    /**
     * @notice Gets asset oracle address and staleness threshold
     * @param asset Asset address
     * @return oracle Oracle address
     * @return threshold Staleness threshold in seconds
     */
    function getAssetOracleAndThreshold(
        address asset
    ) external view override returns (address oracle, uint256 threshold) {
        Storage storage $ = _getStorage();
        oracle = $.assetOracles[asset];
        threshold = $.stalenessPeriods[asset];
        if (threshold == 0) {
            threshold = $.defaultStalenessThreshold;
        }
        return (oracle, threshold);
    }

    /**
     * @notice Gets default staleness threshold
     * @return Default threshold in seconds
     */
    function getDefaultStalenessThreshold() external view override returns (uint256) {
        return _getStorage().defaultStalenessThreshold;
    }

    /**
     * @notice Gets the maximum allowed staleness threshold
     * @return Maximum threshold in seconds
     */
    function getMaxStalenessThreshold() external pure override returns (uint256) {
        return MAX_STALENESS_THRESHOLD;
    }

    /**
     * @notice Authorizes contract upgrades
     * @custom:security Critical upgrade operation, only callable by GUARDIAN_ROLE
     */
    function _authorizeUpgrade(address newImplementation) internal override restricted {}
}
