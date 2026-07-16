// contracts/shareOracle.sol
// SPDX-License-Identifier: UTD

pragma solidity 0.8.11;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../interfaces/ChainlinkPrice.sol";
import "../interfaces/TetuVault.sol";

contract OracleTetu {

    // this should just be vieweing a chainlink oracle's price
    // then it would check the balances of that contract in the token that its checking.
    // it should return the price per token based on the camToken's balance

    PriceSource public priceSource;
    TetuVault public vault;

    uint256 public fallbackPrice;

    event FallbackPrice(
        uint256 price
    );

    // price Source gives underlying price per token
    // shareToken should hold underlying and we need to calculate a PPS

    constructor(
        address _priceSource,
        address _vault
    ) public {
        priceSource = PriceSource(_priceSource);
        vault = TetuVault(_vault);
    }

    function latestAnswer() public view returns (uint256 answer) {
        int256 oracleAnswer = priceSource.latestAnswer();

        uint256 underlyingPrice;

        if (oracleAnswer > 0) {
            underlyingPrice = uint256(oracleAnswer);
        } else {
            underlyingPrice = fallbackPrice;
        }

        uint256 sharePrice = (
        	// 1e18 * 1e8 / 1e18 = 1e8
        	( vault.getPricePerFullShare() * underlyingPrice ) / 1e18
        );

        return sharePrice;
    }

    function getUnderlying() public view returns (uint256) {
        return vault.getPricePerFullShare();
    }

    function updateFallbackPrice() public {
        int256 price = priceSource.latestAnswer();

        if (price > 0) {
            fallbackPrice = uint256(price);
            emit FallbackPrice(fallbackPrice);
        }
    }
}
