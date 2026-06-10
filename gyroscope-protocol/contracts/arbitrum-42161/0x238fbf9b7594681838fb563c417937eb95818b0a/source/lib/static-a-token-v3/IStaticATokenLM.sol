
// Reduced copy of the interface with just the things we need.
// For the full interface see: https://github.com/bgd-labs/static-a-token-v3

interface IStaticATokenLM {
    function rewardTokens() external view returns (address[] memory);
    function claimRewardsOnBehalf(
        address onBehalfOf,
        address receiver,
        address[] memory rewards
    ) external;
}

