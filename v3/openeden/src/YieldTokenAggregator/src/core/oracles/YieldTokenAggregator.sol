// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

// imported contracts and libraries
import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";
import {OwnableUpgradeable} from "openzeppelin-upgradeable/access/OwnableUpgradeable.sol";
import {UUPSUpgradeable} from "openzeppelin/proxy/utils/UUPSUpgradeable.sol";

// Interfaces
import {IYieldToken} from "../../interfaces/IYieldToken.sol";

// constants
import "../../config/constants.sol";

// errors
import "../../config/errors.sol";

/**
 * @title   YieldTokenAggregator
 * @author  dsshap
 * @dev     Reports the balance of the Yield token
 */
contract YieldTokenAggregator is OwnableUpgradeable, UUPSUpgradeable {
    /// @dev round data package
    struct RoundData {
        int56 answer;
        uint56 balance;
        uint32 interest;
        uint32 updatedAt;
    }

    /*///////////////////////////////////////////////////////////////
                         State Variables V1
    //////////////////////////////////////////////////////////////*/

    /// @dev the erc20 token that is being reported on
    IYieldToken public immutable ytoken;

    /// @dev the decimal for the underlying
    uint8 public immutable decimals;

    /// @dev desc of the pair, usually against USD
    string public description;

    /// @dev last id used to represent round data
    uint80 private lastRoundId;

    /// @dev roundId => data
    mapping(uint80 => RoundData) private rounds;

    /// @dev roundId => totalSupply
    mapping(uint80 => uint256) private supply;

    int256 public nextPrice;

    /*///////////////////////////////////////////////////////////////
                                Events
    //////////////////////////////////////////////////////////////*/

    event BalanceReported(uint80 roundId, uint256 balance, uint256 interest, uint256 price, uint256 updatedAt);
    event NextPriceReported(uint256 price);

    /*///////////////////////////////////////////////////////////////
                Constructor for implementation Contract
    //////////////////////////////////////////////////////////////*/

    constructor(address _ytoken, uint8 _decimals, string memory _description) initializer {
        if (_ytoken == address(0)) revert();

        ytoken = IYieldToken(_ytoken);
        decimals = _decimals;
        description = _description;
    }

    /*///////////////////////////////////////////////////////////////
                            Initializer
    //////////////////////////////////////////////////////////////*/

    function initialize(address _owner, string memory _description) external initializer {
        // solhint-disable-next-line reason-string
        if (_owner == address(0)) revert();
        _transferOwnership(_owner);

        description = _description;
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

    /*///////////////////////////////////////////////////////////////
                        External Functions
    //////////////////////////////////////////////////////////////*/

    function setDescription(string memory _description) external {
        _checkOwner();

        description = _description;
    }

    /**
     * @notice override the next price
     * @param _nextPrice is the next price
     */
    function setNextPrice(int256 _nextPrice) external {
        _checkOwner();

        if (_nextPrice == 0) revert BadAmount();

        nextPrice = _nextPrice;

        emit NextPriceReported(uint256(_nextPrice));
    }

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

    /**
     * @notice get detail data about a round
     * @return roundId is the round ID for which data was retrieved
     * @return balance the total balance USD (2 decimals)
     * @return interest the total interest accrued USD (2 decimals)
     * @return totalSupply is the total supply of shares
     * @return updatedAt is the timestamp when the round last was updated (i.e. answer was last computed)
     */
    function getRoundDetails(uint80 _roundId)
        public
        view
        returns (uint80 roundId, uint256 balance, uint256 interest, uint256 totalSupply, uint256 updatedAt)
    {
        RoundData memory round = rounds[_roundId];

        return (_roundId, round.balance, round.interest, supply[_roundId], round.updatedAt);
    }

    /**
     * @notice get balance and interest from the latest round
     * @return roundId is the round ID for which data was retrieved
     * @return balance the total balance USD (2 decimals)
     * @return interest the total interest accrued USD (2 decimals)
     * @return totalSupply is the total supply of shares
     * @return updatedAt is the timestamp when the round last was updated (i.e. answer was last computed)
     */
    function latestRoundDetails()
        external
        view
        returns (uint80 roundId, uint256 balance, uint256 interest, uint256 totalSupply, uint256 updatedAt)
    {
        return getRoundDetails(lastRoundId);
    }

    /**
     * @notice reports the balance of funds
     * @dev only callable by the owner, processes USYC fees if interest accrued
     * @param _principal is the balance with 2 decimals of precision
     * @param _interest is the balance with 2 decimals of precision
     * @param _totalSupply is the total supply of shares
     * @param _nextPrice is the price for next business day
     * @return roundId of the new round data
     */
    function reportBalance(uint256 _principal, uint256 _interest, uint256 _totalSupply, int256 _nextPrice)
        external
        returns (uint80 roundId)
    {
        _checkOwner();

        if (_principal > type(uint56).max) revert Overflow();
        if (_interest > type(uint32).max) revert Overflow();

        // calculated as principle plus interest (less fee)
        uint256 balance = _principal + _interest;
        if (balance > type(uint56).max) revert Overflow();

        roundId = lastRoundId;
        RoundData memory round = rounds[roundId];

        // new balance and interest can never be the same as last round
        if (round.balance == balance && round.interest == _interest) revert RoundDataReported();

        // checking that roundId hasnt already been taken
        lastRoundId = roundId += 1;
        round = rounds[roundId];
        if (round.answer != 0) revert RoundDataReported();

        // decimals calculated as {decimals|8} + {token.decimals|6} - {principal & interest decimals|2}
        uint256 answer = FixedPointMathLib.mulDivDown(balance, 1e12, _totalSupply);
        if (int256(answer) > type(int56).max) revert Overflow();

        rounds[roundId] = RoundData(int56(int256(answer)), uint56(balance), uint32(_interest), uint32(block.timestamp));
        supply[roundId] = _totalSupply;

        emit BalanceReported(roundId, balance, _interest, answer, block.timestamp);

        // setting next price for next business day
        if (_nextPrice == 0 || _nextPrice <= int256(answer)) revert BadAmount();
        else nextPrice = _nextPrice;

        emit NextPriceReported(uint256(_nextPrice));
    }
}
