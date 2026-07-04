// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface IBottoGovernance {
    error BG_ZERO_AMOUNT();
    error BG_ADDRESS_ZERO();

    event Staked(address indexed staker, uint256 amount);
    event Unstaked(address indexed staker, uint256 amount);
    event RecoveryTransfer(address token, uint256 amount, address recipient);

    function botto() external view returns (address);

    function totalStaked() external view returns (uint256);

    function userStakes(address) external view returns (uint256);

    function initialize(address botto_) external;

    function stake(uint256 amount_) external;

    function unstake() external;

    function recover(address token_, address recipient_) external;
}
