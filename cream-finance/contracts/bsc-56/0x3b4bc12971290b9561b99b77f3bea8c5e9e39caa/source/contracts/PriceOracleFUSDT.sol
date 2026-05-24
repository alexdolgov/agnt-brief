pragma solidity ^0.5.16;

import "./CErc20.sol";
import "./CToken.sol";
import "./PriceOracle.sol";
import "./Exponential.sol";
import "./EIP20Interface.sol";

contract PriceOracleFUSDT is PriceOracle, Exponential {
    /// @notice Admin address
    address public admin;

    /// @notice Guardian address
    address public guardian;

    /// @notice Indicator that this is a PriceOracle contract (for inspection)
    bool public constant isPriceOracle = true;

    address public constant fusdtAddress = 0x049d68029688eAbF473097a2fC38ef61633A3C7A;

    /**
     * @notice Get the underlying price of a listed cToken asset
     * @param cToken The cToken to get the underlying price of
     * @return The underlying asset price mantissa (scaled by 1e18)
     */
    function getUnderlyingPrice(CToken cToken) public view returns (uint) {
        address cTokenAddress = address(cToken);

        address underlying = CErc20(cTokenAddress).underlying();
        return getTokenPrice(underlying);
    }

    /*** Internal fucntions ***/

    /**
     * @notice Get the price of a specific token.
     * @param token The token to get the price of
     * @return The price
     */
    function getTokenPrice(address token) internal pure returns (uint) {
        require(token == fusdtAddress, "fUSDT only");
        return 1e18;
    }
}
