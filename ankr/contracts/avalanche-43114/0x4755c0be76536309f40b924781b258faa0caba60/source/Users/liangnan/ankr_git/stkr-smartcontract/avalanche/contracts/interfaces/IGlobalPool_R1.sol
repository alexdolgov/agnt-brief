// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.7.6;

interface IGlobalPool_R1 {

    event StakePending(address indexed staker, uint256 amount);

    event StakePendingV2(address indexed staker, uint256 amount, bool indexed isRebasing);

    event AvaxClaimPending(address indexed claimer, uint256 amount);

    event AvaxClaimPendingV2(address indexed claimer, uint256 amount, bool indexed isRebasing);

    function stake() external payable;

    function stakeAndClaimBonds() external payable;

    function stakeAndClaimCerts() external payable;

    function claim(uint256 amount) external;

    function claimBonds(uint256 amount) external;

    function claimCerts(uint256 amount) external;

    function pendingAvaxClaimsOf(address claimer) external view returns (uint256) ;
}
