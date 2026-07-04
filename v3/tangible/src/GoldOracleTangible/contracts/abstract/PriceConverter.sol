// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

abstract contract PriceConverter {
    function convertPriceToUSDC(uint256 price, uint8 decimals)
        internal
        pure
        returns (uint256)
    {
        require(
            decimals > uint8(0) && decimals <= uint8(18),
            "Invalid _decimals"
        );
        if (uint256(decimals) > 6) {
            return price / (10**(uint256(decimals) - 6));
        } else if (uint256(decimals) < 6) {
            return price * (10**(6 - uint256(decimals)));
        }
        return price;
    }
}
