// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

/*
  ___                      _   _
 | _ )_  _ _ _  _ _ _  _  | | | |
 | _ \ || | ' \| ' \ || | |_| |_|
 |___/\_,_|_||_|_||_\_, | (_) (_)
                    |__/

*
* MIT License
* ===========
*
* Copyright (c) 2020 BunnyFinance
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
import "@pancakeswap/pancake-swap-lib/contracts/math/SafeMath.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import "../library/SafeToken.sol";

import "../interfaces/IMasterChef.sol";


contract VaultBunnyBNBTreasury is OwnableUpgradeable {
    using SafeBEP20 for IBEP20;
    using SafeMath for uint;
    using SafeToken for address;

    /* ========== CONSTANT VARIABLES ========== */

    IMasterChef private constant CAKE_MASTER_CHEF = IMasterChef(0x73feaa1eE314F8c655E354234017bE2193C9E24E);
    IBEP20 public constant BUNNY_BNB = IBEP20(0x5aFEf8567414F29f0f927A0F2787b188624c10E2);

    address private constant CAKE = 0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82;
    address private constant FEE_BOX = 0x3749f69B2D99E5586D95d95B6F9B5252C71894bb;
    uint private constant pid = 323;

    /* ========== MODIFIERS ========== */

    modifier onlyFeeBox {
        require(msg.sender == FEE_BOX, "VaultBunnyBNBTreasury: only FeeBox");
        _;
    }

    /* ========== EVENTS ========== */

    event Deposited(address to, uint amount);
    event RewardAdded(uint reward);


    /* ========== INITIALIZER ========== */

    function initialize() external initializer {
        __Ownable_init();

        BUNNY_BNB.safeApprove(address(CAKE_MASTER_CHEF), uint(- 1));
    }

    function balance() public view returns (uint amount) {
        (amount,) = CAKE_MASTER_CHEF.userInfo(pid, address(this));
    }

    function earned() public view returns (uint reward) {
        (, reward) = CAKE_MASTER_CHEF.userInfo(pid, address(this));
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function deposit(uint amount) external onlyFeeBox {
        require(amount > 0, "VaultBunnyBNBTreasury: amount must be greater than zero.");

        BUNNY_BNB.safeTransferFrom(msg.sender, address(this), amount);

        uint cakeHarvested = _depositStakingToken(amount);
        _harvest(cakeHarvested);

        emit Deposited(address(this), amount);
    }

    function withdrawAll() external onlyOwner {
        CAKE_MASTER_CHEF.emergencyWithdraw(pid);
        BUNNY_BNB.safeTransfer(owner(), BUNNY_BNB.balanceOf(address(this)));
        _harvest(IBEP20(CAKE).balanceOf(address(this)));
    }

    function harvest() public {
        uint cakeHarvested = _withdrawStakingToken(0);
        _harvest(cakeHarvested);
    }

    /* ========== PRIVATE FUNCTIONS ========== */

    function _depositStakingToken(uint amount) private returns (uint cakeHarvested) {
        uint before = IBEP20(CAKE).balanceOf(address(this));
        CAKE_MASTER_CHEF.deposit(pid, amount);
        cakeHarvested = IBEP20(CAKE).balanceOf(address(this)).sub(before);
    }

    function _withdrawStakingToken(uint amount) private returns (uint cakeHarvested) {
        uint before = IBEP20(CAKE).balanceOf(address(this));
        CAKE_MASTER_CHEF.withdraw(pid, amount);
        cakeHarvested = IBEP20(CAKE).balanceOf(address(this)).sub(before);
    }

    function _harvest(uint cakeAmount) private {
        uint _amount = Math.min(cakeAmount, IBEP20(CAKE).balanceOf(address(this)));
        if (_amount > 0) {
            IBEP20(CAKE).safeTransfer(FEE_BOX, _amount);
            emit RewardAdded(_amount);
        }
    }
}