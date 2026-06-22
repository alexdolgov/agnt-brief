// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import {OracleLibrary} from
    "@uniswap/v3-periphery/contracts/libraries/OracleLibrary.sol";
import {IUniswapV3Pool} from
    "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {IAeraV2Oracle} from "./interfaces/IAeraV2Oracle.sol";
import {IERC20Metadata} from "@openzeppelin/IERC20Metadata.sol";

/// @title UniswapV3TwapOracle.
/// @notice Used to calculate price of tokens in a Uniswap V3 pool.
contract UniswapV3TwapOracle is IAeraV2Oracle {
    /// @notice The address of underlying Uniswap pool.
    address public immutable pool;
    address private immutable token0;
    address private immutable token1;
    bool private immutable isToken0Priced;
    uint128 private immutable baseUnit;
    uint256 private immutable decimalsScalar;

    /// @notice Decimals of price returned by this oracle.
    uint8 public constant decimals = 18; // solhint-disable-line const-name-snakecase
    uint32 private constant uniV3OracleSecondsAgo = 24; // 2 blocks ago

    /// @notice Thrown priced token not token0 or token1 of the given pool
    error AeraPeriphery__PricedTokenNotInPool();
    /// @notice Thrown when pool is set to zero address
    error AeraPeriphery__PoolIsZeroAddress();

    /// @notice Initialize the oracle contract.
    /// @param pool_ The address of the underlying Uniswap pool.
    constructor(address pool_, address pricedToken) {
        if (pool_ == address(0)) revert AeraPeriphery__PoolIsZeroAddress();
        // Effects: set immutable parameters
        pool = pool_;

        token0 = IUniswapV3Pool(pool_).token0();
        // slither-disable-next-line similar-names
        uint256 token0Decimals = IERC20Metadata(token0).decimals();

        token1 = IUniswapV3Pool(pool_).token1();
        uint256 token1Decimals = IERC20Metadata(token1).decimals();

        if (pricedToken == token0) {
            isToken0Priced = true;
            baseUnit = uint128(10 ** token0Decimals);
            decimalsScalar = 10 ** (decimals - token1Decimals);
        } else if (pricedToken == token1) {
            isToken0Priced = false;
            baseUnit = uint128(10 ** token1Decimals);
            decimalsScalar = 10 ** (decimals - token0Decimals);
        } else {
            revert AeraPeriphery__PricedTokenNotInPool();
        }
    }

    /// @inheritdoc IAeraV2Oracle
    function latestRoundData()
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        (int24 arithmeticMeanTick,) =
            OracleLibrary.consult(address(pool), uniV3OracleSecondsAgo);

        uint256 quoteAmount = isToken0Priced
            ? OracleLibrary.getQuoteAtTick(
                arithmeticMeanTick, baseUnit, token0, token1
            )
            : OracleLibrary.getQuoteAtTick(
                arithmeticMeanTick, baseUnit, token1, token0
            );

        roundId = 0;
        answer = int256(quoteAmount * decimalsScalar);
        startedAt = 0;
        updatedAt = block.timestamp;
        answeredInRound = 0;
    }
}
