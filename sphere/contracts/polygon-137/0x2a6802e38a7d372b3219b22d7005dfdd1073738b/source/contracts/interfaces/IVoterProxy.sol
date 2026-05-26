// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

interface IVoterProxy {
    function depositInGauge(address, uint256) external;

    function withdrawFromGauge(address, uint256) external;

    function getRewardFromGauge(address _penPool, address[] memory _tokens)
        external;

    function depositNft(uint256) external;

    function veAddress() external returns (address);

    function veDistAddress() external returns (address);

    function lockDyst(uint256 amount) external;

    function primaryTokenId() external view returns (uint256);

    function vote(address[] memory, int256[] memory) external;

    function votingSnapshotAddress() external view returns (address);

    function dystInflationSinceInception() external view returns (uint256);

    function getRewardFromBribe(
        address penPoolAddress,
        address[] memory _tokensAddresses
    ) external returns (bool allClaimed, bool[] memory claimed);

    function getFeeTokensFromBribe(address penPoolAddress)
        external
        returns (bool allClaimed);

    function claimDyst(address penPoolAddress)
        external
        returns (bool _claimDyst);

    function setVoterProxyAssetsAddress(address _voterProxyAssetsAddress)
        external;

    function detachNFT(uint256 startingIndex, uint256 range) external;

    function claim() external;

    function whitelist(address tokenAddress) external;

    function whitelistingFee() external view returns (uint256);

    function reset() external;
}
