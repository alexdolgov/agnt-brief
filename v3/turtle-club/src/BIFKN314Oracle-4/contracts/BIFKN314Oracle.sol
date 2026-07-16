// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./interfaces/IERC314.sol";
import "./libraries/BIFKN314OracleLibrary.sol";

// fixed window oracle that recomputes the average price for the entire period once every period
// note that the price average is only guaranteed to be over at least 1 period, but may be over a longer period
contract BIFKN314Oracle {
    uint private constant Q112 = 2 ** 112; // Scaling factor for 112.112 fixed-point numbers

    address public immutable native;
    address public immutable token;
    address private owner;

    uint256 public period = 30 seconds; // Minimum update interval
    uint256 public price0CumulativeLast;
    uint256 public price1CumulativeLast;
    uint256 public price0Average;
    uint256 public price1Average;
    uint32 public blockTimestampLast;

    modifier onlyOwner() {
        require(msg.sender == owner, "BIFKN314Oracle: NOT_OWNER");
        _;
    }

    event Updated(
        uint256 price0CumulativeLast,
        uint256 price1CumulativeLast,
        uint32 timestamp
    );
    event NewPeriod(uint256 period);

    error NoReserves(address token);
    error PeriodNotElapsed();
    error InvalidToken(address token);
    error InvalidPeriod();

    constructor(address token_) {
        owner = msg.sender;
        token = token_;
        native = 0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7;
        price0CumulativeLast = IERC314(token).price0CumulativeLast(); // fetch the current accumulated price value (1 / 0)
        price1CumulativeLast = IERC314(token).price1CumulativeLast(); // fetch the current accumulated price value (0 / 1)
        uint256 reserve0;
        uint256 reserve1;
        (reserve0, reserve1) = IERC314(token).getReserves();
        blockTimestampLast = IERC314(token).blockTimestampLast();

        if (reserve0 == 0 || reserve1 == 0) revert NoReserves(token);
    }

    /**
     * @notice Updates the average prices of the tokens.
     * @dev This function calculates the time elapsed since the last update and ensures that at least one full period has passed.
     *      It then calculates the average prices of the tokens based on the cumulative prices and the time elapsed.
     *      The cumulative prices and the block timestamp are updated to the latest values.
     *      Overflow is desired in the calculations to handle the cumulative price wrapping.
     * @custom:reverts PeriodNotElapsed if the time elapsed since the last update is less than the required period.
     */
    function update() external {
        (
            uint price0Cumulative,
            uint price1Cumulative,
            uint32 blockTimestamp
        ) = BIFKN314OracleLibrary.currentCumulativePrices(token);
        uint32 timeElapsed = blockTimestamp - blockTimestampLast; // overflow is desired

        // ensure that at least one full period has passed since the last update
        if (timeElapsed < period) revert PeriodNotElapsed();

        // overflow is desired, casting never truncates
        // cumulative price is in (uq112x112 price * seconds) units so we simply wrap it after division by time elapsed
        price0Average = (price0Cumulative - price0CumulativeLast) / timeElapsed;
        price1Average = (price1Cumulative - price1CumulativeLast) / timeElapsed;

        price0CumulativeLast = price0Cumulative;
        price1CumulativeLast = price1Cumulative;
        blockTimestampLast = blockTimestamp;

        emit Updated(price0Cumulative, price1Cumulative, blockTimestamp);
    }

    /**
     * @notice Get the amount of the paired token for a given input amount based on the average price
     * @param token_ The address of the token to query (must be either the native token or the paired token)
     * @param amountIn The amount of the input token for which the output amount is calculated
     * @return amountOut The equivalent amount of the paired token based on the average price
     *         - If `token_` is the native token, `amountOut` is the amount of the paired token.
     *         - If `token_` is the paired token, `amountOut` is the amount of the native token.
     * @dev Reverts if `token_` is neither the native token nor the paired token.
     */

    function consult(
        address token_,
        uint amountIn
    ) external view returns (uint amountOut) {
        if (token_ == native) {
            // Multiply the input amount by the average price and scale down
            amountOut = (amountIn * price0Average) / Q112;
        } else if (token_ == token) {
            // Multiply the input amount by the average price and scale down
            amountOut = (amountIn * price1Average) / Q112;
        } else {
            revert InvalidToken(token_);
        }
    }

    /**
     * @notice Retrieves the current spot price for the token pair.
     * @param token_ The address of the token to query (must be either the native token or the paired token).
     * @return price The spot price of the input token in terms of the other token.
     *         - If `token_` is the native token, `price` is in terms of the paired token.
     *         - If `token_` is the paired token, `price` is in terms of the native token.
     * @dev Reverts if `token_` is neither the native token nor the paired token.
     */
    function getSpotPrice(
        address token_
    ) external view returns (uint256 price) {
        (uint256 reserve0, uint256 reserve1) = IERC314(token).getReserves();

        if (reserve0 == 0 || reserve1 == 0) revert NoReserves(token);

        if (token_ == native) {
            price = reserve0 / reserve1; // Native token price in terms of paired token
        } else if (token_ == token) {
            price = reserve1 / reserve0; // Paired token price in terms of native token
        } else {
            revert InvalidToken(token_);
        }
    }

    /**
     * @notice Updates the period for the oracle.
     * @param newPeriod The new period in seconds.
     * @dev Only callable by the contract owner. The period must be greater than zero.
     */
    function setPeriod(uint256 newPeriod) external onlyOwner {
        if (newPeriod == 0) revert InvalidPeriod();
        period = newPeriod;

        emit NewPeriod(newPeriod);
    }
}
