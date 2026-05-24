// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.21;

import "../../interfaces/IPriceQuoter.sol";
import "../uniswap/OracleLibrary.sol";

/// @title UniswapV3TwapQuoter
/// @notice Price quoter that uses Uniswap V3 TWAP for price discovery
contract UniswapV3TwapQuoter is IPriceQuoter {
    address public immutable factory;
    address public immutable weth;
    address public constant ETH = address(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE);
    bytes32 internal constant POOL_INIT_CODE_HASH = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
    uint32 public constant MIN_SECONDS_AGO = 300; // 5-minute minimum TWAP window

    error InvalidPool();
    error InvalidSecondsAgo();

    constructor(address factory_, address weth_) {
        factory = factory_;
        weth = weth_;
    }

    /// @inheritdoc IPriceQuoter
    /// @dev args is encoded as (uint24 fee, uint32 secondsAgo)
    /// @dev Returns price as amount of currencyOut per QUOTER_PRECISION units of currencyIn
    function getPrice(address currencyIn, address currencyOut, bytes calldata args)
        external
        view
        override
        returns (uint256 price)
    {
        if (currencyIn == ETH) currencyIn = weth;
        if (currencyOut == ETH) currencyOut = weth;

        if (currencyIn == currencyOut) return QUOTER_PRECISION;

        (uint24 fee, uint32 secondsAgo) = abi.decode(args, (uint24, uint32));
        if (secondsAgo < MIN_SECONDS_AGO) revert InvalidSecondsAgo();

        address pool = _computePoolAddress(currencyIn, currencyOut, fee);
        if (pool.code.length == 0) revert InvalidPool();

        (int24 meanTick,) = OracleLibrary.consult(pool, secondsAgo);
        price = OracleLibrary.getQuoteAtTick(meanTick, uint128(QUOTER_PRECISION), currencyIn, currencyOut);
    }

    /// @dev Compute pool address using CREATE2 (adapted from PoolAddress library)
    function _computePoolAddress(address tokenA, address tokenB, uint24 fee) internal view returns (address pool) {
        if (tokenA > tokenB) (tokenA, tokenB) = (tokenB, tokenA);
        pool = address(
            uint160(
                uint256(
                    keccak256(
                        abi.encodePacked(
                            hex"ff", factory, keccak256(abi.encode(tokenA, tokenB, fee)), POOL_INIT_CODE_HASH
                        )
                    )
                )
            )
        );
    }
}
