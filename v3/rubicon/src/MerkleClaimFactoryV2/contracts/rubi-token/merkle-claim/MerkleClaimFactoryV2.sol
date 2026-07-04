// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.20;

import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {MerkleClaim} from "./MerkleClaim.sol";

error InvalidAllowance();
error InvalidRoot();
error ZeroRewards();

struct MerkleData {
    address merkleClaim;
    bytes32 merkleRoot;
    string ipfsData; /// @dev Pinata CID or IPFS hash can be used here.
}

contract MerkleClaimFactoryV2 is Ownable {
    using SafeERC20 for IERC20;

    /// @dev Stores all created `MerkleClaim` contract with their data.
    MerkleData[] private merkleData;

    constructor() Ownable(msg.sender) {}

    event Spawned(
        address indexed merkleClaim,
        string ipfsData, /// @dev Pinata CID or IPFS hash can be used here.
        bytes32 merkleRoot,
        uint256 rewardsAmount
    );

    function getMerkleData() external view returns (MerkleData[] memory) {
        return merkleData;
    }

    /// @param rewardsOwner - address that has rewards on its balance and
    ///        maintains proper allowance to this contract.
    function spawn(
        bytes32 root,
        uint256 rewardsAmount,
        address rewardsToken,
        address rewardsOwner,
        string calldata ipfsData
    ) external onlyOwner {
        IERC20(rewardsToken).transferFrom(
            rewardsOwner,
            address(this),
            rewardsAmount
        );

        if (root == bytes32(0)) revert InvalidRoot();
        if (rewardsAmount == 0) revert ZeroRewards();

        address merkleClaim = address(
            new MerkleClaim(root, rewardsToken, owner())
        );
        IERC20(rewardsToken).safeTransfer(merkleClaim, rewardsAmount);
        merkleData.push(
            MerkleData({
                merkleClaim: merkleClaim,
                merkleRoot: root,
                ipfsData: ipfsData
            })
        );

        emit Spawned(merkleClaim, ipfsData, root, rewardsAmount);
    }
}
