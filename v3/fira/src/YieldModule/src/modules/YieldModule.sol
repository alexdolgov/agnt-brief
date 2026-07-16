// SPDX-License-Identifier: Apache-2.0

pragma solidity 0.8.20;

import {PausableUpgradeable} from "openzeppelin-contracts-upgradeable/utils/PausableUpgradeable.sol";
import {Math} from "openzeppelin-contracts/utils/math/Math.sol";
import {SafeCast} from "openzeppelin-contracts/utils/math/SafeCast.sol";
import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";

import {IAggregator} from "src/interfaces/oracles/IAggregator.sol";
import {IYieldModule} from "src/interfaces/modules/IYieldModule.sol";
import {IRegistryContract} from "src/interfaces/registry/IRegistryContract.sol";
import {IRegistryAccess} from "src/interfaces/registry/IRegistryAccess.sol";
import {CheckAccessControl} from "src/utils/CheckAccessControl.sol";
import {IOracle} from "src/interfaces/oracles/IOracle.sol";
import {ITokenMapping} from "src/interfaces/tokenManager/ITokenMapping.sol";
import {
    YIELD_MODULE_TOKENOMICS_OPERATOR_ROLE,
    YIELD_MODULE_SUPER_ADMIN_ROLE,
    YIELD_MODULE_P90_INTEREST_ROLE,
    YIELD_MODULE_MAX_DATA_AGE_ROLE,
    YIELD_MODULE_UPDATER_ROLE,
    PAUSING_CONTRACTS_ROLE,
    DEFAULT_ADMIN_ROLE,
    DEFAULT_YIELD_FEED_RATE,
    INITIAL_YIELD_MODULE_MAX_DATA_AGE,
    CONTRACT_REGISTRY_ACCESS,
    CONTRACT_ORACLE,
    CONTRACT_TOKEN_MAPPING,
    BASIS_POINT_BASE
} from "src/constants.sol";
import {
    YieldSourceNotFound,
    YieldSourceDataTooOld,
    YieldSourceAlreadyExists,
    NullContract,
    MaxDataAgeZero,
    InvalidFeed,
    NullAddress,
    SameValue,
    InvalidWeeklyInterestBps,
    TreasuryAlreadyExists,
    TreasuryNotFound,
    InvalidInput
} from "src/errors.sol";

