// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "@openzeppelin/contracts/utils/math/SignedMath.sol";
import "../Interfaces/VBep20Interface.sol";
import { ensureNonzeroAddress } from "../lib/validators.sol";
import { CappedCorrelatedTokenOracle } from "./common/CappedCorrelatedTokenOracle.sol";
import "../Interfaces/PythInterface.sol";
import "../Interfaces/OracleInterface.sol";


/**
 * @title HLP0Oracle
 * @author Enclabs
 * @notice This oracle fetches the price of HLP0.
 */
contract HLP0Oracle is CappedCorrelatedTokenOracle {

    // To calculate 10 ** n(which is a signed type)
    using SignedMath for int256;

    // To cast int64/int8 types from Pyth to unsigned types
    using SafeCast for int256;
    /// @notice Exponent scale (decimal precision) of prices
    uint256 public constant EXP_SCALE = 1e18;
    uint256 public constant INVALID_PRICE = 0;
   

    /// @notice The actual pyth oracle address fetch & store the prices
    IPyth public underlyingPythOracle;
   
    /// @notice Constructor for the implementation contract.
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(
        address _hlp0,
        address _usdc,
        address _resilientOracle,
        uint256 _annualGrowthRate,
        uint256 _snapshotInterval
    
    ) CappedCorrelatedTokenOracle(_hlp0, _usdc, _resilientOracle, _annualGrowthRate, _snapshotInterval) {
        ensureNonzeroAddress(_hlp0);
        ensureNonzeroAddress(_usdc);
        ensureNonzeroAddress(_resilientOracle);
        
    

        underlyingPythOracle = IPyth(0x2880aB155794e7179c9eE2e38200202908C17B43);
    }

    /**
     * @notice Gets the RR for 1 HLP0
     * @return amount Redeem Rate for 1 HLP0
     */
    function _getUnderlyingAmount() internal view override returns (uint256) {
        // if the price is expired after it's compared against `maxStalePeriod`, the following call will revert
        PythStructs.Price memory priceInfo = underlyingPythOracle.getPriceNoOlderThan(
            0xaa388e24e74d5dd12145f74fad3180266f78ed08c0a2f47c60583fdb612587ba,
            3600*24
        );

        uint256 price = int256(priceInfo.price).toUint256();
       
        if (price == 0) revert("invalid pyth oracle price");

        uint256 decimals;
        IERC20Metadata token = IERC20Metadata(0x3D75F2BB8aBcDBd1e27443cB5CBCE8A668046C81);
        decimals = token.decimals();

         // the price returned from Pyth is price ** 10^expo, which is the real dollar price of the assets
        // we need to multiply it by 1e18 to make the price 18 decimals
        if (priceInfo.expo > 0) {
            return price  * (10 ** int256(priceInfo.expo).toUint256()) * (10 ** (18 - decimals));
        } else {
            return ((price * EXP_SCALE) / (10 ** int256(-priceInfo.expo).toUint256())) * (10 ** (18 - decimals)) / (10 ** decimals);
        }
    }

   
    
}
