// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IGearToken} from "../interfaces/IGearToken.sol";

contract GearVotingWrapper {
    /// @notice The GEAR token contract
    IGearToken public immutable gearToken;

    /// @notice The token distributor contract
    address public immutable tokenDistributor;

    /// @notice The GEAR staking contract
    address public gearStaking;

    /// @notice Time window for token distributor / GEAR staking votes liveness
    uint256 public constant SECONDARY_VOTES_LIVENESS_PERIOD = 3 days;

    constructor(address _gearToken, address _tokenDistributor, address _gearStaking) {
        gearToken = IGearToken(_gearToken);
        tokenDistributor = _tokenDistributor;
        gearStaking = _gearStaking;
    }

    function getCurrentVotes(address account) external view returns (uint256 votes) {
        votes = gearToken.getCurrentVotes(account);

        if (tokenDistributor != address(0)) {
            votes += IERC20(tokenDistributor).balanceOf(account);
        }

        if (gearStaking != address(0)) {
            votes += IERC20(gearStaking).balanceOf(account);
        }
    }

    function getPriorVotes(address account, uint256 blockNumber) external view returns (uint256 votes) {
        votes = gearToken.getCurrentVotes(account);

        if (blockNumber + SECONDARY_VOTES_LIVENESS_PERIOD < block.number) {
            return votes;
        }

        if (tokenDistributor != address(0)) {
            votes += IERC20(tokenDistributor).balanceOf(account);
        }

        if (gearStaking != address(0)) {
            votes += IERC20(gearStaking).balanceOf(account);
        }
    }

    function delegateBySig(address delegatee, uint256 nonce, uint256 expiry, uint8 v, bytes32 r, bytes32 s) external {
        gearToken.delegateBySig(delegatee, nonce, expiry, v, r, s);
    }
}
