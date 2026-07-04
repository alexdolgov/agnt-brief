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
// =================== FraxtalFPITransportOracle ======================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

// ====================================================================
import { Timelock2Step } from "frax-std/access-control/v1/Timelock2Step.sol";
import { ITimelock2Step } from "frax-std/access-control/v1/interfaces/ITimelock2Step.sol";
import { ERC165Storage } from "src/contracts/utils/ERC165Storage.sol";
import { FixedPointMathLib } from "@solmate/utils/FixedPointMathLib.sol";
import { IStateRootOracle } from "src/contracts/frax-oracle/interfaces/IStateRootOracle.sol";

/// @title FraxtalERC4626TransportOracle
contract FraxtalFpiTrackerTransportOracle is Timelock2Step, ERC165Storage {
    address public priceSource;
    /// @notice the last L1 block for which the values were synced
    uint96 public lastL1Block;
    uint256 public updatedAt;
    uint256 public ramp_period;
    uint256 public lastUpdateTime;
    uint256 public peg_price_target;
    uint256 public peg_price_last;

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
        _description = "FPI Oracle Transport";
    }

    function name() external pure returns (string memory _name) {
        _name = "FPI Oracle Transport";
    }

    /// @notice The ```decimals``` function returns the decimals for the oracle
    /// @return _decimals The decimals corresponding to the answer being transported to the L2
    function decimals() external pure returns (uint8 _decimals) {
        _decimals = 18;
    }

    /// @notice Conforms to the ERC4626 Interface
    function pricePerShare() public view returns (uint256) {
        return currPegPrice();
    }

    function _getPrices() internal view returns (bool isBadData, uint256 _priceLow, uint256 _priceHigh) {
        _priceLow = _priceHigh = pricePerShare();
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
    /// @return _answer The price of sDai in dai
    /// @return _startedAt The current timestamp
    /// @return _updatedAt The current timestamp
    /// @return _answeredInRound The l1Block corresponding to the last time the oracle was proofed
    function latestRoundData()
        external
        view
        returns (uint80 _roundId, int256 _answer, uint256 _startedAt, uint256 _updatedAt, uint80 _answeredInRound)
    {
        _answeredInRound = _roundId = uint80(lastL1Block);
        _startedAt = _updatedAt = updatedAt;
        _answer = int256(pricePerShare());
        if (_answer < 0) revert CastError();
        if (_roundId < 0) revert CastError();
    }

    // ====================================================================
    // Relay functions from merkle prover
    // ====================================================================

    function updateFpiOracleData(
        uint96 _l1BlockNumber,
        uint256 _rampPeriod,
        uint256 _lastUpdateTime,
        uint256 _peg_price_target,
        uint256 _peg_price_last
    ) external {
        if (msg.sender != priceSource) revert OnlyPriceSource();
        if (_l1BlockNumber < lastL1Block) revert StalePush();
        ramp_period = _rampPeriod;
        lastUpdateTime = _lastUpdateTime;
        peg_price_target = _peg_price_target;
        peg_price_last = _peg_price_last;
        lastL1Block = _l1BlockNumber;
        updatedAt = stateRootOracle.getBlockInfo(_l1BlockNumber).timestamp;
        emit FPIDataUpdated(_l1BlockNumber, _lastUpdateTime, _peg_price_target, _peg_price_last);
    }

    // ====================================================================
    // Events
    // ====================================================================

    /// @notice The ```SetPriceSource``` event is emitted when the price source is set
    /// @param oldPriceSource The old price source address
    /// @param newPriceSource The new price source address
    event SetPriceSource(address oldPriceSource, address newPriceSource);

    /// @notice The ```FPIDataUpdated``` event is emitted when the price data is updated
    /// @param l1Block        The l1Block corresponding to the 1l blocknumber at which the info was pushed
    /// @param lastUpdate     The timestamp at which the data was last updated on mainnet
    /// @param pegPriceTarget The current peg target
    /// @param pegPriceLast   The old peg target
    event FPIDataUpdated(uint96 l1Block, uint256 lastUpdate, uint256 pegPriceTarget, uint256 pegPriceLast);

    // ====================================================================
    // Errors
    // ====================================================================

    error OnlyPriceSource();
    error SamePriceSource();
    error StalePush();
    error CastError();

    // ====================================================================
    // Math
    // ====================================================================
    // Current peg price in E18, accounting for the ramping
    function currPegPrice() public view returns (uint256) {
        uint256 elapsed_time = block.timestamp - lastUpdateTime;
        if (elapsed_time >= ramp_period) {
            return peg_price_target;
        } else {
            // Calculate the fraction of the delta to use, based on the elapsed time
            // Can be negative in case of deflation (that never happens right :])
            int256 fractional_price_delta = ((int256(peg_price_target) - int256(peg_price_last)) *
                int256(elapsed_time)) / int256(ramp_period);
            return uint256(int256(peg_price_last) + int256(fractional_price_delta));
        }
    }
}
