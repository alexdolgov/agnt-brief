pragma solidity ^0.7.0;

contract Events {
    event LogDeposit(
        address lpToken,
        uint256 amount,
        uint256 poolId,
        uint256 getId,
        uint256 setId
    );
    event LogWithdraw(
        uint256 amount,
        uint256 poolId,
        uint256 getId,
        uint256 setId
    );
}
