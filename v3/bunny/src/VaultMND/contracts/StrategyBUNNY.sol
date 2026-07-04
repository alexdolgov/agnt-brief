// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

/*
    _    _  ___  _   _ _   _ ____
   | \  / |/ _ \| | | | \ | |  _ \
   | |\/| | | | | | | |  \| | | | \
   | |  | | |_| | |_| | |\  | |_| /
   |_|  |_|\___/ \___/|_| \_|____/


*
* MIT License
* ===========
*
* Copyright (c) 2021 MOUND FINANCE
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*/

import "@openzeppelin/contracts/math/Math.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@pancakeswap/pancake-swap-lib/contracts/math/SafeMath.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";

import "./library/PausableUpgradeable.sol";
import "./library/WhitelistUpgradeable.sol";

import "./interfaces/IStrategy.sol";
import "./interfaces/IQore.sol";
import "./interfaces/IQToken.sol";
import "./library/SafeToken.sol";
import "./interfaces/IStrategyPayable.sol";
import "./interfaces/IBunnyPool.sol";
import "./interfaces/IPriceCalculator.sol";
import "./interfaces/IZap.sol";

contract StrategyBUNNY is IStrategy, WhitelistUpgradeable, PausableUpgradeable, ReentrancyGuardUpgradeable {
    using SafeBEP20 for IBEP20;
    using SafeMath for uint;
    using SafeToken for address;

    /* ========== CONSTANT ========== */

    IPriceCalculator public constant priceCalculator = IPriceCalculator(0xF5BF8A9249e3cc4cB684E3f23db9669323d4FB7d);
    IZap public constant zap = IZap(0xdC2bBB0D33E0e7Dea9F5b98F46EDBaC823586a0C);
    IBunnyPool public constant BUNNY_POOL = IBunnyPool(0x4fd0143a3DA1E4BA762D42fF53BE5Fab633e014D);

    address private constant BUNNY = 0xC9849E6fdB743d08fAeE3E34dd2D1bc69EA11a51;
    address private constant WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address private constant CAKE = 0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82;
    address private constant MND = 0x4c97c901B5147F8C1C7Ce3c5cF3eB83B44F244fE;

    uint private constant DUST = 1000;

    /* ========== STATE VARIABLES ========== */

    mapping(address => uint) public principals;
    uint public pendingBNB;

    /* ========== EVENT ========== */

    event Deposited(address indexed user, uint amount);
    event Withdrawn(address indexed user, uint amount);
    event ProfitPaid(address indexed user, uint amount);

    receive() external payable {
        pendingBNB = pendingBNB.add(msg.value);
    }

    /* ========== MODIFIERS ========== */

    modifier onlyMND() {
        require(msg.sender == MND, "StrategyBUNNY: caller is not the MND");
        _;
    }

    /* ========== INITIALIZER ========== */

    function initialize() external initializer {
        __PausableUpgradeable_init();
        __WhitelistUpgradeable_init();
        __ReentrancyGuard_init();

        BUNNY.safeApprove(address(BUNNY_POOL), uint(- 1));
        CAKE.safeApprove(address(zap), uint(- 1));
    }

    /* ========== VIEWS ========== */

    function balance() public view returns (uint) {
        return BUNNY_POOL.balanceOf(address(this));
    }

    function balanceOf(address account) public view override returns (uint) {
        require(account != address(0), "StrategyBUNNY: invalid account!");
        return principals[account];
    }

    function principalOf(address account) public view override returns (uint) {
        require(account != address(0), "StrategyBUNNY: invalid account!");
        return principals[account];
    }

    function earned(address account) public view override returns (uint) {
        uint[] memory profits = BUNNY_POOL.earned(address(this));
        address[] memory rewardTokens = BUNNY_POOL.rewardTokens();
        uint totalProfit;

        if (balance() == 0) return 0;

        for (uint i = 0; i < rewardTokens.length; i++) {
            (uint profitInBNB,) = priceCalculator.valueOfAsset(rewardTokens[i], profits[i]);
            totalProfit = totalProfit.add(profitInBNB);
        }
        return totalProfit.mul(principalOf(account)).div(balance());
    }

    /* ========== RESTRICTED FUNCTION ========== */

    function deposit(uint _amount) public onlyMND nonReentrant {
        uint _before = BUNNY.balanceOf(address(this));
        BUNNY.safeTransferFrom(msg.sender, address(this), _amount);
        uint amountBUNNY = BUNNY.balanceOf(address(this)).sub(_before);

        principals[msg.sender] = principals[msg.sender].add(amountBUNNY);

        BUNNY_POOL.deposit(amountBUNNY);

        emit Deposited(msg.sender, amountBUNNY);
    }

    function depositAll() public payable override onlyMND {
        uint amount = BUNNY.balanceOf(msg.sender);
        deposit(amount);
    }

    function withdraw(uint _amount) public override onlyMND nonReentrant {
        require(_amount <= principals[msg.sender], "StrategyBUNNY: Invalid input amount");

        uint _before = BUNNY.balanceOf(address(this));
        BUNNY_POOL.withdraw(_amount);
        uint amountBUNNY = BUNNY.balanceOf(address(this)).sub(_before);

        principals[msg.sender] = principals[msg.sender].sub(amountBUNNY);

        BUNNY.safeTransfer(msg.sender, amountBUNNY);

        emit Withdrawn(msg.sender, amountBUNNY);
    }

    function withdrawAll() public override onlyMND {
        uint _before = BUNNY.balanceOf(address(this));
        BUNNY_POOL.withdrawAll();
        uint amountBUNNY = BUNNY.balanceOf(address(this)).sub(_before);

        delete principals[msg.sender];

        BUNNY.safeTransfer(msg.sender, amountBUNNY);
        emit Withdrawn(msg.sender, amountBUNNY);
    }

    function getReward() public override onlyMND {
        uint _before = CAKE.balanceOf(address(this));
        BUNNY_POOL.getReward();
        uint rewardCAKE = CAKE.balanceOf(address(this)).sub(_before);

        zap.zapOut(CAKE, rewardCAKE);

        uint rewardBNB = pendingBNB;
        pendingBNB = 0;

        SafeToken.safeTransferETH(msg.sender, rewardBNB);
        emit ProfitPaid(msg.sender, rewardBNB);
    }
}
