// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

interface IUniswapPairOracle {
    function update() external;
    function twap(
        address token,
        uint256 pricePrecision
    ) external view returns (uint256 amountOut);
    function spot(
        address token,
        uint256 pricePrecision
    ) external view returns (uint256 amountOut);
    function token0() external view returns (address);
    function token1() external view returns (address);
}
interface IUniswapV3PairOracle {
    function quote(
        address tokenIn,
        uint256 amountIn,
        address tokenOut
    ) external view returns (uint256 amountOut);
}

contract AndyShieldOracle {
    IUniswapV3PairOracle public immutable andyBnbOracle;
    IUniswapPairOracle public immutable shieldBnbOracle;

    address public immutable ANDY;
    address public immutable SHIELD;
    address public immutable BNB;

    uint256 public constant PRICE_PRECISION = 1e18;

    constructor(
        address _andyBnbOracle,
        address _shieldBnbOracle,
        address _andy,
        address _shield,
        address _bnb
    ) {
        andyBnbOracle = IUniswapV3PairOracle(_andyBnbOracle);
        shieldBnbOracle = IUniswapPairOracle(_shieldBnbOracle);
        ANDY = _andy;
        SHIELD = _shield;
        BNB = _bnb;
    }

    // Get the TWAP price of 1 SHIELD in terms of ANDY
    function twap() external view returns (uint256 shieldAmount) {
        // Get ANDY price in BNB (how much BNB equals 1 ANDY)
        uint256 andyPriceInBnb = andyBnbOracle.quote(
            ANDY,
            PRICE_PRECISION,
            BNB
        );

        // Get price of 1 SHIELD in BNB (how much BNB equals 1 SHIELD)
        uint256 shieldPriceInBnb = shieldBnbOracle.twap(
            SHIELD,
            PRICE_PRECISION
        );

        // Calculate ANDY price in SHIELD
        // Price SHIELD/ANDY =  (SHIELD/BNB) / (ANDY/BNB)
        shieldAmount = (shieldPriceInBnb * PRICE_PRECISION) / andyPriceInBnb;
    }

    // Get the TWAP price of 1 ANDY in terms of SHIELD
    function twapAndyToShield() external view returns (uint256) {
        // Get ANDY price in BNB (how much BNB equals 1 ANDY)
        uint256 andyPriceInBnb = andyBnbOracle.quote(
            ANDY,
            PRICE_PRECISION,
            BNB
        );

        // Get price of 1 SHIELD in BNB (how much BNB equals 1 SHIELD)
        uint256 shieldPriceInBnb = shieldBnbOracle.twap(
            SHIELD,
            PRICE_PRECISION
        );

        // Price ANDY/SHIELD = (ANDY/BNB) / (SHIELD/BNB)
        return (andyPriceInBnb * PRICE_PRECISION) / shieldPriceInBnb;
    }

    // Get the spot price of 1 SHIELD in terms of ANDY
    function spot() external view returns (uint256 shieldAmount) {
        // Get ANDY price in BNB (how much BNB equals 1 ANDY)
        uint256 andyPriceInBnb = andyBnbOracle.quote(
            ANDY,
            PRICE_PRECISION,
            BNB
        );

        // Get price of 1 SHIELD in BNB (how much BNB equals 1 SHIELD)
        uint256 shieldPriceInBnb = shieldBnbOracle.spot(
            SHIELD,
            PRICE_PRECISION
        );

        // Calculate ANDY price in SHIELD
        // Price SHIELD/ANDY =  (SHIELD/BNB) / (ANDY/BNB)
        shieldAmount = (shieldPriceInBnb * PRICE_PRECISION) / andyPriceInBnb;
    }

    // Get the spot price of 1 ANDY in terms of SHIELD
    function spotAndyToShield() external view returns (uint256) {
        // Get ANDY price in BNB (how much BNB equals 1 ANDY)
        uint256 andyPriceInBnb = andyBnbOracle.quote(
            ANDY,
            PRICE_PRECISION,
            BNB
        );

        // Get price of 1 SHIELD in BNB (how much BNB equals 1 SHIELD)
        uint256 shieldPriceInBnb = shieldBnbOracle.spot(
            SHIELD,
            PRICE_PRECISION
        );

        // Price ANDY/SHIELD = (ANDY/BNB) / (SHIELD/BNB)
        return (andyPriceInBnb * PRICE_PRECISION) / shieldPriceInBnb;
    }
}
