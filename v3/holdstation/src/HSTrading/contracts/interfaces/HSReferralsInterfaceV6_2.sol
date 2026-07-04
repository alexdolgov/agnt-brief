// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface HSReferralsInterfaceV6_2 {
    struct ReferrerDetails {
        address ally;
        uint256 volumeReferredUsdc; // 1e18
        uint256 pendingRewardsToken; // 1e18
        uint256 totalRewardsToken; // 1e18
        uint256 totalRewardsValueUsdc; // 1e18
        bool active;
    }

    function registerPotentialReferrer(address trader, address referral) external;

    function distributePotentialReward(
        address trader,
        uint256 volumeUsdc,
        uint256 pairOpenFeeP,
        uint256 tokenPriceUsdc
    ) external returns (uint256);

    function getPercentOfOpenFeeP(address trader) external view returns (uint256);

    function getTraderReferrer(address trader) external view returns (address referrer);

    function checkReferrerActive(address) external view returns (bool);

    function registerAgencyReferrer(address trader, address referrer) external;

    function referrerDetails(address) external view returns (ReferrerDetails memory);

    function claimAgencyRewards(address) external;
}
