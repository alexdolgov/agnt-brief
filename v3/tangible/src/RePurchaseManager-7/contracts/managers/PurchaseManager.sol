// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import "../constants/addresses.sol";
import "../interfaces/ITreasury.sol";
import "../AddressAccessor.sol";

abstract contract PurchaseManager is AddressAccessor {
    struct ValueHolder {
        uint256 stable;
        uint256 rwa;
        uint256 tngbl_;
        uint256 liquidity;
        uint256 debt;
        uint256 percentSTValue;
        uint256 percentSTLPValue;
    }

    function _validatePurchase(uint256 amount) internal view {
        address treasury = addressProvider.getAddress(TREASURY_ADDRESS);
        ValueHolder memory vh;
        (vh.stable, vh.rwa, vh.tngbl_, vh.liquidity, vh.debt) = ITreasury(
            treasury
        ).getTreasuryValue();
        uint256 stableThreshold = uint256(
            ITreasury(treasury).purchaseStableThreshold()
        );
        uint256 stableLPThreshold = uint256(
            ITreasury(treasury).purchaseStableLPThreshold()
        );
        uint256 totalValue = (vh.stable + vh.rwa + vh.liquidity - vh.debt);
        uint256 totalSTLPValue = totalValue - vh.rwa;
        vh.percentSTValue = (totalValue * stableThreshold) / 100;
        vh.percentSTLPValue = (totalValue * stableLPThreshold) / 100;
        //check if total stable + lp above stableLPThreshold
        require(
            totalSTLPValue > vh.percentSTLPValue,
            string(
                abi.encodePacked(
                    "STLP only ",
                    Strings.toString((totalSTLPValue * 100) / totalValue),
                    " %"
                )
            )
        );
        // check if stable above stableThreshold
        require(
            vh.stable > vh.percentSTValue,
            string(
                abi.encodePacked(
                    "ST only ",
                    Strings.toString((vh.stable * 100) / totalValue),
                    " %"
                )
            )
        );

        uint256 stableNotToGoBelow = (totalValue * stableThreshold) / 100;
        uint256 ableToSpend = vh.stable < stableNotToGoBelow
            ? 0
            : vh.stable - stableNotToGoBelow;

        require(
            ableToSpend >= amount,
            string(
                abi.encodePacked(
                    "ST ",
                    Strings.toString(ableToSpend),
                    " not enough for amount ",
                    Strings.toString(amount)
                )
            )
        );
    }
}
