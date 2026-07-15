// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.6.0;

import "../metarouter/MetaRouteStructs.sol";

interface IPortal {
    function synthesize(
        uint256 _stableBridgingFee,
        address _token,
        uint256 _amount,
        address _chain2address,
        address _receiveSide,
        address _oppositeBridge,
        address _revertableAddress,
        uint256 _chainID,
        bytes32 _clientID
    ) external returns (bytes32);

    function metaSynthesize(
        MetaRouteStructs.MetaSynthesizeTransaction
            memory _metaSynthesizeTransaction
    ) external returns (bytes32);

    function revertSynthesize(uint256 _stableBridgingFee, bytes32 _externalID) external;

    function unsynthesize(
        uint256 _stableBridgingFee,
        bytes32 _externalID,
        bytes32 _crossChainID,
        address _token,
        uint256 _amount,
        address _to
    ) external;

    function revertBurnRequest(
        uint256 _stableBridgingFee,
        bytes32 _internalID,
        address _receiveSide,
        address _oppositeBridge,
        uint256 _chainId,
        bytes32 _clientID
    ) external;
}
