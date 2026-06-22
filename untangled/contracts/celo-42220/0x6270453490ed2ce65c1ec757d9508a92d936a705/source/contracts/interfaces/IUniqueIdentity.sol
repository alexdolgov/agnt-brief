pragma solidity 0.8.21;

interface IUniqueIdentity {
    function balanceOf(address usr, uint256 id) external view returns (uint256);
}
