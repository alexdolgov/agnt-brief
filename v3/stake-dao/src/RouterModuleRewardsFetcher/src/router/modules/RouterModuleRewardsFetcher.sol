// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {RouterModuleBase} from "src/router/modules/RouterModuleBase.sol";

/// @title RouterModuleRewardsFetcher
/// @notice Single entrypoint to claim rewards from supported reward distributors.
/// @dev This module unifies reward claims across two on-chain conventions:
///      - UniversalRewardsDistributor (URD): Morpho-like merkle distributor with per-account cumulative amounts.
///      - MultiMerkleStash (MMS): per-token merkle distributor with index-based claims.
/// @dev Functions are restricted by `onlyDelegateCall`. They are meant to be invoked
///      via the Router using delegatecall so that transfers and state changes happen
///      in the Router context, enabling composition with other modules in the same transaction.
contract RouterModuleRewardsFetcher is RouterModuleBase {
    string public constant name = type(RouterModuleRewardsFetcher).name;
    string public constant version = "1.0.0";

    /// @notice Thrown when `distributors` and payload arrays length mismatch
    error InvalidParamsLength();
    /// @notice Thrown when a provided distributor type is not supported
    error InvalidDistributorType();

    ///////////////////////////////////////////////////////////////
    // IUniversalRewardsDistributor
    ///////////////////////////////////////////////////////////////

    /// @notice Batched claim payload for a UniversalRewardsDistributor.
    /// @dev Mirrors the URD `claim` function parameters per item.
    struct UniversalRewardsDistributorClaimData {
        /// @notice Address to claim rewards for.
        address account;
        /// @notice Reward token address.
        address reward;
        /// @notice Overall cumulative claimable amount encoded in the merkle tree.
        uint256 claimable;
        /// @notice Merkle proof proving the (account, reward, claimable) leaf.
        bytes32[] proof;
    }

    /// @notice Claim rewards from a UniversalRewardsDistributor.
    /// @param distributor Address of the URD distributor.
    /// @param account Address to claim rewards for.
    /// @param reward Reward token address.
    /// @param claimable Overall cumulative claimable amount proved by the merkle tree.
    /// @param proof Merkle proof for (account, reward, claimable).
    /// @return amount Newly claimed amount (delta since last claim) returned by the URD.
    /// @dev Anyone can claim on behalf of `account`. Reverts bubble from the distributor
    ///      (e.g., invalid proof, root not set, or claimable too low). Tokens are transferred
    ///      by the distributor to its configured recipient logic (may be `account` or another recipient).
    function claim(address distributor, address account, address reward, uint256 claimable, bytes32[] calldata proof)
        external
        onlyDelegateCall
        returns (uint256 amount)
    {
        return IUniversalRewardsDistributor(distributor).claim(account, reward, claimable, proof);
    }

    /// @notice Batch claim rewards across multiple UniversalRewardsDistributor contracts.
    /// @param distributors Array of URD distributor addresses.
    /// @param claimData Array of per-URD claim parameters matching `distributors` order.
    /// @return amounts Array of newly claimed amounts per distributor.
    /// @dev Reverts with `InvalidParamsLength` if array lengths mismatch. Each claim is executed
    ///      independently in a loop; any revert from a distributor will revert the whole call.
    function claims(address[] calldata distributors, UniversalRewardsDistributorClaimData[] calldata claimData)
        external
        onlyDelegateCall
        returns (uint256[] memory amounts)
    {
        if (distributors.length != claimData.length) revert InvalidParamsLength();
        amounts = new uint256[](distributors.length);

        for (uint256 i; i < distributors.length; i++) {
            amounts[i] = IUniversalRewardsDistributor(distributors[i])
                .claim(claimData[i].account, claimData[i].reward, claimData[i].claimable, claimData[i].proof);
        }
    }

    ///////////////////////////////////////////////////////////////
    // IMultiMerkleStash
    ///////////////////////////////////////////////////////////////

    /// @notice Per-claim parameters for a MultiMerkleStash distributor.
    /// @dev Mirrors the MMS `claim` function signature per token.
    struct MultiMerkleStashClaimParams {
        /// @notice Reward token address.
        address token;
        /// @notice Leaf index used by the MMS bitmap for idempotency.
        uint256 index;
        /// @notice Amount to claim for this leaf.
        uint256 amount;
        /// @notice Merkle proof proving (index, account, amount) for `token`.
        bytes32[] merkleProof;
    }

    /// @notice Batched claim payload for a MultiMerkleStash distributor.
    struct MultiMerkleStashClaimData {
        /// @notice Address to claim rewards for.
        address account;
        /// @notice List of per-token claim parameters.
        MultiMerkleStashClaimParams[] claimParams;
    }

    /// @notice Claim rewards from a MultiMerkleStash distributor for a single token leaf.
    /// @param distributor Address of the MultiMerkleStash distributor.
    /// @param token Reward token address.
    /// @param index Leaf index used by the MMS claimed bitmap.
    /// @param account Address to claim rewards for.
    /// @param amount Amount to claim for the leaf.
    /// @param merkleProof Merkle proof proving (index, account, amount) in the token tree.
    /// @dev Reverts bubble from the distributor (e.g., already claimed or invalid proof). Tokens
    ///      are transferred by the distributor to `account`.
    function claim(
        address distributor,
        address token,
        uint256 index,
        address account,
        uint256 amount,
        bytes32[] calldata merkleProof
    ) external onlyDelegateCall {
        return IMultiMerkleStash(distributor).claim(token, index, account, amount, merkleProof);
    }

    /// @notice Batch claim rewards across multiple MultiMerkleStash distributors.
    /// @param distributors Array of MMS distributor addresses.
    /// @param claimData Array of per-distributor batched claim payloads matching `distributors` order.
    /// @dev Reverts with `InvalidParamsLength` if array lengths mismatch. Each distributor call
    ///      uses `claimMulti` and may revert independently; any revert bubbles and reverts the whole call.
    function claims(address[] calldata distributors, MultiMerkleStashClaimData[] calldata claimData)
        external
        onlyDelegateCall
    {
        if (distributors.length != claimData.length) revert InvalidParamsLength();

        for (uint256 i; i < distributors.length; i++) {
            IMultiMerkleStash(distributors[i]).claimMulti(claimData[i].account, claimData[i].claimParams);
        }
    }

    ///////////////////////////////////////////////////////////////
    // BOTH IUniversalRewardsDistributor AND IMultiMerkleStash
    ///////////////////////////////////////////////////////////////

    /// @notice Supported reward distributor types for batched claims.
    /// @dev Extend this enum when adding new distributor conventions.
    enum DistributorType {
        /// @notice Morpho-like UniversalRewardsDistributor.
        UniversalRewardsDistributor,
        /// @notice MultiMerkleStash with per-token merkle trees and index-based claims.
        MultiMerkleStash
    }

    /// @notice Batch claim rewards from distributors with per-item interface types.
    /// @param distributors Array of distributor addresses.
    /// @param distributorTypes Array of distributor types, one for each distributor in `distributors`.
    /// @param claimData ABI-encoded per-item claim parameters, matching `distributors` order.
    ///        - If `distributorTypes[i] == DistributorType.UniversalRewardsDistributor`, each item must be
    ///          abi.encode(account, reward, claimable, proof) where:
    ///             account: address
    ///             reward: address
    ///             claimable: uint256
    ///             proof: bytes32[]
    ///        - If `distributorTypes[i] == DistributorType.MultiMerkleStash`, each item must be
    ///          abi.encode(token, index, account, amount, merkleProof) where:
    ///             token: address
    ///             index: uint256
    ///             account: address
    ///             amount: uint256
    ///             merkleProof: bytes32[]
    /// @dev Use this function to claim rewards from multiple distributors with
    ///      different implementations. Reverts with `InvalidParamsLength` if array lengths mismatch
    ///      and `InvalidDistributorType` if the type is not supported. Any revert from a target distributor
    ///      bubbles up and reverts the entire call.
    ///      The contracts IMultiMerkleStash are called using the `claim` function not the `claimMulti` function.
    function claims(
        address[] calldata distributors,
        DistributorType[] calldata distributorTypes,
        bytes[] calldata claimData
    ) external onlyDelegateCall {
        if (distributors.length != distributorTypes.length) {
            revert InvalidParamsLength();
        }
        if (distributors.length != claimData.length) revert InvalidParamsLength();

        for (uint256 i; i < distributors.length; i++) {
            if (distributorTypes[i] == DistributorType.UniversalRewardsDistributor) {
                (address account, address reward, uint256 claimable, bytes32[] memory proof) =
                    abi.decode(claimData[i], (address, address, uint256, bytes32[]));
                IUniversalRewardsDistributor(distributors[i]).claim(account, reward, claimable, proof);
            } else if (distributorTypes[i] == DistributorType.MultiMerkleStash) {
                (address token, uint256 index, address account, uint256 amount, bytes32[] memory merkleProof) =
                    abi.decode(claimData[i], (address, uint256, address, uint256, bytes32[]));
                IMultiMerkleStash(distributors[i]).claim(token, index, account, amount, merkleProof);
            } else {
                revert InvalidDistributorType();
            }
        }
    }
}

interface IUniversalRewardsDistributor {
    function claim(address account, address reward, uint256 claimable, bytes32[] memory proof)
        external
        returns (uint256 amount);
}

interface IMultiMerkleStash {
    function claim(address token, uint256 index, address account, uint256 amount, bytes32[] calldata merkleProof)
        external;

    function claimMulti(address account, RouterModuleRewardsFetcher.MultiMerkleStashClaimParams[] calldata claims)
        external;
}
