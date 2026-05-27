// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {
    Farm,
    HarvestParams,
    WithdrawParams
} from "contracts/structs/FarmStrategyStructs.sol";
import { ZapIn } from "contracts/structs/ZapStructs.sol";
import {
    NftPosition,
    NftHarvest,
    NftWithdraw,
    NftDeposit
} from "contracts/structs/NftFarmStrategyStructs.sol";
/// @notice An ERC20 farm position to exit as part of a move
struct FarmSource {
    Farm farm;
    HarvestParams harvest;
    address[] harvestSweepTokens;
    WithdrawParams withdraw;
}

/// @notice An NFT farm position to exit as part of a move
struct NftFarmSource {
    NftPosition position;
    NftHarvest harvest;
    NftWithdraw withdraw;
}

/// @notice Deposit parameters for an ERC20 farm destination
struct FarmDeposit {
    Farm farm;
    ZapIn zap;
    bytes extraData;
}

/// @notice Parameters for moving one or more positions into an NFT farm
struct MoveToNft {
    FarmSource[] farmSources;
    NftFarmSource[] nftSources;
    address[] tokensIn; // Optional additional tokens from user
    uint256[] amountsIn;
    NftDeposit deposit;
}

/// @notice Parameters for moving one or more positions into an ERC20 farm
struct MoveToFarm {
    FarmSource[] farmSources;
    NftFarmSource[] nftSources;
    address[] tokensIn; // Optional additional tokens from user
    uint256[] amountsIn;
    FarmDeposit deposit;
}
