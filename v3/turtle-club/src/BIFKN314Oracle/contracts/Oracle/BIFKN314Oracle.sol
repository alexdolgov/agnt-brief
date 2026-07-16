// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "../interfaces/IERC314.sol";
import "./libraries/BIFKN314OracleLibrary.sol";

// fixed window oracle that recomputes the average price for the entire period once every period
// note that the price average is only guaranteed to be over at least 1 period, but may be over a longer period
contract BIFKN314Oracle {
    uint private constant Q112 = 2 ** 112; // Scaling factor for 112.112 fixed-point numbers

    address public immutable native;
    address public immutable token;
    address public owner;

    uint256 public period = 30 seconds; // Minimum update interval
    /*
     * @notice Reflects the price of token in native currency
     */
    uint256 public tokenPriceCumulativeLast;
    /*
     * @notice Reflects the price of native currency in token
     */
    uint256 public nativePriceCumulativeLast;
    /*
     * @notice The average price of the token in native currency over the last period
     */
    uint256 public tokenPriceAverage;
    /*
     * @notice The average price of the native currency in token over the last period
     */
    uint256 public nativePriceAverage;
    uint32 public blockTimestampLast;

    modifier onlyOwner() {
        require(msg.sender == owner, "BIFKN314Oracle: NOT_OWNER");
        _;
    }

    event Updated(
        uint256 tokenPriceCumulativeLast,
        uint256 nativePriceCumulativeLast,
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
        tokenPriceCumulativeLast = IERC314(token).price0CumulativeLast(); // fetch the current accumulated price value (1 / 0)
        nativePriceCumulativeLast = IERC314(token).price1CumulativeLast(); // fetch the current accumulated price value (0 / 1)
        uint256 nativeReserve;
        uint256 tokenReserve;
        (nativeReserve, tokenReserve) = IERC314(token).getReserves();
        blockTimestampLast = IERC314(token).blockTimestampLast();

        if (nativeReserve == 0 || tokenReserve == 0) revert NoReserves(token);
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
            uint tokenPriceCumulative,
            uint nativePriceCumulative,
            uint32 blockTimestamp
        ) = BIFKN314OracleLibrary.currentCumulativePrices(token);
        uint32 timeElapsed = blockTimestamp - blockTimestampLast; // overflow is desired

        // ensure that at least one full period has passed since the last update
        if (timeElapsed < period) revert PeriodNotElapsed();

        uint256 deltaToken = tokenPriceCumulative - tokenPriceCumulativeLast;
        uint256 deltaNative = nativePriceCumulative - nativePriceCumulativeLast;

        // overflow is desired, casting never truncates
        // cumulative price is in (uq112x112 price * seconds) units so we simply wrap it after division by time elapsed
        tokenPriceAverage = deltaToken / timeElapsed;
        nativePriceAverage = deltaNative / timeElapsed;

        tokenPriceCumulativeLast = tokenPriceCumulative;
        nativePriceCumulativeLast = nativePriceCumulative;
        blockTimestampLast = blockTimestamp;

        emit Updated(
            tokenPriceCumulative,
            nativePriceCumulative,
            blockTimestamp
        );
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
            // Multiply the input amount by the average price of native in token terms
            // Gives how much token you get for native
            amountOut = (amountIn * nativePriceAverage) / Q112;
        } else if (token_ == token) {
            // Multiply the input amount by the average price of token in native terms
            // Gives how much native you get for token
            amountOut = (amountIn * tokenPriceAverage) / Q112;
        } else {
            revert InvalidToken(token_);
        }
    }

    /**
     * @notice Retrieves the current spot price for the token pair.
     * @param targetToken The address of the token to query (must be either the native token or the paired token).
     * @dev Reverts if `targetToken` is neither the native token nor the paired token.
     */
    function getSpotPrice(
        address targetToken
    ) external view returns (uint256 price) {
        (uint256 nativeReserve, uint256 tokenReserve) = IERC314(token)
            .getReserves();

        if (nativeReserve == 0 || tokenReserve == 0)
            revert NoReserves(targetToken);

        if (targetToken == native) {
            price = (tokenReserve * 1e18) / nativeReserve; // Paired token in terms of native token
        } else if (targetToken == token) {
            price = (nativeReserve * 1e18) / tokenReserve; // Native token in terms of paired token
        } else {
            revert InvalidToken(targetToken);
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
