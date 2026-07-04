//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0;

interface IThenaVoterV3 {
    function gauges(address _pool) external view returns (address);

    function claimable(address _gauge) external view returns (uint256);

    function createGauge(address _pool, uint256 _gaugeType) external returns (address _gauge, address _internal_bribe, address _external_bribe);

    function whitelist(address[] memory _token) external;

    function distribute(address[] memory _gauges) external;

    function vote(
        uint256 tokenId,
        address[] calldata _poolVote,
        uint256[] calldata _weights
    ) external;

    function votes(uint256 _tokenId, address _pool) external view returns (uint256);
}
