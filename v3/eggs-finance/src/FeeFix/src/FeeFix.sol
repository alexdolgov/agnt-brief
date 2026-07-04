//SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {FixOwnerEggs} from "./OwnerFix.sol";

contract FeeFix is Ownable2Step, ReentrancyGuard {
    FixOwnerEggs public eGGS =
        FixOwnerEggs(payable(0xFB8E178B8B606dA5De7417F476472c695a52695A));

    address payable public FEE_ADDRESS;

    constructor() Ownable(msg.sender) {}
    function setFeeAddress(address _address) external onlyOwner {
        FEE_ADDRESS = payable(_address);
    }
    receive() external payable nonReentrant {
        sendSonic(FEE_ADDRESS, address(this).balance);
    }
    function sendSonic(address _address, uint256 _value) internal {
        (bool success, ) = _address.call{value: _value}("");
    }
    function emergencyWithdraw() external onlyOwner {
        sendSonic(msg.sender, address(this).balance);
    }
    function setBuyFee(uint16 amount) external onlyOwner {
        eGGS.setBuyFee(amount);
    }
    function setBuyFeeLeverage(uint16 amount) external onlyOwner {
        eGGS.setBuyFeeLeverage(amount);
    }
    function setSellFee(uint16 amount) external onlyOwner {
        eGGS.setSellFee(amount);
    }
    function acceptEggOwnership() external onlyOwner {
        eGGS.acceptOwnership();
    }
}
