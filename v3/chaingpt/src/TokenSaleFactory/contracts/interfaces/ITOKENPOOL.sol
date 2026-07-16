// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;

interface ITokenPool {
    /**
     * @dev Struct to store refund time window
     * @param openTime Timestamp when refund period starts
     * @param closeTime Timestamp when refund period ends
     */
    struct RefundTime {
        uint256 openTime;
        uint256 closeTime;
    }

    /**
     * @dev Struct to store excess refund time window
     * @param openTime Timestamp when excess refund period starts
     * @param closeTime Timestamp when excess refund period ends
     */
    struct ExcessRefundTime {
        uint256 openTime;
        uint256 closeTime;
    }
   
    //change request: "Excess Refund" = We need to have in the smart-contract a date & time which only after that date and time users can claim the "Excess Refund". If they try to claim before should give them an error. 
    function initialize(
        address _token,
        uint256 _duration,
        uint256 _openTime,
        address _offeredCurrency,
        uint256 _offeredCurrencyDecimals,
        RefundTime memory _refundTime,
        ExcessRefundTime memory _excessRefundTime,
        address _ownerWallet,
        address _signer,
        address _companyTreasuryAddress,
        uint256 _totalTokensForDistribution,
        uint256 _multiplierSalt,
        uint256 _offeredCurrencyRate
    ) external;
}