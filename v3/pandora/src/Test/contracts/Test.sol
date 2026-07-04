//SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.17;
import "@openzeppelin/contracts/access/Ownable.sol";

contract Test is Ownable {
    uint256 public a;
    function set(uint256 _v) external onlyOwner{
        a = _v;
    }
}