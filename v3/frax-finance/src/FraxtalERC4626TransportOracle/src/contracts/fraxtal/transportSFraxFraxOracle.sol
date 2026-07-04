// SPDX-License-Identifier: ISC
pragma solidity ^0.8.19;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// ================= FraxtalERC4626TransportOracle ====================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

// ====================================================================
import { Timelock2Step } from "frax-std/access-control/v1/Timelock2Step.sol";
import { ITimelock2Step } from "frax-std/access-control/v1/interfaces/ITimelock2Step.sol";
import { ERC165Storage } from "src/contracts/utils/ERC165Storage.sol";
import { FixedPointMathLib } from "@solmate/utils/FixedPointMathLib.sol";
import { IStateRootOracle } from "src/contracts/frax-oracle/interfaces/IStateRootOracle.sol";

/// @dev High/low prices will be equivalent
contract FraxtalERC4626TransportOracle is Timelock2Step, ERC165Storage {
    using FixedPointMathLib for uint256;

    /// @notice The address of the merkle proofing contract which will decode and validate
    ///         the L1 storage proofs against the `L1Block` contract
    address public priceSource;
    /// @notice the `storedTotalAssets` variable of the L1 contract
    uint256 public storedTotalAssets;
    /// @notice the `totalSupply` variable of the L1 contract
    uint256 public totalSupply;
    /// @notice The timestamp of the last time rewards were distributed
    uint256 public lastRewardsDistribution;
    /// @notice The `maxDistributionPerSecondPerAsset` variable of the L1 contract
    uint256 public maxDistributionPerSecondPerAsset;
    /// @notice the number of the last L1 block for which the values were synced
    uint96 public lastL1Block;
    /// @notice the L1 timestamp corresponding to the last time the contract was synced
    uint256 public updatedAt;

    /// @notice Information about the current rewards cycle
    struct RewardsCycleData {
        uint40 cycleEnd; // Timestamp of the end of the current rewards cycle
        uint40 lastSync; // Timestamp of the last time the rewards cycle was synced
        uint216 rewardCycleAmount; // Amount of rewards to be distributed in the current cycle
    }

    /// @notice The rewards cycle data, stored in a single word to save gas
    RewardsCycleData public rewardsCycleData;

    IStateRootOracle public immutable stateRootOracle;

    constructor(address _timelock, address _priceSource, address _stateRootOracle) {
        _setTimelock({ _newTimelock: _timelock });
        _registerInterface({ interfaceId: type(ITimelock2Step).interfaceId });
        priceSource = _priceSource;
        stateRootOracle = IStateRootOracle(_stateRootOracle);
    }

    // ====================================================================
    // Internal Configuration Setters
    // ====================================================================

    /// @notice The ```_setPriceSource``` function sets the price source
    /// @param _newPriceSource The new price source
    function _setPriceSource(address _newPriceSource) internal {
        address _priceSource = priceSource;
        if (_priceSource == _newPriceSource) revert SamePriceSource();
        emit SetPriceSource({ oldPriceSource: _priceSource, newPriceSource: _newPriceSource });
        priceSource = _newPriceSource;
    }

    // ====================================================================
    // Configuration Setters
    // ====================================================================

    /// @notice The ```setPriceSource``` function sets the price source
    /// @dev Requires msg.sender to be the timelock address
    /// @param _newPriceSource The new price source address
    function setPriceSource(address _newPriceSource) external {
        _requireTimelock();
        _setPriceSource({ _newPriceSource: _newPriceSource });
    }

    // ====================================================================
    // View Helpers
    // ====================================================================

    /// @notice The ```description``` function returns the description of the contract
    /// @return _description The description of the contract
    function description() external pure returns (string memory _description) {
        _description = "sFRAX/FRAX: Rate Transport";
    }

    function name() external pure returns (string memory _name) {
        _name = "sFRAX/FRAX: Rate Transport";
    }

    /// @notice The ```decimals``` function returns same decimals value as CL Oracle
    /// @return _decimals The decimals corresponding to the CL answer being transported to L2
    /// @dev Needed for ingesting CL feed into Frax Oracles
    function decimals() external pure returns (uint8 _decimals) {
        _decimals = 18;
    }

    /// @notice Conforms to the ERC4626 Interface
    function pricePerShare() public view returns (uint256) {
        uint256 supply = totalSupply; // Saves an extra SLOAD if totalSupply is non-zero.

        return supply == 0 ? 1e18 : uint256(1e18).mulDivDown(totalAssets(), supply);
    }

    /// @notice The ```previewDistributeRewards``` function is used to preview the rewards distributed at the top of the block
    /// @return _rewardToDistribute The amount of underlying to distribute
    function previewDistributeRewards() public view virtual returns (uint256 _rewardToDistribute) {
        // Cache state for gas savings
        RewardsCycleData memory _rewardsCycleData = rewardsCycleData;
        uint256 _lastRewardsDistribution = lastRewardsDistribution;
        uint40 _timestamp = uint40(block.timestamp);

        // Calculate the delta time, but only include up to the cycle end in case we are passed it
        uint256 _deltaTime = _timestamp > _rewardsCycleData.cycleEnd
            ? _rewardsCycleData.cycleEnd - _lastRewardsDistribution
            : _timestamp - _lastRewardsDistribution;

        // Calculate the rewards to distribute
        _rewardToDistribute = calculateRewardsToDistribute({
            _rewardsCycleData: _rewardsCycleData,
            _deltaTime: _deltaTime
        });
    }

    /// @notice The ```calculateRewardsToDistribute``` function calculates the amount of rewards to distribute based on the rewards cycle data and the time elapsed
    /// @param _rewardsCycleData The rewards cycle data
    /// @param _deltaTime The time elapsed since the last rewards distribution
    /// @return _rewardToDistribute The amount of rewards to distribute
    function calculateRewardsToDistribute(
        RewardsCycleData memory _rewardsCycleData,
        uint256 _deltaTime
    ) public view virtual returns (uint256 _rewardToDistribute) {
        _rewardToDistribute =
            (_rewardsCycleData.rewardCycleAmount * _deltaTime) /
            (_rewardsCycleData.cycleEnd - _rewardsCycleData.lastSync);

        uint256 _maxDistribution = (maxDistributionPerSecondPerAsset * _deltaTime * storedTotalAssets) / 1e18;
        if (_rewardToDistribute > _maxDistribution) {
            _rewardToDistribute = _maxDistribution;
        }
    }

    /// @notice The ```totalAssets``` function returns the total assets available in the vault
    /// @dev This function simulates the rewards that will be distributed at the top of the block
    /// @return _totalAssets The total assets available in the vault
    function totalAssets() public view virtual returns (uint256 _totalAssets) {
        uint256 _rewardToDistribute = previewDistributeRewards();
        _totalAssets = storedTotalAssets + _rewardToDistribute;
    }

    function _getPrices() internal view returns (bool isBadData, uint256 _priceLow, uint256 _priceHigh) {
        uint256 supply = totalSupply; // Saves an extra SLOAD if totalSupply is non-zero.
        uint256 fraxPerSfrax = supply == 0 ? 1e18 : uint256(1e18).mulDivDown(totalAssets(), supply);
        _priceLow = _priceHigh = fraxPerSfrax;
        isBadData = false;
    }

    /// @notice The ```getPrices``` function is intended to return two prices from different oracles
    /// @return isBadData is true when data is stale or otherwise bad
    /// @return _priceLow is the lower of the two prices
    /// @return _priceHigh is the higher of the two prices
    function getPrices() external view returns (bool isBadData, uint256 _priceLow, uint256 _priceHigh) {
        (isBadData, _priceLow, _priceHigh) = _getPrices();
    }

    /// @dev Adheres to chainlink's AggregatorV3Interface
    /// @return _roundId The l1Block corresponding to the last time the oracle was proofed
    /// @return _answer The price of Sfrax in frax
    /// @return _startedAt The current timestamp
    /// @return _updatedAt The current timestamp
    /// @return _answeredInRound The l1Block corresponding to the last time the oracle was proofed
    function latestRoundData()
        external
        view
        returns (uint80 _roundId, int256 _answer, uint256 _startedAt, uint256 _updatedAt, uint80 _answeredInRound)
    {
        _answeredInRound = _roundId = uint80(lastL1Block);
        /// @notice if rewards cycle data is stale treat, return a stale oracle response
        if (rewardsCycleData.cycleEnd < block.timestamp) _answeredInRound -= 1;
        _startedAt = _updatedAt = block.timestamp;
        _answer = int256(pricePerShare());
        if (_answer < 0) revert CastError();
        if (_roundId < 0) revert CastError();
    }

    // ====================================================================
    // Relay functions from merkle prover
    // ====================================================================
    /// TODO: natspec
    function updatesFRAXData(
        uint96 _l1BlockNumber,
        uint256 _totalSupply,
        uint256 _totalAssets,
        uint256 _lastRewardsDistribution,
        RewardsCycleData memory _data
    ) external {
        if (msg.sender != priceSource) revert OnlyPriceSource();
        if (_l1BlockNumber < lastL1Block) revert StalePush();
        rewardsCycleData = _data;
        lastRewardsDistribution = _lastRewardsDistribution;
        totalSupply = _totalSupply;
        storedTotalAssets = _totalAssets;
        lastL1Block = _l1BlockNumber;
        updatedAt = stateRootOracle.getBlockInfo(_l1BlockNumber).timestamp;
        emit VaultDataUpdated(totalSupply, storedTotalAssets, lastRewardsDistribution, rewardsCycleData);
    }

    /// TODO: natspec
    function updateMaxDistributionPerSecond(uint96 _l1BlockNumber, uint256 _maxPerSecond) external {
        if (msg.sender != priceSource) revert OnlyPriceSource();
        if (_l1BlockNumber < lastL1Block) revert StalePush();
        maxDistributionPerSecondPerAsset = _maxPerSecond;
        emit MaxDistributionPerSecondPerAssetUpdated(maxDistributionPerSecondPerAsset);
    }

    // ====================================================================
    // Events
    // ====================================================================

    /// @notice The ```SetPriceSource``` event is emitted when the price source is set
    /// @param oldPriceSource The old price source address
    /// @param newPriceSource The new price source address
    event SetPriceSource(address oldPriceSource, address newPriceSource);
    event VaultDataUpdated(
        uint256 totalSupply,
        uint256 totalStoredAssets,
        uint256 lastRewardsDistribution,
        RewardsCycleData data
    );
    event MaxDistributionPerSecondPerAssetUpdated(uint256 newMax);
    // ====================================================================
    // Errors
    // ====================================================================

    error OnlyPriceSource();
    error SamePriceSource();
    error StalePush();
    error CastError();
}
