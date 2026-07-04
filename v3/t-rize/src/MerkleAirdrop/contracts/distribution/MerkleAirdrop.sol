// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {AccessRestricted} from "../configuration/AccessRestricted.sol";
import {MerkleDistributor} from "./MerkleDistributor.sol";
import {VestingERC20} from "./VestingERC20.sol";

/**
 * @title MerkleAirdrop
 * @author Michael Duchesne (michael.duchesne@t-rize.io)
 * @notice
 *
 * The contract allows the MS Committee to upload a merkle tree root.
 *
 * Users can claim their allocations as vested bonds.
 *
 * The MS Committee can withdraw unclaimed tokens at the end of the vesting period.
 *
 */
contract MerkleAirdrop is MerkleDistributor, AccessRestricted, VestingERC20 {
    using SafeERC20 for IERC20;

    address private _token;
    uint16 private _poolId;

    event Claimed(uint256 index, address account, uint256 amount);
    event RootSet(bytes32 root);
    event Withdrawn();

    error CannotRedeclareRoot();
    error TooSoon();

    error AlreadyClaimed();

    constructor(
        address token,
        address accessList,
        uint16 poolId
    ) AccessRestricted(accessList) VestingERC20(token, accessList) {
        _token = token;
        _poolId = poolId;
    }

    /**
     * Configure the vesting parameters.
     * @param amount amount of tokens to transfer to the contract. Can be sent later or before.
     * @param scheduleStart timestamp (in seconds) the schedule start. Allows to transfer past schedule.
     * @param vestingStart Start of linear vesting, timestamp in seconds
     * @param length length in seconds of the vesting
     */
    function lock(
        uint256 amount,
        uint64 scheduleStart,
        uint64 vestingStart,
        uint64 length
    ) external onlyCommittee {
        _lock(amount, scheduleStart, vestingStart, length);
    }

    /**
     * @dev Claims a bond with allocation vesting terms
     * @param account The account that is claiming tokens
     * @param amount The amount of tokens to claim
     * @param merkleProof The merkle proofs
     */
    function claim(
        uint256 index,
        address account,
        uint256 amount,
        bytes32[] calldata merkleProof
    ) external {
        if (isClaimed(index)) {
            revert AlreadyClaimed();
        }

        // Verify the merkle proof.
        bytes32 node = keccak256(
            bytes.concat(keccak256(abi.encode(index, account, amount)))
        );
        _verifyClaim(merkleProof, node);

        // Mark it claimed
        _setClaimed(index);

        uint64 start = getScheduleStart();
        uint64 cliff = getCliffLength();
        uint64 vesting = getVestingLength();
        _transferLocked(_poolId, amount, account, start, cliff, vesting);

        emit Claimed(index, account, amount);
    }

    /**
     * only callable from the MS Committee wallet.
     * @param root the root for the merkle tree
     */
    function setRoot(bytes32 root) external onlyCommittee {
        if (getRoot() != bytes32(0)) {
            revert CannotRedeclareRoot();
        }
        _setRoot(root);
        emit RootSet(root);
    }

    /**
     * Returns finds to the MS Committe.
     * Only callable past the vesting terms.
     */
    function withdraw() external onlyCommittee {
        if (!isScheduleStarted() || getVestingLeft() != 0) {
            revert TooSoon();
        }
        getToken().safeTransfer(
            msg.sender,
            getToken().balanceOf(address(this))
        );
        emit Withdrawn();
    }

    function getPoolId() external view returns (uint16) {
        return _poolId;
    }
}
