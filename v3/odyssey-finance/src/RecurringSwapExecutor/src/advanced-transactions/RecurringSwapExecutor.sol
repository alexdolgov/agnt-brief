// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IMasterOracle} from "src/interfaces/external/IMasterOracle.sol";
import {IAdvancedTransactionCaller} from "src/interfaces/IAdvancedTransactionCaller.sol";
import {AdvancedTransactionExecutor} from "./AdvancedTransactionExecutor.sol";

contract RecurringSwapExecutor is AdvancedTransactionExecutor {
    using SafeERC20 for IERC20;

    struct AdditionalData {
        // The token to sell
        IERC20 tokenIn;
        // The token to buy
        IERC20 tokenOut;
        // The amount to sell
        uint256 amountIn;
        // The minimal accepted buy amount
        // If `amountOutMin == 0` use market price (oracle)
        uint256 amountOutMin; // 0 for market price
        // If using market price, set max accepted deviation
        // E.g., `0.015e18` (1.5%) means accept swap if `amountOut` is `>= 98.5%` of the market price
        uint64 amountOutMaxDeviation; // if market price (e.g. 0.05e18 == 5%)
        // The timestamp of the first round
        uint48 start;
        // How many rounds to execute
        uint96 rounds;
        // The round interval (e.g. weekly, monthly, etc)
        uint48 roundInterval;
    }

    uint256 constant MAX_DEVIATION = 1e18;

    IMasterOracle public immutable oracle;

    mapping(bytes32 orderHash => mapping(uint256 round => bool)) public roundFilled;

    event RecurringSwapFilled(uint256 round, IERC20 tokenIn, uint256 amountIn, IERC20 tokenOut, uint256 amountOut);

    error AddressIsNull();
    error AmountOutTooLow(uint256 min, uint256 actual);
    error FirstRoundWasNotStarted(uint256 start);
    error DeadlineHasAlreadyPassed(uint256 deadline);
    error NoMaxDeviationRequired();
    error MaxDeviationTooHigh(uint256 actual, uint256 max);

    constructor(address owner_, IMasterOracle oracle_) AdvancedTransactionExecutor(owner_) {
        if (address(oracle_) == address(0)) revert AddressIsNull();

        oracle = oracle_;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     MODULE LOGIC
    //////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc AdvancedTransactionExecutor
    function _validateAdditionalData(bytes memory additionalData_) internal view override {
        AdditionalData memory _data = abi.decode(additionalData_, (AdditionalData));

        if (block.timestamp < _data.start) revert FirstRoundWasNotStarted(_data.start);
        uint256 _deadline = _data.start + (_data.rounds * _data.roundInterval);
        if (block.timestamp > _deadline) revert DeadlineHasAlreadyPassed(_deadline);
        if (_data.amountOutMin > 0 && _data.amountOutMaxDeviation > 0) revert NoMaxDeviationRequired();
        if (_data.amountOutMin == 0 && _data.amountOutMaxDeviation > MAX_DEVIATION)
            revert MaxDeviationTooHigh(_data.amountOutMaxDeviation, MAX_DEVIATION);
    }

    /// @inheritdoc AdvancedTransactionExecutor
    function _setAsFilled(Order memory order_, bytes32 orderHash_) internal override {
        AdditionalData memory _data = abi.decode(order_.additionalData, (AdditionalData));

        roundFilled[orderHash_][_getRound(_data)] = true;
    }

    /// @inheritdoc AdvancedTransactionExecutor
    function _wasFilled(Order memory order_, bytes32 orderHash_) internal view override returns (bool) {
        AdditionalData memory _data = abi.decode(order_.additionalData, (AdditionalData));

        return roundFilled[orderHash_][_getRound(_data)];
    }

    /// @inheritdoc AdvancedTransactionExecutor
    function _fill(Order memory order_, bytes memory callbackData_) internal override {
        AdditionalData memory _data = abi.decode(order_.additionalData, (AdditionalData));

        // 1. collect fee
        uint256 _feeAmount = _collectFee(order_.smartAccount, _data.tokenIn, _data.amountIn);

        // 2. send `amountIn` to the caller
        _transferFromSmartAccount(order_.smartAccount, _data.tokenIn, msg.sender, _data.amountIn - _feeAmount);

        // 3. call caller's callback
        uint256 _before = _data.tokenOut.balanceOf(order_.smartAccount);
        IAdvancedTransactionCaller(msg.sender).callback(callbackData_);
        uint256 _amountOut = _data.tokenOut.balanceOf(order_.smartAccount) - _before;

        // 4. check `amountOut`
        uint256 _amountOutMin = (_data.amountOutMin > 0) ? _data.amountOutMin : _getMarketPriceAmountOutMin(_data);
        if (_amountOut < _amountOutMin) revert AmountOutTooLow(_amountOutMin, _amountOut);

        emit RecurringSwapFilled(_getRound(_data), _data.tokenIn, _data.amountIn, _data.tokenOut, _amountOut);
    }

    /// @dev Calculate order's round based on the current time
    function _getRound(AdditionalData memory data_) private view returns (uint256 _round) {
        _round = (block.timestamp - data_.start) / data_.roundInterval;
    }

    /// @dev Get `amountOutMin` value based on market price
    function _getMarketPriceAmountOutMin(AdditionalData memory data_) private view returns (uint256 _amountOutMin) {
        uint256 _amountOut = oracle.quote(address(data_.tokenIn), address(data_.tokenOut), data_.amountIn);
        _amountOutMin = (_amountOut * (1e18 - data_.amountOutMaxDeviation)) / 1e18;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     METADATA
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice The name of the module
    function name() external pure returns (string memory) {
        return "RecurringSwapExecutor";
    }

    /// @notice The version of the module
    function version() external pure returns (string memory) {
        return "0.0.1";
    }
}
