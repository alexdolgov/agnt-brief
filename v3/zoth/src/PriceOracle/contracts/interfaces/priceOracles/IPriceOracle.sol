// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

/**
 * @title Price Oracle Interface
 * @author ZeUSD Protocol Team
 * @notice Interface for the price oracle contract
 * @dev Defines functions for managing and accessing asset price oracles
 */
interface IPriceOracle {
    /**
     * @notice Emitted when an asset oracle is set
     * @param asset Asset address
     * @param oracle Oracle address
     */
    event AssetOracleSet(address indexed asset, address indexed oracle);

    /**
     * @notice Emitted when asset staleness threshold is set
     * @param asset Asset address
     * @param threshold Staleness threshold in seconds
     */
    event StalenessThresholdSet(address indexed asset, uint256 threshold);

    /**
     * @notice Emitted when default staleness threshold is set
     * @param threshold Default threshold in seconds
     */
    event DefaultStalenessThresholdSet(uint256 threshold);

    /**
     * @notice Error thrown when an invalid parameter is provided
     * @param parameter Parameter name
     */
    error InvalidParameter(string parameter);

    /**
     * @notice Sets oracle and staleness threshold for an asset
     * @param asset Asset address
     * @param oracle Oracle address
     * @param threshold Staleness threshold in seconds (optional, 0 for no change, otherwise must be less than or equal to the maximum allowed threshold)
     */
    function setAssetOracleAndThreshold(address asset, address oracle, uint256 threshold) external;

    /**
     * @notice Sets default staleness threshold
     * @param threshold Default threshold in seconds (must be greater than zero and less than or equal to the maximum allowed threshold)
     */
    function setDefaultStalenessThreshold(uint256 threshold) external;

    /**
     * @notice Gets oracle price for an asset
     * @param asset Asset address
     * @return price Current price
     * @return success Whether price fetch was successful
     */
    function getOraclePrice(address asset) external view returns (uint256 price, bool success);

    /**
     * @notice Gets asset oracle address and staleness threshold
     * @param asset Asset address
     * @return oracle Oracle address
     * @return threshold Staleness threshold in seconds
     */
    function getAssetOracleAndThreshold(
        address asset
    ) external view returns (address oracle, uint256 threshold);

    /**
     * @notice Gets default staleness threshold
     * @return Default threshold in seconds
     */
    function getDefaultStalenessThreshold() external view returns (uint256);

    /**
     * @notice Gets the maximum allowed staleness threshold
     * @return Maximum threshold in seconds
     */
    function getMaxStalenessThreshold() external pure returns (uint256);
}
