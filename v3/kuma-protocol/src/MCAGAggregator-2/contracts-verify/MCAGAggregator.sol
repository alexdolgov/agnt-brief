// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.17;

import {Errors} from "./libraries/Errors.sol";
import {IAccessControl} from "lib/openzeppelin-contracts/contracts/access/IAccessControl.sol";
import {MCAGAggregatorInterface} from "./interfaces/MCAGAggregatorInterface.sol";
import {Roles} from "./libraries/Roles.sol";
import {WadRayMath} from "./libraries/WadRayMath.sol";

/**
 * @title MCAG Aggregator
 * @author MIMO Labs
 * @notice MCAGAggregator contracts serve as an oracle for the MCAGRateFeed
 */
contract MCAGAggregator is MCAGAggregatorInterface {
    using WadRayMath for uint256;

    uint256 public constant MIN_TERM = 4 weeks;

    uint8 private constant _VERSION = 1;
    uint8 private constant _DECIMALS = 27;

    uint256 private immutable _term;

    IAccessControl public immutable accessController;

    uint80 private _roundId;
    string private _description;
    int256 private _answer;
    int256 private _maxAnswer;
    uint256 private _volatilityThreshold;
    uint256 private _updatedAt;

    /**
     * @dev Modifier to make a function callable only when the caller has a specific role
     * @param role The role required to call the function
     */
    modifier onlyRole(bytes32 role) {
        if (!accessController.hasRole(role, msg.sender)) {
            revert Errors.ACCESS_CONTROL_ACCOUNT_IS_MISSING_ROLE(msg.sender, role);
        }
        _;
    }

    /**
     * @param description_ Description of the oracle - for example "10 YEAR US TREASURY".
     * @param maxAnswer_ Maximum sensible answer the contract should accept during transmission
     * @param _accessController MCAG AccessController
     * @param answer Initial answer
     * @param volatilityThreshold Maximum absolute value change of the answer between two consecutive rounds.
     * @param term Term of the risk category in seconds.
     */
    constructor(
        string memory description_,
        int256 maxAnswer_,
        IAccessControl _accessController,
        int256 answer,
        uint256 volatilityThreshold,
        uint256 term
    ) {
        if (address(_accessController) == address(0)) {
            revert Errors.CANNOT_SET_TO_ADDRESS_ZERO();
        }
        if (volatilityThreshold <= 0) {
            revert Errors.INVALID_VOLATILITY_THRESHOLD();
        }
        if (answer > maxAnswer_) {
            revert Errors.TRANSMITTED_ANSWER_TOO_HIGH(answer, maxAnswer_);
        }
        if (term < MIN_TERM) {
            revert Errors.TERM_TOO_LOW(term, MIN_TERM);
        }

        _description = description_;
        _answer = answer;
        _maxAnswer = maxAnswer_;
        _volatilityThreshold = volatilityThreshold;
        _updatedAt = block.timestamp;
        _term = term;
        accessController = _accessController;

        emit AccessControllerSet(address(_accessController));
        emit AnswerTransmitted(msg.sender, 0, answer);
        emit MaxAnswerSet(0, maxAnswer_);
        emit VolatilityThresholdSet(0, volatilityThreshold);
        emit TermSet(term);
    }

    /**
     * @notice Transmits a new price to the aggreator and updates the answer, round id and updated at.
     * @dev Can only be called by a registered transmitter.
     * @param answer New central bank rate as a per second cumualtive rate in 27 decimals.
     * For example a 5% annual linear rate would be converted to a per second cumulative rate as follow :
     * (1 + 5%)^(1 / 31536000) * 1e27 = 100000000578137865680459171
     */
    function transmit(int256 answer) external onlyRole(Roles.MCAG_TRANSMITTER_ROLE) {
        if (answer > _maxAnswer) {
            revert Errors.TRANSMITTED_ANSWER_TOO_HIGH(answer, _maxAnswer);
        }
        if (answer < 0) {
            revert Errors.TRANSMITTED_ANSWER_TOO_LOW(answer, 0);
        }

        int256 answer_ = _answer;
        uint256 oldAnswer = uint256(answer_);
        uint256 newAnswer = uint256(answer);

        uint256 oldTotalLinearRate = oldAnswer.rayPow(_term);
        uint256 newTotalLinearRate = newAnswer.rayPow(_term);

        uint256 absoluteRateChange;

        if (newTotalLinearRate > oldTotalLinearRate) {
            absoluteRateChange = newTotalLinearRate - oldTotalLinearRate;
        } else {
            absoluteRateChange = oldTotalLinearRate - newTotalLinearRate;
        }

        if (absoluteRateChange > _volatilityThreshold) {
            revert Errors.RATE_TOO_VOLATILE(absoluteRateChange, _volatilityThreshold);
        }

        ++_roundId;
        _updatedAt = block.timestamp;
        _answer = answer;

        emit AnswerTransmitted(msg.sender, _roundId, answer);
    }

    /**
     * @notice Sets a new max answer.
     * @dev Can only be called by MCAG Manager.
     * @param newMaxAnswer New maximum sensible answer the contract should accept in RAY.
     */
    function setMaxAnswer(int256 newMaxAnswer) external onlyRole(Roles.MCAG_MANAGER_ROLE) {
        emit MaxAnswerSet(_maxAnswer, newMaxAnswer);
        _maxAnswer = newMaxAnswer;
    }

    /**
     * @notice Sets a new volatility threshold.
     * @dev Can only be called by MCAG Manager.
     * @param newVolatilityThreshold New maximum absolute value change of the answer between two consecutive rounds.
     */
    function setVolatilityThreshold(uint256 newVolatilityThreshold) external onlyRole(Roles.MCAG_MANAGER_ROLE) {
        if (newVolatilityThreshold == 0) {
            revert Errors.INVALID_VOLATILITY_THRESHOLD();
        }
        emit VolatilityThresholdSet(_volatilityThreshold, newVolatilityThreshold);
        _volatilityThreshold = newVolatilityThreshold;
    }

    /**
     * @notice Returns round data per the Chainlink format.
     * @return roundId Latest _roundId.
     * @return answer Latest answer transmitted.
     * @return startedAt Unused variable here only to follow Chainlink format.
     * @return updatedAt Timestamp of the last transmitted answer.
     * @return answeredInRound Latest _roundId.
     */
    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        roundId = _roundId;
        answer = _answer;
        startedAt = _updatedAt;
        updatedAt = _updatedAt;
        answeredInRound = _roundId;
    }

    /**
     * @return Description of the oracle - for example "10 YEAR US TREASURY".
     */
    function description() external view returns (string memory) {
        return _description;
    }

    /**
     * @return Maximum sensible answer the contract should accept.
     */
    function maxAnswer() external view returns (int256) {
        return _maxAnswer;
    }

    /**
     * @return Maximum absolute value change of the answer between two consecutive rounds.
     */
    function getVolatilityThreshold() external view returns (uint256) {
        return _volatilityThreshold;
    }

    /**
     * @return The term of oracle asset in seconds. For example 364 days for 52 week t-bills.
     */
    function getTerm() external view returns (uint256) {
        return _term;
    }

    /**
     * @return Number of decimals used to get its user representation.
     */
    function decimals() external pure returns (uint8) {
        return _DECIMALS;
    }

    /**
     * @return Contract version.
     */
    function version() external pure returns (uint8) {
        return _VERSION;
    }
}
