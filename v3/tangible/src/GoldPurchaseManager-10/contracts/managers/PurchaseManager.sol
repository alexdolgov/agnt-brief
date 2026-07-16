// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import "../constants/addresses.sol";
import "../interfaces/ITreasury.sol";
import "../interfaces/ITokenSwap.sol";
import "../AddressAccessor.sol";

abstract contract PurchaseManager is AddressAccessor {
    function _validatePurchase(uint256 amount) internal view {
        if (amount == 0) {
            return; // all good, no underlying spending, only usdr
        }
        address treasury = addressProvider.getAddress(TREASURY_ADDRESS);
        ITreasury.TreasuryValue memory tv = ITreasury(treasury)
            .getTreasuryValue();
        uint256 stableThreshold = uint256(
            ITreasury(treasury).purchaseStableThreshold()
        );
        uint256 stableLPThreshold = uint256(
            ITreasury(treasury).purchaseStableLPThreshold()
        );
        uint256 totalSTLPValue = tv.stable + tv.usdr + tv.liquidity;
        uint256 percentSTValue = (tv.total * stableThreshold) / 100;
        uint256 percentSTLPValue = (tv.total * stableLPThreshold) / 100;
        //check if total stable + lp above stableLPThreshold
        require(
            totalSTLPValue > percentSTLPValue,
            string(
                abi.encodePacked(
                    "STLP only ",
                    Strings.toString((totalSTLPValue * 100) / tv.total),
                    " %"
                )
            )
        );
        // check if stable above stableThreshold
        require(
            (tv.stable + tv.usdr) > percentSTValue,
            string(
                abi.encodePacked(
                    "ST only ",
                    Strings.toString(((tv.stable + tv.usdr) * 100) / tv.total),
                    " %"
                )
            )
        );

        uint256 stableNotToGoBelow = (tv.total * stableThreshold) / 100;
        uint256 ableToSpend = tv.stable < stableNotToGoBelow
            ? 0
            : tv.stable - stableNotToGoBelow;

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

    //need to add second part - to convert treasury token to payment token
    function _convertTreasuryTokenToPayment(
        IERC20 paymentToken,
        uint256 amountReserveToken,
        bool instantLiquidity_,
        uint256 itemPrice,
        uint256 toFillUpToItemPrice
    ) internal {
        (
            address instantLiquidity,
            address marketplace,
            address tokenSwap,
            address underlying
        ) = abi.decode(
                addressProvider.getAddresses(
                    abi.encode(
                        INSTANT_LIQUIDITY_ADDRESS,
                        TANGIBLE_MARKETPLACE_ADDRESS,
                        TOKEN_SWAP_ADDRESS,
                        UNDERLYING_ADDRESS
                    )
                ),
                (address, address, address, address)
            );
        IERC20(underlying).approve(tokenSwap, amountReserveToken);
        ITokenSwap(tokenSwap).exchange(
            underlying,
            address(paymentToken),
            amountReserveToken,
            toFillUpToItemPrice,
            ITokenSwap.EXCHANGE_TYPE.EXACT_OUTPUT
        );

        if (!instantLiquidity_) {
            paymentToken.approve(marketplace, itemPrice);
        } else {
            paymentToken.approve(instantLiquidity, itemPrice);
        }
    }

    function _convertToCorrectDecimals(
        uint256 price,
        uint8 inTokenDecimals,
        uint8 outTokenDecimals
    ) internal pure returns (uint256) {
        if (uint256(inTokenDecimals) > outTokenDecimals) {
            return price / (10**(inTokenDecimals - outTokenDecimals));
        } else if (uint256(inTokenDecimals) < outTokenDecimals) {
            return price * (10**(outTokenDecimals - inTokenDecimals));
        }
        return price;
    }

    function _checkPaymentTokenAndAmountNeeded(
        IERC20 paymentToken,
        uint256 amount
    ) internal view returns (uint256 reserveAmount) {
        (address tokenSwap, address underlying) = abi.decode(
            addressProvider.getAddresses(
                abi.encode(TOKEN_SWAP_ADDRESS, UNDERLYING_ADDRESS)
            ),
            (address, address)
        );
        uint8 paymentDecimals = IERC20Metadata(address(paymentToken))
            .decimals();
        uint8 underlyingDecimals = IERC20Metadata(underlying).decimals();
        // we use this algorithm because curve doesn't have ability to calculate quoteIn
        uint256 calcAmount = _convertToCorrectDecimals(
            amount,
            paymentDecimals,
            underlyingDecimals
        );

        do {
            reserveAmount = ITokenSwap(tokenSwap).quoteOut(
                underlying,
                address(paymentToken),
                calcAmount
            );

            if (reserveAmount < amount) {
                calcAmount =
                    calcAmount +
                    _convertToCorrectDecimals(
                        reserveAmount - amount,
                        paymentDecimals,
                        underlyingDecimals
                    ) +
                    10**uint256(underlyingDecimals); // add 1 dollar
            }
        } while (reserveAmount < amount);
    }
}
