// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Claim} from "./Claim.sol";

error UnsupportedOption();
error UnsupportedStake();

contract ClaimNoVestFull is Claim {
    constructor(
        address _owner,
        address _token,
        address _stakedToken,
        bytes32 _merkleRoot,
        uint256 _startTime,
        uint256 _endTime
    ) Claim(_owner, _token, _stakedToken, _merkleRoot, _startTime, _endTime, 0, 100) {}

    function claim(uint256 index, address account, uint256 amount, bytes32[] calldata merkleProof) external {
        super.claim(index, account, amount, merkleProof, Option.NoVest, 0);
    }

    function claim(
        uint256 index,
        address account,
        uint256 amount,
        bytes32[] calldata merkleProof,
        Option option,
        uint256 stakeAmount
    ) public override {
        if (option != Option.NoVest) revert UnsupportedOption();
        if (stakeAmount != 0) revert UnsupportedStake();
        super.claim(index, account, amount, merkleProof, Option.NoVest, 0);
    }
}
