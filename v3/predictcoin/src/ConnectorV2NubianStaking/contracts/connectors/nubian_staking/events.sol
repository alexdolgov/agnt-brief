pragma solidity ^0.7.0;

contract Events {
    //supply an asset
    event LogDeposit(
        uint256 recordId,
        uint256 amt,
        uint256 getId,
        uint256 setId
    );

    //redeem deposits
    event LogWithdraw(
        address indexed user,
        uint256 recordId,
        uint256 amt,
        uint256 reward,
        uint256 getId,
        uint256 setId
    );

    //borrow an asset
    event LogBorrow(uint256 recordId, uint256 getId, uint256 setId);
}
