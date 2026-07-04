// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { INftFarmConnector } from "contracts/interfaces/INftFarmConnector.sol";
import { NftPosition } from "contracts/structs/NftFarmStrategyStructs.sol";
import { IShadowNonfungiblePositionManager } from
    "contracts/interfaces/external/shadow/IShadowNonfungiblePositionManager.sol";
import { IShadowGaugeV3 } from
    "contracts/interfaces/external/shadow/IShadowGaugeV3.sol";
import { IEtherexVoter } from
    "contracts/connectors/etherex/EtherexV3Connector.sol";

interface ILineaVesting {
    function release() external;
    function releasable(
        address _beneficiary
    ) external view returns (uint256 releasableAmount);
}

struct LineaVestingExtraData {
    bool hasGauge;
    address[] rewardTokens;
}

/// @title LineaVestingConnector
/// @notice Connector for Linea's vesting contract with optional Etherex gauge
/// rewards
/// @dev Implements INftFarmConnector interface for compatibility with NFT farm
/// strategies Note: deposit and withdraw are no-ops as this is a vesting
/// contract
contract LineaVestingConnector is INftFarmConnector {
    IEtherexVoter public immutable voter;

    constructor(
        IEtherexVoter _voter
    ) {
        voter = _voter;
    }
    /// @notice Deposits are not supported for vesting contracts
    function depositExistingNft(
        NftPosition calldata,
        bytes calldata // extraData
    ) external pure override { }

    /// @notice Withdrawals are not supported for vesting contracts
    function withdrawNft(
        NftPosition calldata,
        bytes calldata // extraData
    ) external pure override { }

    /// @notice Claims vested tokens from Linea vesting and optionally Etherex
    /// gauge rewards
    /// @param position The NFT position containing the vesting contract address
    /// @param extraData Encoded LineaVestingExtraData with hasGauge flag and
    /// rewardTokens
    /// @dev Calls release() on vesting contract if user has releasable amount,
    /// and if hasGauge is true, also claims from Etherex gauge
    function claim(
        NftPosition calldata position,
        address[] memory, // rewardTokens
        uint128, // maxAmount0
        uint128, // maxAmount1
        bytes calldata extraData
    ) external override {
        // Claim LINEA from vesting if user has releasable amount
        ILineaVesting vestingContract =
            ILineaVesting(position.farm.stakingContract);
        if (vestingContract.releasable(address(this)) > 0) {
            vestingContract.release();
        }

        // Optionally claim REX from Etherex gauge
        LineaVestingExtraData memory extra =
            abi.decode(extraData, (LineaVestingExtraData));
        if (extra.hasGauge) {
            IShadowNonfungiblePositionManager(address(position.nft)).getReward(
                position.tokenId, extra.rewardTokens
            );
        }
    }

    /// @notice Returns vested LINEA tokens and optionally Etherex gauge rewards
    /// @param user The address to check vested amount for
    /// @param position The NFT position containing the vesting contract address
    /// @param rewardTokens Array of reward tokens (first is LINEA, rest are
    /// gauge rewards)
    /// @return amounts Array of claimable amounts (LINEA + gauge rewards)
    function earned(
        address user,
        NftPosition calldata position,
        address[] memory rewardTokens
    ) external view override returns (uint256[] memory amounts) {
        amounts = new uint256[](rewardTokens.length);

        if (rewardTokens.length == 0) {
            return amounts;
        }

        // First reward token is always LINEA from vesting
        amounts[0] =
            ILineaVesting(position.farm.stakingContract).releasable(user);

        // Remaining reward tokens are from Etherex gauge (if any)
        if (rewardTokens.length > 1) {
            IShadowNonfungiblePositionManager nft =
                IShadowNonfungiblePositionManager(address(position.nft));
            (address token0, address token1, int24 tickSpacing,,,,,,,) =
                nft.positions(position.tokenId);
            address gauge = voter.gaugeForClPool(token0, token1, tickSpacing);

            if (gauge != address(0)) {
                for (uint256 i = 1; i < rewardTokens.length; i++) {
                    amounts[i] = IShadowGaugeV3(gauge).earned(
                        rewardTokens[i], position.tokenId
                    );
                }
            }
        }
    }

    /// @notice Always returns false as vesting positions are not "staked"
    /// @return false
    function isStaked(
        address, // user
        NftPosition calldata
    ) external pure override returns (bool) {
        return false;
    }
}
