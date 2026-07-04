pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/*
 * A contract that locks all rewards of the Position Exchange's team until Sept 2023.
 * Please note Position Exchange team will receive 10% in every POSI is minted until it reaches 100M total supply.
 * and all of that will transfer directly and locked this contract.
*/

contract POSITeamRewardsLockingContract is Ownable {
    IERC20 posi = IERC20(0x5CA42204cDaa70d5c773946e69dE942b85CA6706);
    // next withdraw time in epoch seconds
    uint256 public nextWithdrawTime;
    constructor() {
        nextWithdrawTime = block.timestamp + 730 days; // 2 years locked
    }

    // withdraw the locked token
    // only owner can call
    function withdraw(address recipient, uint256 amount) public onlyOwner {
        require(block.timestamp >= nextWithdrawTime, "not unlockable");
        posi.transfer(recipient, amount);
    }

    // withdraw any other token
    // only owner can call
    function withdraw(IERC20 token, address recipient, uint256 amount) public onlyOwner {
        require(block.timestamp >= nextWithdrawTime, "not unlockable");
        token.transfer(recipient, amount);
    }
}


