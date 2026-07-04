// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { UniswapV4Connector } from "./UniswapV4Connector.sol";
import {
    IPositionManager
} from "contracts/interfaces/external/uniswap/v4/IPositionManager.sol";
import {
    IStateView
} from "contracts/interfaces/external/uniswap/v4/IStateView.sol";
import { NftPosition } from "contracts/structs/NftFarmStrategyStructs.sol";
import {
    PoolKey
} from "contracts/interfaces/external/uniswap/v4/types/PoolKey.sol";
import {
    PoolId,
    PoolIdLibrary
} from "contracts/interfaces/external/uniswap/v4/types/PoolId.sol";

interface IBmxDailyEpochGauge {
    function claim(
        uint256 tokenId,
        address to
    ) external returns (uint256);
    function earned(
        uint256 tokenId
    ) external view returns (uint256);
}

interface IBmxIncentiveGauge {
    function claimAllForOwner(
        PoolId[] calldata pids,
        address owner
    ) external;
    function pendingRewardsByTokenId(
        uint256 tokenId,
        address rewardToken
    ) external view returns (uint256);
}

interface IBmxPositionManagerAdapter {
    function incentiveGauge() external view returns (IBmxIncentiveGauge);
    function dailyEpochGauge() external view returns (IBmxDailyEpochGauge);
}

/**
 * @title BmxConnector
 * @notice Connector for BMX (MorpheusSwap) V4 pools with reward claiming
 * @dev Extends UniswapV4Connector to add BMX-specific reward claiming from
 * DailyEpochGauge and IncentiveGauge
 */
contract BmxConnector is UniswapV4Connector {
    using PoolIdLibrary for PoolKey;
    address public immutable bmxToken;

    constructor(
        IPositionManager positionManager_,
        IStateView stateView_,
        address bmxToken_
    ) UniswapV4Connector(positionManager_, stateView_) {
        bmxToken = bmxToken_;
    }

    function depositExistingNft(
        NftPosition calldata position,
        bytes calldata extraData
    ) external override {
        IPositionManager(address(position.nft))
            .subscribe(
                position.tokenId, position.farm.stakingContract, extraData
            );
    }

    function earned(
        address, // user
        NftPosition calldata position,
        address[] memory rewardTokens
    ) external view override returns (uint256[] memory) {
        uint256[] memory rewards = new uint256[](rewardTokens.length);

        IBmxPositionManagerAdapter positionManagerAdapter =
            IBmxPositionManagerAdapter(position.farm.stakingContract);

        for (uint256 i = 0; i < rewardTokens.length; i++) {
            if (rewardTokens[i] == bmxToken) {
                rewards[i] = IBmxDailyEpochGauge(
                        positionManagerAdapter.dailyEpochGauge()
                    ).earned(position.tokenId);
            } else {
                rewards[i] = IBmxIncentiveGauge(
                        positionManagerAdapter.incentiveGauge()
                    ).pendingRewardsByTokenId(position.tokenId, rewardTokens[i]);
            }
        }

        return rewards;
    }

    function claim(
        NftPosition calldata position,
        address[] memory, // rewardTokens
        uint128,
        uint128,
        bytes calldata // extraData
    ) external override {
        IBmxPositionManagerAdapter positionManagerAdapter =
            IBmxPositionManagerAdapter(position.farm.stakingContract);
        IBmxDailyEpochGauge(positionManagerAdapter.dailyEpochGauge())
            .claim(position.tokenId, address(this));

        (PoolKey memory key,) = IPositionManager(address(position.nft))
            .getPoolAndPositionInfo(position.tokenId);
        PoolId[] memory pids = new PoolId[](1);
        pids[0] = key.toId();
        positionManagerAdapter.incentiveGauge()
            .claimAllForOwner(pids, address(this));
    }
}
