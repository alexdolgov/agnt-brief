pragma solidity 0.8.27;

interface IWithdrawalBuffer {
    function getBufferDeficit() external view returns (uint256);

    function paused() external view returns (bool);
}
