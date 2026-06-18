// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

interface IAlienbaseReferralSystem {
    //
    function checkUserReferralStatus(
        address _user
    )
        external
        view
        returns (
            bool hasReferee,
            address referee,
            uint256 lotteryDiscount,
            uint256 refereeBonusPercent
        );

    function addBonusRefereeEth(
        address _referred,
        address _referee,
        uint256 _albAmount
    ) external payable;
}
