// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.20;

import "./PriceOracle.sol";
import "./CErc20.sol";
import "./EIP20Interface.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SimplePriceOracleV2 is Ownable(msg.sender), PriceOracle {
    mapping (address => uint) public prices;

    event PricePosted(address asset, uint previousPriceMantissa, uint requestedPriceMantissa, uint newPriceMantissa);

    // Constructor prices removed — set via setDirectPrice() from deployment script per chain.
    // See HARDCODE.md for details.
    //
    // Previously hardcoded Lisk prices:
    // prices[0x0000000000000000000000000000000000000000] = 1895000000000000000000;              // ETH $1,895
    // prices[0xac485391EB2d7D88253a7F1eF18C37f4242D1A24] = 570000000000000000;                 // LSK $0.57
    // prices[0x18Bc5bcC660cf2B9cE3cd51a404aFe1a0cBD3C22] = 610000000000000000000000000000;      // IDRX
    // prices[0x05D032ac25d322df992303dCa074EE7392C117b9] = 1000000000000000000000000000000;     // USDT $1

    function getUnderlyingPrice(CToken cToken) public view override returns (uint) {
        address underlying = underlyingAddress(cToken);
        return prices[underlying];
    }

    function setUnderlyingPrice(CToken cToken, uint underlyingPriceMantissa) public onlyOwner {
        address asset = underlyingAddress(cToken);
        setDirectPrice(asset, underlyingPriceMantissa);
    }

    function setUnderlyingPriceBatch(CToken[] memory cTokens, uint[] memory newPrices) public onlyOwner {
        for ( uint i = 0; i < cTokens.length; i++ ) {
            address asset = underlyingAddress(cTokens[i]);
            setDirectPrice(asset, newPrices[i]);
        }
    }

    function setDirectPrice(address asset, uint price) public onlyOwner {
        emit PricePosted(asset, prices[asset], price, price);
        prices[asset] = price;
    }

    // v1 price oracle interface for use as backing of proxy
    function assetPrices(address asset) external view returns (uint) {
        return prices[asset];
    }

    // Detects CEther (no underlying) vs CErc20 via try/catch.
    // Previously hardcoded: compareStrings(cToken.symbol(), "nETH")
    function underlyingAddress(CToken cToken) internal view returns (address) {
        try CErc20(address(cToken)).underlying() returns (address underlying) {
            return underlying;
        } catch {
            return address(0);
        }
    }
}
