// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

interface IVoterProxyAssets {
    function initializeProxyStorage(
        address _veAddress,
        address _veDistAddress,
        address _voterProxyAddress,
        address _rewardsDistributorAddress
    ) external;

    function depositInGauge(address dystPoolAddress, address gaugeAddress)
        external;

    function withdrawFromGauge(
        address dystPoolAddress,
        address gaugeAddress,
        uint256 amount
    ) external;

    function veAddress() external returns (address);

    function primaryTokenId() external view returns (uint256);

    function vote(address[] memory, int256[] memory) external;

    function getRewardFromBribe(
        address _stakingAddress,
        address _bribeAddress,
        address[] memory claimableAddresses
    ) external;

    function claimDyst(address gaugeAddress)
        external
        returns (uint256 amountClaimed);

    function getRewardFromGauge(
        address stakingAddress,
        address gaugeAddress,
        address[] memory tokensAddresses
    ) external;

    function whitelist(address tokenAddress, uint256 tokenId) external;

    function claim() external returns (uint256 inflationAmount);

    function setPrimaryTokenId() external;

    function depositNft(uint256 tokenId) external;

    function lockDyst(uint256 amount) external;

    function approveDystToVoterProxy() external;

    function reset() external;
}
