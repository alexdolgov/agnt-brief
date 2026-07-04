// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "./@openzeppelin/contracts/access/Ownable.sol";
import "./@openzeppelin/contracts/contracts/token/ERC1155/IERC1155.sol";
import "./IFeeV2.sol";

contract FeeV2 is IFeeV2, Ownable {
    uint256 public fee;
    uint256 public darkCouponFee;
    IERC1155 public foodcourtSupermarketToken;

    constructor(uint256 fee_, IERC1155 foodcourtSupermarketToken_, uint256 darkCouponFee_) {
        foodcourtSupermarketToken = foodcourtSupermarketToken_;
        setFee(fee_);
        setDarkCouponFee(darkCouponFee_);
    }

    function setFee(uint256 fee_) public onlyOwner {
        fee = fee_;
    }

    function setDarkCouponFee(uint256 darkCouponFee_) public onlyOwner {
        darkCouponFee = darkCouponFee_;
    }

    function calculate(address sender, uint256) public view override returns (uint256) {
        if (address(foodcourtSupermarketToken) != address(0)) {
            if (foodcourtSupermarketToken.balanceOf(sender, 0) > 0) {
                return darkCouponFee;
            }
        }
        return fee;
    }
}
