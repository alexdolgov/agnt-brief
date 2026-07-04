// SPDX-License-Identifier: ISC

pragma solidity 0.7.5;

import "@openzeppelin/contracts/math/SafeMath.sol";
import "../AugustusStorage.sol";
import "../lib/Utils.sol";
import "./IFeeClaimer.sol";
// helpers
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract FeeModel is AugustusStorage {
    using SafeMath for uint256;

    uint256 public immutable partnerSharePercent;
    uint256 public immutable maxFeePercent;
    IFeeClaimer public immutable feeClaimer;

    constructor(
        uint256 _partnerSharePercent,
        uint256 _maxFeePercent,
        IFeeClaimer _feeClaimer
    ) public {
        partnerSharePercent = _partnerSharePercent;
        maxFeePercent = _maxFeePercent;
        feeClaimer = _feeClaimer;
    }

    // feePercent is a packed structure.
    // Bits 255-248 = 8-bit version field
    //
    // Version 0
    // =========
    // Entire structure is interpreted as the fee percent in basis points.
    // If set to 0 then partner will not receive any fees.
    //
    // Version 1
    // =========
    // Bits 13-0 = Fee percent in basis points
    // Bit 14 = positiveSlippageToUser (positive slippage to partner if not set)
    // Bit 15 = if set, take fee from fromToken, toToken otherwise
    // Bit 16 = if set, do fee distribution as per referral program
    function takeFeeAndTransferTokens(
        address toToken,
        uint256 expectedAmount,
        uint256 receivedAmount,
        address payable beneficiary,
        address payable partner,
        uint256 feePercent
    ) internal returns (uint256 remainingAmount) {
        uint256 fee = 0;
        if (feePercent != 0 && partner != address(0)) {
            uint256 version = feePercent >> 248;
            if (version == 0) {
                fee = _takeFeeForPartner(
                    feePercent > maxFeePercent ? maxFeePercent : feePercent,
                    toToken,
                    receivedAmount,
                    expectedAmount,
                    partnerSharePercent,
                    true, //positiveSlippageToUser
                    partner
                );
            } else if (version == 1) {
                uint256 feeBps = feePercent & 0x3FFF;
                if ((feePercent & (1 << 16)) != 0) {
                    fee = _takeFeeForReferrer(
                        feeBps > 10000 ? 10000 : feeBps,
                        toToken,
                        receivedAmount,
                        expectedAmount,
                        partner
                    );
                } else {
                    fee = _takeFeeForPartner(
                        feeBps > maxFeePercent ? maxFeePercent : feeBps,
                        toToken,
                        receivedAmount,
                        expectedAmount,
                        partnerSharePercent,
                        (feePercent & (1 << 14)) != 0, //positiveSlippageToUser
                        partner
                    );
                }
            }
        }

        remainingAmount = receivedAmount;

        //If there is a positive slippage and no partner fee
        //then 50% goes to paraswap and 50% to the user
        if (fee == 0) {
            if (remainingAmount > expectedAmount) {
                uint256 positiveSlippageShare = remainingAmount.sub(expectedAmount).div(2);
                remainingAmount = remainingAmount.sub(positiveSlippageShare);
                Utils.transferTokens(toToken, payable(address(feeClaimer)), positiveSlippageShare);
                feeClaimer.registerFee(feeWallet, IERC20(toToken), positiveSlippageShare);
            }
        } else {
            remainingAmount = remainingAmount.sub(fee);
        }

        if (beneficiary != address(this)) {
            Utils.transferTokens(toToken, beneficiary, remainingAmount);
        }

        return remainingAmount;
    }

    function _takeFeeForPartner(
        uint256 feePercent,
        address toToken,
        uint256 receivedAmount,
        uint256 expectedAmount,
        uint256 partnerSharePercent,
        bool positiveSlippageToUser,
        address payable partner
    ) private returns (uint256 fee) {
        uint256 partnerShare = 0;
        uint256 paraswapShare = 0;

        bool takeSlippage = feePercent <= 50 && receivedAmount > expectedAmount;

        if (feePercent > 0) {
            //Calculate total fee to be taken
            fee = (takeSlippage ? expectedAmount : receivedAmount).mul(feePercent).div(10000);
            //Calculate partner's share
            partnerShare = fee.mul(partnerSharePercent).div(10000);
            //All remaining fee is paraswap's share
            paraswapShare = fee.sub(partnerShare);
        }

        if (takeSlippage) {
            uint256 halfPositiveSlippage = receivedAmount.sub(expectedAmount).div(2);
            paraswapShare = paraswapShare.add(halfPositiveSlippage);
            fee = fee.add(halfPositiveSlippage);

            if (!positiveSlippageToUser) {
                partnerShare = partnerShare.add(halfPositiveSlippage);
                fee = fee.add(halfPositiveSlippage);
            }
        }
        Utils.transferTokens(toToken, payable(address(feeClaimer)), fee);
        if (partnerShare > 0) {
            feeClaimer.registerFee(partner, IERC20(toToken), partnerShare);
        }
        if (paraswapShare > 0) {
            feeClaimer.registerFee(feeWallet, IERC20(toToken), paraswapShare);
        }
        return (fee);
    }

    function _takeFeeForReferrer(
        uint256 feePercent,
        address toToken,
        uint256 receivedAmount,
        uint256 expectedAmount,
        address payable partner // affiliate for referrer program
    ) private returns (uint256 fee) {
        if (receivedAmount <= expectedAmount) {
            return 0;
        }

        uint256 paraswapShare = receivedAmount.sub(expectedAmount).div(2);
        uint256 partnerShare = paraswapShare.mul(feePercent).div(10000);
        fee = paraswapShare.add(partnerShare);

        Utils.transferTokens(toToken, payable(address(feeClaimer)), fee);
        feeClaimer.registerFee(partner, IERC20(toToken), partnerShare);
        feeClaimer.registerFee(feeWallet, IERC20(toToken), paraswapShare);

        return fee;
    }

    function _isTakeFeeFromSrcToken(uint256 _feePercent) internal returns (bool) {
        return (_feePercent & (1 << 15)) != 0;
    }
}
