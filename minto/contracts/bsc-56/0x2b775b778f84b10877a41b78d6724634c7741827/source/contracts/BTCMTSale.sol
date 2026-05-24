// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IBTCMTForPresale.sol";

contract BTCMTSale is Ownable {

    uint256[3] public BONUS_BREAKPOINTS = [13,26,52];
    uint256[3] public BONUS_PERCENTAGES = [1,3,4];
    IBTCMTForPresale public immutable BTCMT;
    IERC20 public immutable USDT;

    uint256 public price;
    uint256 public capToSell;
    uint256 public totalSold;

    constructor(address _BTCMT, address _USDT, uint256 _price, uint256 _capToSell) {
        BTCMT = IBTCMTForPresale(_BTCMT);
        USDT = IERC20(_USDT);
        price = _price;
        capToSell = _capToSell;
    }

    function setPrice(uint256 _price) external onlyOwner {
        price = _price;
    }

    function setCapToSell(uint256 _capToSell) external onlyOwner {
        capToSell = _capToSell;
    }

    function buy(uint256 amount, uint256 timeInWeeks) external {
        USDT.transferFrom(_msgSender(), owner(), (amount * price) / (10 ** 18));
        if (timeInWeeks > 12) {
            amount += (amount * _findClosest(timeInWeeks)) / 100;
        }
        totalSold += amount;
        require (totalSold <= capToSell, "Cannot sell above cap");
        BTCMT.mintLocked(_msgSender(), amount, timeInWeeks);
    }

    function _findClosest(uint256 number) internal view returns (uint256) {
        for (uint256 i = 3; i > 0; i--) {
            if (number >= BONUS_BREAKPOINTS[i-1]) {
                return BONUS_PERCENTAGES[i-1];
            }
        }
        return 0;
    }
}