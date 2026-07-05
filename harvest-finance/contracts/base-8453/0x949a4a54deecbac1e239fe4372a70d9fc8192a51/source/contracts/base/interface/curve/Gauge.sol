// SPDX-License-Identifier: Unlicense
pragma solidity 0.6.12;

interface Gauge {
    function deposit(uint) external;
    function balanceOf(address) external view returns (uint);
    function withdraw(uint) external;
    function user_checkpoint(address) external;
    function lp_token() external view returns (address);
    function claim_rewards() external;
    function claim_rewards(address) external;
    function factory() external view returns (address);
    function claimable_reward(address _user, address _reward_token) external view returns (uint256);
}

interface IClaimWrapper {
    function required_approval(address gauge, address user) external view returns(uint256);
    function claim_rewards(address gauge) external;
}

interface VotingEscrow {
    function create_lock(uint256 v, uint256 time) external;
    function increase_amount(uint256 _value) external;
    function increase_unlock_time(uint256 _unlock_time) external;
    function withdraw() external;
}

interface Mintr {
    function mint(address) external;
}