/// @title YieldModule
/// @notice Contract for blending various assets in treasury interest rates.
/// @dev Uses Chainlink V3 interfaces for oracle data and manual overrides for fallback
contract YieldModule is PausableUpgradeable, IYieldModule {
    using CheckAccessControl for IRegistryAccess;
    using SafeCast for int256;
    using SafeCast for uint256;

    /*//////////////////////////////////////////////////////////////
                                Events
    //////////////////////////////////////////////////////////////*/

    /// @notice Emitted when a new YieldSource is added.
    event YieldSourceAdded(
        address indexed asset, address indexed feedAddress, uint256 weeklyInterestBps
    );

    /// @notice Emitted when a YieldSource is removed.
    event YieldSourceRemoved(address indexed asset);

    /// @notice Emitted when a YieldSource interest rate is updated.
    event InterestRateUpdated(address indexed asset, uint256 weeklyInterestBps);

    /// @notice Emitted when a YieldSource interest rate is overridden.
    event InterestRateOverridden(address indexed asset, uint256 weeklyInterestBps);

    /// @notice Emitted when an YieldSource feed is updated.
    event FeedUpdated(address indexed asset, address indexed feedAddress);

    /// @notice Emitted when the maximum data age is set.
    event MaxDataAgeSet(uint256 maxDataAge);

    /// @notice Emitted when the P90 interest rate is set.
    event P90InterestRateSet(uint256 p90Rate);

    /// @notice Emitted when a treasury is removed.
    event TreasuryRemoved(address indexed treasury);

    /// @notice Emitted when a treasury is added.
    event TreasuryAdded(address indexed treasury);

    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @custom:storage-location erc7201:YieldModule.storage.v0
    struct YieldModuleStorageV0 {
        /// The address of the registry contract.
        IRegistryContract registryContract;
        /// The address of the registry access contract.
        IRegistryAccess registryAccess;
        /// The address of the oracle contract.
        IOracle oracle;
        /// The address of the token mapping contract.
        ITokenMapping tokenMapping;
        /// Maximum data age
        uint256 maxDataAge;
        /// P90 interest rate
        uint256 p90Rate;
        /// Mapping of yield sources
        mapping(address => YieldSourceData) yieldSources;
        /// Array of treasury addresses
        address[] treasuries;
    }

    // keccak256(abi.encode(uint256(keccak256("YieldModule.storage.v0")) - 1)) & ~bytes32(uint256(0xff))
    // solhint-disable-next-line
    bytes32 public constant YieldModuleStorageV0Location =
        0x78c0d34884bf8d0cac6810bafad21ac3cbbe678f28b9d1e3ae3dde64377fa000;

    /*//////////////////////////////////////////////////////////////
                             Constructor
    //////////////////////////////////////////////////////////////*/

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initializes the contract with a registry contract
    /// @param registryContract Address of the registry contract for contracts management.
    function initialize(address registryContract) public initializer {
        if (registryContract == address(0)) {
            revert NullContract();
        }

        if (INITIAL_YIELD_MODULE_MAX_DATA_AGE == 0) {
            revert MaxDataAgeZero();
        }

        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();

        __Pausable_init_unchained();

        $.registryContract = IRegistryContract(registryContract);
        $.registryAccess = IRegistryAccess($.registryContract.getContract(CONTRACT_REGISTRY_ACCESS));
        $.oracle = IOracle($.registryContract.getContract(CONTRACT_ORACLE));
        $.tokenMapping = ITokenMapping($.registryContract.getContract(CONTRACT_TOKEN_MAPPING));
        $.maxDataAge = INITIAL_YIELD_MODULE_MAX_DATA_AGE;
        emit MaxDataAgeSet($.maxDataAge);
    }

    /*//////////////////////////////////////////////////////////////
                                External
    //////////////////////////////////////////////////////////////*/

    /// @notice Pauses all yield module operations.
    /// @dev Can only be called by an account with the PAUSING_CONTRACTS_ROLE.
    function pause() external {
        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();
        $.registryAccess.onlyMatchingRole(PAUSING_CONTRACTS_ROLE);
        _pause();
    }

    /// @notice Unpauses all yield module operations.
    /// @dev Can only be called by an account with the DEFAULT_ADMIN_ROLE.
    function unpause() external {
        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();
        $.registryAccess.onlyMatchingRole(DEFAULT_ADMIN_ROLE);
        _unpause();
    }

    /// @inheritdoc IYieldModule
    function addYieldSourceWithFeed(address asset, address feedAddress) external whenNotPaused {
        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();
        $.registryAccess.onlyMatchingRole(YIELD_MODULE_TOKENOMICS_OPERATOR_ROLE);

        _validateFeedInterface(feedAddress);
        _validateAndCreateYieldSource(asset, feedAddress, DEFAULT_YIELD_FEED_RATE);
    }

    /// @inheritdoc IYieldModule
    function addYieldSourceWithWeeklyInterest(address asset, uint256 weeklyInterestBps)
        external
        whenNotPaused
    {
        if (weeklyInterestBps > BASIS_POINT_BASE) {
            revert InvalidWeeklyInterestBps();
        }
        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();
        $.registryAccess.onlyMatchingRole(YIELD_MODULE_TOKENOMICS_OPERATOR_ROLE);

        _validateAndCreateYieldSource(asset, address(0), weeklyInterestBps);
    }

    /// @inheritdoc IYieldModule
    function removeYieldSource(address asset) external whenNotPaused {
        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();
        $.registryAccess.onlyMatchingRole(YIELD_MODULE_SUPER_ADMIN_ROLE);

        if ($.yieldSources[asset].lastUpdated == 0) {
            revert YieldSourceNotFound();
        }

        delete $.yieldSources[asset];

        emit YieldSourceRemoved(asset);
    }

    /// @inheritdoc IYieldModule
    function removeTreasury(address treasury) external whenNotPaused {
        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();
        $.registryAccess.onlyMatchingRole(YIELD_MODULE_SUPER_ADMIN_ROLE);

        bool found = false;
        for (uint256 i = 0; i < $.treasuries.length;) {
            if ($.treasuries[i] == treasury) {
                // Move last treasury to current position, treasury order is not important
                $.treasuries[i] = $.treasuries[$.treasuries.length - 1];
                $.treasuries.pop();
                emit TreasuryRemoved(treasury);
                found = true;
                break;
            }
            unchecked {
                ++i;
            }
        }

        if (!found) {
            revert TreasuryNotFound();
        }
    }

    /// @inheritdoc IYieldModule
    function addTreasury(address treasury) external whenNotPaused {
        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();
        $.registryAccess.onlyMatchingRole(YIELD_MODULE_SUPER_ADMIN_ROLE);
        if (treasury == address(0)) {
            revert NullAddress();
        }
        for (uint256 i = 0; i < $.treasuries.length;) {
            if ($.treasuries[i] == treasury) {
                revert TreasuryAlreadyExists();
            }
            unchecked {
                ++i;
            }
        }

        $.treasuries.push(treasury);
        emit TreasuryAdded(treasury);
    }

    /// @inheritdoc IYieldModule
    function updateInterestRate(address asset, uint256 weeklyInterestBps) external whenNotPaused {
        if (weeklyInterestBps > BASIS_POINT_BASE) {
            revert InvalidWeeklyInterestBps();
        }
        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();
        $.registryAccess.onlyMatchingRole(YIELD_MODULE_UPDATER_ROLE);
        YieldSourceData storage source = _getYieldSource(asset);

        // If the yield source is using an oracle, we need to override the interest rate
        if (source.feed != IAggregator(address(0))) {
            source.weeklyInterestBps = weeklyInterestBps;
            source.lastUpdated = block.timestamp;
            source.feed = IAggregator(address(0)); // disable oracle until next manual update

            emit InterestRateOverridden(asset, source.weeklyInterestBps);
        } else {
            // If the yield source is using a manual rate (no oracle), update the interest rate
            source.weeklyInterestBps = weeklyInterestBps;
            source.lastUpdated = block.timestamp;

            emit InterestRateUpdated(asset, source.weeklyInterestBps);
        }
    }

    /// @inheritdoc IYieldModule
    function updateFeed(address asset, address feedAddress) external whenNotPaused {
        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();
        $.registryAccess.onlyMatchingRole(YIELD_MODULE_UPDATER_ROLE);

        YieldSourceData storage source = _getYieldSource(asset);
        _validateFeedInterface(feedAddress);

        source.feed = IAggregator(feedAddress);
        source.lastUpdated = block.timestamp;
        if (source.weeklyInterestBps != 0) {
            source.weeklyInterestBps = 0;
        }
        emit FeedUpdated(asset, feedAddress);
    }

    /// @inheritdoc IYieldModule
    function setMaxDataAge(uint256 maxDataAge) external whenNotPaused {
        if (maxDataAge == 0) revert MaxDataAgeZero();

        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();
        $.registryAccess.onlyMatchingRole(YIELD_MODULE_MAX_DATA_AGE_ROLE);
        if ($.maxDataAge == maxDataAge) revert SameValue();

        $.maxDataAge = maxDataAge;
        emit MaxDataAgeSet($.maxDataAge);
    }

    /// @inheritdoc IYieldModule
    function setP90InterestRate(uint256 p90Rate) external whenNotPaused {
        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();
        $.registryAccess.onlyMatchingRole(YIELD_MODULE_P90_INTEREST_ROLE);
        // P90 rate should be less than 10000 basis points
        if (p90Rate == 0 || p90Rate >= BASIS_POINT_BASE) {
            revert InvalidInput();
        }
        if ($.p90Rate == p90Rate) revert SameValue();

        $.p90Rate = p90Rate;

        emit P90InterestRateSet(p90Rate);
    }

    /// @inheritdoc IYieldModule
    function getMaxDataAge() external view returns (uint256) {
        return _yieldModuleStorageV0().maxDataAge;
    }

    /// @inheritdoc IYieldModule
    function getBlendedWeeklyInterest() public view whenNotPaused returns (uint256 blendedRate) {
        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();
        uint256 totalValue = 0;
        uint256 weightedSum = 0;

        address[] memory rwas = $.tokenMapping.getAllUsd0Rwa();
        // Iterate over each stored rwa/asset.
        for (uint256 i = 0; i < rwas.length;) {
            address rwa = rwas[i];
            // fetch the current interest rate from the oracle feed
            // go over all treasuries to calculate the total rwa balance across all treasuries
            (uint256 rate, uint256 balance) = _getYieldSourceRateAndAmount(rwa);
            if (balance > 0) {
                uint256 price = $.oracle.getPrice(rwa);
                uint8 decimals = IERC20Metadata(rwa).decimals();
                // update the totalValue in USD accordingly
                uint256 assetValue = Math.mulDiv(price, balance, 10 ** decimals);
                totalValue += assetValue;
                // Update the weightedSum accordingly.
                weightedSum += rate * assetValue;
            }

            unchecked {
                ++i;
            }
        }
        // calculate the weeklyBlendedInterestRate
        blendedRate =
            totalValue > 0 ? Math.mulDiv(weightedSum, 1, totalValue, Math.Rounding.Floor) : 0;

        if (blendedRate > BASIS_POINT_BASE) revert InvalidWeeklyInterestBps();
    }

    /// @inheritdoc IYieldModule
    function getP90InterestRate() public view whenNotPaused returns (uint256) {
        return _yieldModuleStorageV0().p90Rate;
    }

    /// @inheritdoc IYieldModule
    function getYieldSource(address asset) external view returns (YieldSourceData memory) {
        return _getYieldSource(asset);
    }

    /// @inheritdoc IYieldModule
    function getYieldSourceCount() external view returns (uint256) {
        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();
        address[] memory rwas = $.tokenMapping.getAllUsd0Rwa();
        uint256 count = 0;

        for (uint256 i = 0; i < rwas.length;) {
            if ($.yieldSources[rwas[i]].lastUpdated != 0) {
                unchecked {
                    ++count;
                }
            }
            unchecked {
                ++i;
            }
        }
        return count;
    }

    /// @inheritdoc IYieldModule
    function getAllYieldSourceData() external view returns (YieldSourceData[] memory) {
        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();
        address[] memory rwas = $.tokenMapping.getAllUsd0Rwa();
        uint256 count = 0;

        // First count valid yield sources
        for (uint256 i = 0; i < rwas.length;) {
            if ($.yieldSources[rwas[i]].lastUpdated != 0) {
                unchecked {
                    ++count;
                }
            }
            unchecked {
                ++i;
            }
        }

        YieldSourceData[] memory yieldSources = new YieldSourceData[](count);
        count = 0;

        // Then populate the array
        for (uint256 i = 0; i < rwas.length;) {
            address rwa = rwas[i];
            if ($.yieldSources[rwa].lastUpdated != 0) {
                yieldSources[count] = $.yieldSources[rwa];
                unchecked {
                    ++count;
                }
            }
            unchecked {
                ++i;
            }
        }
        return yieldSources;
    }

    /// @inheritdoc IYieldModule
    function getTreasuryCount() external view returns (uint256) {
        return _yieldModuleStorageV0().treasuries.length;
    }

    /// @inheritdoc IYieldModule
    function getAllTreasury() external view returns (address[] memory) {
        return _yieldModuleStorageV0().treasuries;
    }

    /*//////////////////////////////////////////////////////////////
                                Internal
    //////////////////////////////////////////////////////////////*/

    /// @notice Returns the storage struct of the contract.
    /// @return $ .
    function _yieldModuleStorageV0() internal pure returns (YieldModuleStorageV0 storage $) {
        bytes32 position = YieldModuleStorageV0Location;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            $.slot := position
        }
    }

    /// @notice Creates a new yield source
    /// @param asset The address of the asset
    /// @param feed The address of the feed
    /// @param rate The rate of the yield source
    function _validateAndCreateYieldSource(address asset, address feed, uint256 rate) private {
        if (asset == address(0)) revert NullAddress();

        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();
        if ($.yieldSources[asset].lastUpdated != 0) {
            revert YieldSourceAlreadyExists();
        }

        $.yieldSources[asset] = YieldSourceData({
            feed: IAggregator(feed),
            weeklyInterestBps: rate,
            lastUpdated: block.timestamp
        });

        emit YieldSourceAdded(asset, feed, rate);
    }

    /// @notice Validates Chainlink feed contract interface
    /// @param feedAddress The address of the feed contract
    function _validateFeedInterface(address feedAddress) private view {
        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();

        // Fetch the latest round data from the feed
        // slither-disable-next-line unused-return
        (,,, uint256 updatedAt, uint80 answeredInRound) = IAggregator(feedAddress).latestRoundData();

        // Validate the feed data integrity
        if (answeredInRound == 0 || updatedAt == 0) revert InvalidFeed();

        // Ensure data is recent enough
        if (block.timestamp - updatedAt > $.maxDataAge) revert YieldSourceDataTooOld();
    }

    /// @notice Returns the yield source data for a given asset address
    /// @param asset The address of the asset to get the yield source data for
    /// @return source The yield source data
    function _getYieldSource(address asset) private view returns (YieldSourceData storage) {
        if (asset == address(0)) revert NullAddress();

        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();
        if ($.yieldSources[asset].lastUpdated == 0) {
            revert YieldSourceNotFound();
        }

        return $.yieldSources[asset];
    }

    /// @notice Returns the latest valid rate and amount for an yield source in USD
    /// @param asset The address of the asset to get the yield source data for
    /// @return rate The latest valid rate for the yield source
    /// @return amount The asset amount across all treasuries
    function _getYieldSourceRateAndAmount(address asset)
        private
        view
        returns (uint256 rate, uint256 amount)
    {
        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();
        YieldSourceData memory source = _getYieldSource(asset);
        // Try to get oracle rate first
        if (source.feed != IAggregator(address(0))) {
            // slither-disable-next-line unused-return
            (, int256 oracleRate,, uint256 updatedAt,) = source.feed.latestRoundData();

            if (updatedAt == 0) revert InvalidFeed();
            if (block.timestamp - updatedAt > $.maxDataAge) revert YieldSourceDataTooOld();
            if (oracleRate < 0) oracleRate = 0;

            rate = oracleRate.toUint256();
            if (rate > BASIS_POINT_BASE) revert InvalidWeeklyInterestBps();
        } else {
            if (block.timestamp - source.lastUpdated > $.maxDataAge) {
                revert YieldSourceDataTooOld();
            }
            rate = source.weeklyInterestBps;
        }

        amount = _getAssetBacking(asset);
    }

    /// @notice Calculates the backing amount of an asset inside our treasuries
    /// @param asset The address of the asset to calculate the backing amount for
    /// @return totalAmount The backing amount of the asset sitting in our treasuries
    function _getAssetBacking(address asset) internal view returns (uint256) {
        YieldModuleStorageV0 storage $ = _yieldModuleStorageV0();
        uint256 totalAmount = 0;
        for (uint256 i = 0; i < $.treasuries.length;) {
            address treasury = $.treasuries[i];
            totalAmount += IERC20(asset).balanceOf(treasury);
            unchecked {
                ++i;
            }
        }

        return totalAmount;
    }
}
