//SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "@openzeppelin/contracts/access/Ownable2Step.sol";

import {EGGS} from "./Eggs.sol";

contract FixOwnerEggs is Ownable2Step {
    EGGS public eGGS =
        EGGS(payable(0xf26Ff70573ddc8a90Bd7865AF8d7d70B8Ff019bC));

    constructor() Ownable(msg.sender) {}
    function setFeeAddress(address _address) external onlyOwner {
        eGGS.setFeeAddress(_address);
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
