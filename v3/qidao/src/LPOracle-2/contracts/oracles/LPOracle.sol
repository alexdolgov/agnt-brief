// contracts/LPOracle.sol
// SPDX-License-Identifier: UTD

pragma solidity 0.5.16;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";

import "@openzeppelin/contracts/math/SafeMath.sol";

import "../utils/HomoraMath.sol";
import "../PriceSource.sol";
import "../interfaces/IUniswapV2Pair.sol";

contract LPOracle {

    using SafeMath for uint256;
    using HomoraMath for uint256;

    PriceSource public oracleA;
    PriceSource public oracleB;

    ERC20 public tokenA;
    ERC20 public tokenB;

    IUniswapV2Pair public lpToken;

    uint256 public fallbackPriceA;
    uint256 public fallbackPriceB;

    event FallbackPrice(
         address from,
         int256 price
         );

    constructor(
    	address _tokenA, 
    	address _tokenB, 
    	address _lpToken, 
    	address _oracleA,
    	address _oracleB
    ) 
    public {
    	tokenA = ERC20(_tokenA);
    	tokenB = ERC20(_tokenB);
    	lpToken= IUniswapV2Pair(_lpToken);

    	oracleA = PriceSource(_oracleA);
    	oracleB = PriceSource(_oracleB);
    }

    function getChainlinkPrice(PriceSource oracle, uint256 fallback) internal view returns (uint256) {

        (,int256 price,,,) = oracle.latestRoundData();

        uint256 _price;

        if(price>0){
            _price=uint256(price);
        } else {
            _price=fallback;
        }
        return _price;
    }

    function updateFallback() public {
        (,int256 priceA,,,) = oracleA.latestRoundData();
        (,int256 priceB,,,) = oracleB.latestRoundData();

        if (priceA > 0) {
            fallbackPriceA = uint256(priceA);
            emit FallbackPrice(address(oracleA),priceA);
        }

        if (priceB > 0) {
            fallbackPriceB = uint256(priceB);
            emit FallbackPrice(address(oracleB),priceB);
        }
    }


    function latestRoundData() public view returns (uint256 answer) {
        address token0 = lpToken.token0();
        address token1 = lpToken.token1();
        uint256 totalSupply = lpToken.totalSupply();
        (uint256 r0, uint256 r1, ) = lpToken.getReserves();

        uint256 sqrtR = (r0.mul(r1)).sqrt();

        uint256 p0 = getChainlinkPrice(oracleA, fallbackPriceA);
        uint256 p1 = getChainlinkPrice(oracleB, fallbackPriceB);

        uint256 sqrtP = (p0.mul(p1)).sqrt();
        
        uint256 decimalA = uint256(oracleA.decimals());
        uint256 decimalB = uint256(oracleB.decimals());
        uint256 decimalLP = uint256(lpToken.decimals());

        uint256 finalDecimal = (decimalLP.sub(decimalA)).sub(decimalB);

        return sqrtR.mul(sqrtP).mul(2).div(totalSupply).div(10 ** finalDecimal);
    }
}