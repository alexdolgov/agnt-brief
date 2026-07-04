// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { ConnectorRegistry } from "contracts/ConnectorRegistry.sol";
import { INftFarmConnector } from "contracts/interfaces/INftFarmConnector.sol";
import { NftPosition } from "contracts/structs/NftFarmStrategyStructs.sol";
import { DelegateModule } from "contracts/modules/DelegateModule.sol";

interface IDistribution {
    function claim(
        address[] calldata users,
        address[] calldata tokens,
        uint256[] calldata amounts,
        bytes32[][] calldata proofs
    ) external;
}

struct MerklClaimExtraData {
    address[] claimTokens;
    uint256[] amounts;
    bytes32[][] proofs;
    bytes feeClaimExtraData;
}

contract MerklConnector is INftFarmConnector, DelegateModule {
    ConnectorRegistry public immutable connectorRegistry;

    constructor(
        ConnectorRegistry _connectorRegistry
    ) {
        connectorRegistry = _connectorRegistry;
    }

    function claim(
        NftPosition calldata position,
        address[] memory rewardTokens,
        uint128 maxAmount0,
        uint128 maxAmount1,
        bytes calldata extraData
    ) external payable override {
        MerklClaimExtraData memory claimExtraData =
            abi.decode(extraData, (MerklClaimExtraData));

        address[] memory users =
            new address[](claimExtraData.claimTokens.length);
        for (uint256 i; i < claimExtraData.claimTokens.length;) {
            users[i] = address(this);
            unchecked {
                i++;
            }
        }

        IDistribution(position.farm.stakingContract).claim(
            users,
            claimExtraData.claimTokens,
            claimExtraData.amounts,
            claimExtraData.proofs
        );

        INftFarmConnector connector = INftFarmConnector(
            connectorRegistry.connectorOf(address(position.nft))
        );
        _delegateTo(
            address(connector),
            abi.encodeCall(
                INftFarmConnector.claim,
                (
                    position,
                    rewardTokens,
                    maxAmount0,
                    maxAmount1,
                    claimExtraData.feeClaimExtraData
                )
            )
        );
    }

    function depositExistingNft(
        NftPosition calldata position,
        bytes calldata extraData
    ) external payable override { }

    function withdrawNft(
        NftPosition calldata position,
        bytes calldata extraData
    ) external payable override { }

    function earned(
        address, // user
        NftPosition calldata,
        address[] memory rewardTokens
    ) external pure override returns (uint256[] memory) {
        return new uint256[](rewardTokens.length);
    }

    function isStaked(
        address, // user
        NftPosition calldata
    ) external pure override returns (bool) {
        // Merkl V3 - V4 NFTs are not staked
        return false;
    }
}
