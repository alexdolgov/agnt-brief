// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {SafeMath} from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {ERC20, ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract ARTHRedeemer is Ownable, ReentrancyGuard {
    using SafeMath for uint256;

    string public constant NAME = "ARTH Redeemer";

    uint256 public immutable ARTH_PRECISION;
    uint256 public immutable USDC_PRECISION;
    uint256 public constant ARTH_PRICE_PRECISION = 10 ** 18;

    uint256 public arthPrice = 2 * ARTH_PRICE_PRECISION;

    ERC20 public immutable usdc;
    ERC20Burnable public immutable arth;

    event ArthPriceChanged(uint256 oldPrice, uint256 newPrice);
    event Refunded(address indexed token, uint256 amount);
    event Redeemed(address indexed user, uint256 arthIn, uint256 usdcOut);

    constructor(ERC20Burnable arth_, ERC20 usdc_, uint256 arthPrice_) {
        arth = arth_;
        usdc = usdc_;
        arthPrice = arthPrice_;
        ARTH_PRECISION = 10 ** arth_.decimals();
        USDC_PRECISION = 10 ** usdc_.decimals();
    }

    function redeemARTH(uint256 arthIn) external nonReentrant {
        uint256 usdcOut = getUSDCOut(arthIn);
        emit Redeemed(msg.sender, arthIn, usdcOut);
        arth.burnFrom(msg.sender, arthIn);
        usdc.transfer(msg.sender, usdcOut);
    }

    function refundToken(address token, uint256 amount) external nonReentrant onlyOwner {
        ERC20 _token = ERC20(token);
        emit Refunded(token, amount);
        _token.transfer(owner(), amount);
    }

    function setArthPrice(uint256 price) external nonReentrant onlyOwner {
        emit ArthPriceChanged(arthPrice, price);
        arthPrice = price;
    }

    function getUSDCOut(uint256 arthIn) public view returns (uint256) {
        return (
            arthIn
                .mul(arthPrice)
                .mul(USDC_PRECISION)
                .div(ARTH_PRICE_PRECISION)
                .div(ARTH_PRECISION)
        );
    }
}
