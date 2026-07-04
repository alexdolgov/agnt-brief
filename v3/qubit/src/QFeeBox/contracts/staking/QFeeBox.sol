// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

/*
      ___       ___       ___       ___       ___
     /\  \     /\__\     /\  \     /\  \     /\  \
    /::\  \   /:/ _/_   /::\  \   _\:\  \    \:\  \
    \:\:\__\ /:/_/\__\ /::\:\__\ /\/::\__\   /::\__\
     \::/  / \:\/:/  / \:\::/  / \::/\/__/  /:/\/__/
     /:/  /   \::/  /   \::/  /   \:\__\    \/__/
     \/__/     \/__/     \/__/     \/__/

*
* MIT License
* ===========
*
* Copyright (c) 2021 QubitFinance
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

import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import "../library/SafeToken.sol";

import "../interfaces/IQubitLocker.sol";
import "../interfaces/IPriceCalculator.sol";
import "../interfaces/ISafeSwapBNB.sol";
import "../interfaces/IZap.sol";


contract QFeeBox is OwnableUpgradeable {
    using SafeBEP20 for IBEP20;
    using SafeMath for uint;
    using SafeToken for address;

    /* ========== CONSTANT ========== */
    IPriceCalculator private constant oracle = IPriceCalculator(0xF5BF8A9249e3cc4cB684E3f23db9669323d4FB7d);
    IQubitLocker private constant qubitLocker = IQubitLocker(0xB8243be1D145a528687479723B394485cE3cE773);
    ISafeSwapBNB private constant safeSwapBNB = ISafeSwapBNB(0x8D36CB4C0aEa63ca095d9E26aeFb360D279176B0);
    IZap private constant zapBSC = IZap(0xdC2bBB0D33E0e7Dea9F5b98F46EDBaC823586a0C);

    uint private constant CALLER_BOUNTY_BPS = 5;

    address private constant BTCB = 0x7130d2A12B9BCbFAe4f2634d864A1Ee1Ce3Ead9c;
    address private constant ETH = 0x2170Ed0880ac9A755fd29B2688956BD959F933F8;
    address private constant USDT = 0x55d398326f99059fF775485246999027B3197955;
    address private constant BUSD = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
    address private constant USDC = 0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d;
    address private constant DAI = 0x1AF3F329e8BE154074D8769D1FFa4eE058B1DBc3;
    address private constant CAKE = 0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82;
    address private constant QBT = 0x17B7163cf1Dbd286E262ddc68b553D899B93f526;
    address private constant BUNNY = 0xC9849E6fdB743d08fAeE3E34dd2D1bc69EA11a51;

    /* ========== MODIFIERS ========== */
    modifier notContract {
        require(!Address.isContract(msg.sender), 'QFeeBox: caller is contract');
        require(msg.sender == tx.origin, 'QFeeBox: msg.sender is not tx.origin');
        _;
    }

    /* ========== INITIALIZER ========== */

    receive() external payable {}

    function initialize() external initializer {
        __Ownable_init();

        address[9] memory _tokens = redundantTokens();
        for (uint i = 0; i < _tokens.length; i++) {
            IBEP20(_tokens[i]).approve(address(zapBSC), uint(- 1));
        }
    }

    /* ========== VIEWS ========== */

    function redundantTokens() public pure returns (address[9] memory) {
        return [USDT, BUSD, ETH, BTCB, USDC, DAI, CAKE, QBT, BUNNY];
    }

    function pendingRewards() public view returns (uint bnb) {
        bnb = address(this).balance;

        address[9] memory _tokens = redundantTokens();
        for (uint i = 0; i < _tokens.length; i++) {
            uint amount = IBEP20(_tokens[i]).balanceOf(address(this));
            if (amount > 0) {
                (uint _bnbValue, ) = oracle.valueOfAsset(_tokens[i], amount);
                bnb = bnb.add(_bnbValue);
            }
        }
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function harvest() external notContract {
        address[9] memory _tokens = redundantTokens();
        for (uint i = 0; i < _tokens.length; i++) {
            uint amount = IBEP20(_tokens[i]).balanceOf(address(this));
            if (amount > 0) {
                zapBSC.zapOut(_tokens[i], amount);
            }
        }

        uint fee = address(this).balance;
        uint callerBounty = fee.mul(CALLER_BOUNTY_BPS).div(10000);

        fee = fee.sub(callerBounty);

        SafeToken.safeTransferETH(address(qubitLocker), fee);
        qubitLocker.notifyRewardAmount(fee);

        SafeToken.safeTransferETH(msg.sender, callerBounty);
    }
}
