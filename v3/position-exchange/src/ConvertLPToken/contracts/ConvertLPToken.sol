
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract ConvertLPToken is Ownable {
    using SafeMath for uint256;
    IERC20 oldLp = IERC20(0x885ce4C168B006A980051c104c7DCBE4452e6B8B);
    IERC20 newLp = IERC20(0x00222D964a2077301309809Ab3bf56485C126A9C);
    uint256 public convertRate = 1000;
    uint256 public base = 1000;

    function convert() public {
        uint256 oldLpBalance = oldLp.balanceOf(msg.sender);
        require(oldLpBalance > 0, "No thing to convert");
        oldLp.transferFrom(msg.sender, address(this), oldLpBalance);
        uint newLpBalance = oldLpBalance.mul(convertRate).div(base);
        newLp.transfer(msg.sender, newLpBalance);
    }

    function updateRate(uint newRate) public onlyOwner {
        convertRate = newRate;
    }

    function withdrawOut(IERC20 token, address recipient, uint256 amount) public onlyOwner {
        token.transfer(recipient, amount);
    }

}