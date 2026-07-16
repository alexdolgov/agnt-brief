// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

// imported contracts and libraries
import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";
import {OwnableUpgradeable} from "openzeppelin-upgradeable/access/OwnableUpgradeable.sol";
import {UUPSUpgradeable} from "openzeppelin/proxy/utils/UUPSUpgradeable.sol";

// Interfaces
import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol";

// errors
import "../../config/errors.sol";

/**
 * @title   GenericUpgradableAggregator
 * @author  dsshap
 * @dev     Reports the price of Token
 */
contract GenericUpgradableAggregator is OwnableUpgradeable, UUPSUpgradeable {
    /*///////////////////////////////////////////////////////////////
                         Structures
    //////////////////////////////////////////////////////////////*/

    struct RoundData {
        int192 answer;
        uint32 updatedAt;
    }

    /*///////////////////////////////////////////////////////////////
                         Immutables
    //////////////////////////////////////////////////////////////*/

    address public immutable reporter;

    /*///////////////////////////////////////////////////////////////
                         State Variables V1
    //////////////////////////////////////////////////////////////*/

    /// @dev the erc20 token that is being reported on
    IERC20 public token;

    /// @dev the decimal for the underlying
    uint8 public decimals;

    /// @dev desc of the pair, usually against USD
    string public description;

    /// @dev last id used to represent round data
    uint80 private lastRoundId;

    /// @dev assetId => asset address
    mapping(uint80 => RoundData) private rounds;

    /*///////////////////////////////////////////////////////////////
                                Events
    //////////////////////////////////////////////////////////////*/

    event BalanceReported(uint80 roundId, uint256 price, uint256 updatedAt);
    event AnswerUpdated(int256 indexed current, uint256 indexed roundId, uint256 updatedAt);

    /*///////////////////////////////////////////////////////////////
                Constructor for implementation Contract
    //////////////////////////////////////////////////////////////*/

    constructor(address _reporter) initializer {
        if (_reporter == address(0)) revert BadAddress();

        reporter = _reporter;
    }

    /*///////////////////////////////////////////////////////////////
                            Initializer
    //////////////////////////////////////////////////////////////*/

    function initialize(address _owner, address _token, uint8 _decimals, string memory _description) external initializer {
        if (_owner == address(0)) revert BadAddress();
        _transferOwnership(_owner);

        token = IERC20(_token);
        decimals = _decimals;
        description = _description;
    }

    /*///////////////////////////////////////////////////////////////
                        External Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice get data about a round
     * @return roundId is the round ID for which data was retrieved
     * @return answer is the answer for the given round
     * @return startedAt is always equal to updatedAt
     * @return updatedAt is the timestamp when the round last was updated (i.e. answer was last computed)
     * @return answeredInRound is always equal to roundId
     */
    function getRoundData(uint80 _roundId)
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        RoundData memory round = rounds[_roundId];

        return (_roundId, round.answer, round.updatedAt, round.updatedAt, _roundId);
    }

    /**
     * @notice get data about the latest round
     * @return roundId is the round ID for which data was retrieved
     * @return answer is the answer for the given round
     * @return startedAt is always equal to updatedAt
     * @return updatedAt is the timestamp when the round last was updated (i.e. answer was last computed)
     * @return answeredInRound is always equal to roundId
     */
    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        uint80 _roundId = lastRoundId;
        RoundData memory round = rounds[_roundId];

        return (_roundId, round.answer, round.updatedAt, round.updatedAt, _roundId);
    }

    function latestRound() public view returns (uint256) {
        return lastRoundId;
    }

    /**
     * @notice reports the balance of funds
     * @dev only callable by the reporter
     * @param _answer is the answer
     * @param _updatedAt is the timestamp
     * @return roundId of the new round data
     */
    function transmit(uint256 _answer, uint256 _updatedAt) external virtual returns (uint80 roundId) {
        if (msg.sender != reporter) revert NoAccess();

        roundId = ++lastRoundId;
        rounds[roundId] = RoundData(int192(int256(_answer)), uint32(_updatedAt));

        emit AnswerUpdated(int256(_answer), roundId, _updatedAt);
    }

    /*///////////////////////////////////////////////////////////////
                    Override Upgrade Permission
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Upgradable by the owner.
     *
     */
    function _authorizeUpgrade(address /*newImplementation*/ ) internal virtual override {
        _checkOwner();
    }
}
