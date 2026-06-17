// contracts/LPOracle.sol
// SPDX-License-Identifier: UTD

pragma solidity 0.5.16;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";

import "@openzeppelin/contracts/math/SafeMath.sol";

import "../PriceSource.sol";

contract eIERC20 is IERC20 {
    function decimals() view external returns (uint8);
}

contract LPOracle {

    using SafeMath for uint256;

    PriceSource public oracleA;
    PriceSource public oracleB;

    ERC20 public tokenA;
    ERC20 public tokenB;

    eIERC20 public lpToken;

// price Source gives underlying price per token
// we need two because we're using liquidity pool tokens.
// we'll only support using LP tokens where there are chainlink oracles available for both 

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
    	lpToken= eIERC20(_lpToken);

    	oracleA = PriceSource(_oracleA);
    	oracleB = PriceSource(_oracleB);
    }

    // we can't merge the round information so we'll just send the data together.
    // should take a look again to make sure this is a safe implementation
    // esp. when it comes to "bad" data given by chainlink.

	function latestRoundData() public view
		returns 
			(uint256 answer)
		{

		uint256 balanceA = tokenA.balanceOf(address(lpToken));
		uint256 balanceB = tokenB.balanceOf(address(lpToken));

        uint256 decimalA = uint256(oracleA.decimals());
        uint256 decimalB = uint256(oracleB.decimals());
    
        uint256 decimalLP = uint256(lpToken.decimals());

        uint256 finalDecimal = (decimalLP.sub(decimalA)).sub(decimalB);

        (,int256 priceA,,,) = oracleA.latestRoundData();
        (,int256 priceB,,,) = oracleB.latestRoundData();

        // ( lp hold A * price + lp hold B * price ) / total supply = value of each LP Token
        //		i think that would give us the price for each LP token

        uint256 valueLPA = balanceA.mul(uint256(priceA));
        uint256 valueLPB = balanceB.mul(uint256(priceA));
        
        uint256 valueLP = valueLPA.add(valueLPB);

        uint256 priceLP = valueLP.div(lpToken.totalSupply()).div(10 ** finalDecimal);
		
		return(priceLP);
	}
}



