// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// import "./UniswapPairOracle.sol";

interface IUniswapPairOracle {
    function update() external;
    function twap(address token, uint256 pricePrecision) external view returns (uint256 amountOut);
    function spot(address token, uint256 pricePrecision) external view returns (uint256 amountOut);
    function token0() external view returns(address);
    function token1() external view returns(address);
}

contract GuardShieldOracle  {
    IUniswapPairOracle public immutable guardBnbOracle;
    IUniswapPairOracle public immutable shieldBnbOracle;
    
    address public immutable GUARD;
    address public immutable SHIELD;
    address public immutable BNB;
    
    uint256 public constant PRICE_PRECISION = 1e18;

    constructor(
        address _guardBnbOracle,
        address _shieldBnbOracle
    ) {
        guardBnbOracle = IUniswapPairOracle(_guardBnbOracle);
        shieldBnbOracle = IUniswapPairOracle(_shieldBnbOracle);
        
        // Verify token relationships and set addresses
        BNB = getCommonToken(_guardBnbOracle, _shieldBnbOracle);
        require(BNB != address(0), "No common token (BNB) found");
        
        GUARD = guardBnbOracle.token0() == BNB ? guardBnbOracle.token1() : guardBnbOracle.token0();
        SHIELD = shieldBnbOracle.token0() == BNB ? shieldBnbOracle.token1() : shieldBnbOracle.token0();
        
        // transferOwnership(initialOwner);
    }

    // Helper to identify the common token (BNB)
    function getCommonToken(address oracle1, address oracle2) internal view returns (address) {
        IUniswapPairOracle o1 = IUniswapPairOracle(oracle1);
        IUniswapPairOracle o2 = IUniswapPairOracle(oracle2);
        
        address o1Token0 = o1.token0();
        address o1Token1 = o1.token1();
        address o2Token0 = o2.token0();
        address o2Token1 = o2.token1();
        
        if (o1Token0 == o2Token0 || o1Token0 == o2Token1) return o1Token0;
        if (o1Token1 == o2Token0 || o1Token1 == o2Token1) return o1Token1;
        return address(0);
    }

    // Updates both underlying oracles
    function update() external {
        guardBnbOracle.update();
        shieldBnbOracle.update();
    }

    // Get the TWAP price of 1 SHIELD in terms of GUARD
    function twap() external view returns (uint256) {
        // Get price of 1 GUARD in BNB (how much BNB equals 1 GUARD)
        uint256 guardPriceInBnb = guardBnbOracle.twap(GUARD, PRICE_PRECISION);
        
        // Get price of 1 SHIELD in BNB (how much BNB equals 1 SHIELD)
        uint256 shieldPriceInBnb = shieldBnbOracle.twap(SHIELD, PRICE_PRECISION);
        
        // Price SHIELD/GUARD =  (SHIELD/BNB) / (GUARD/BNB)
        return (shieldPriceInBnb * PRICE_PRECISION) / guardPriceInBnb;
    }

    // Get the TWAP price of 1 GUARD in terms of SHIELD
    function twapGuardToShield() external view returns (uint256) {
        // Get price of 1 GUARD in BNB (how much BNB equals 1 GUARD)
        uint256 guardPriceInBnb = guardBnbOracle.twap(GUARD, PRICE_PRECISION);
        
        // Get price of 1 SHIELD in BNB (how much BNB equals 1 SHIELD)
        uint256 shieldPriceInBnb = shieldBnbOracle.twap(SHIELD, PRICE_PRECISION);
        
        // Price GUARD/SHIELD = (GUARD/BNB) / (SHIELD/BNB)
        return (guardPriceInBnb * PRICE_PRECISION) / shieldPriceInBnb;
    }

    
    // Get the spot price of 1 SHIELD in terms of SHIELD
    function spot() external view returns (uint256) {
        // Get spot price of 1 GUARD in BNB
        uint256 guardPriceInBnb = guardBnbOracle.spot(GUARD, PRICE_PRECISION);
        
        // Get spot price of 1 SHIELD in BNB
        uint256 shieldPriceInBnb = shieldBnbOracle.spot(SHIELD, PRICE_PRECISION);
        
        // Price SHIELD/GUARD = (SHIELD/BNB) / (GUARD/BNB)
        return (guardPriceInBnb * PRICE_PRECISION) / shieldPriceInBnb;
    }


    // Get the spot price of 1 GUARD in terms of SHIELD
    function spotGuardToShield() external view returns (uint256) {
        // Get spot price of 1 GUARD in BNB
        uint256 guardPriceInBnb = guardBnbOracle.spot(GUARD, PRICE_PRECISION);
        
        // Get spot price of 1 SHIELD in BNB
        uint256 shieldPriceInBnb = shieldBnbOracle.spot(SHIELD, PRICE_PRECISION);
        
        // Price GUARD/SHIELD = (GUARD/BNB) / (SHIELD/BNB)
        return (guardPriceInBnb * PRICE_PRECISION) / shieldPriceInBnb;
    }
}