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

import "@openzeppelin/contracts/math/Math.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";
import "@pancakeswap/pancake-swap-lib/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

import "../library/WhitelistUpgradeable.sol";
import "../library/PausableUpgradeable.sol";
import "../library/SafeToken.sol";

import "../interfaces/IPancakePair.sol";
import "../interfaces/IPancakeRouter02.sol";
import "../interfaces/IMasterChef.sol";
import "../interfaces/multiplexer/IQMultiplexer.sol";
import "../interfaces/multiplexer/IQPositionManager.sol";
import "../interfaces/multiplexer/IQZap.sol";
import "../interfaces/multiplexer/IQRewardBox.sol";
import "../interfaces/IQore.sol";
import "../interfaces/IQToken.sol";

abstract contract QMultiplexerHelper is WhitelistUpgradeable, PausableUpgradeable, ReentrancyGuardUpgradeable, IQMultiplexer {
    using SafeMath for uint;
    using SafeBEP20 for IBEP20;

    /* ========== CONSTANTS ============= */

    address public constant WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address public constant QBT = 0x17B7163cf1Dbd286E262ddc68b553D899B93f526;
    address public constant DEV_TREASURY = 0xc7939B1Fa2E7662592b4d11dbE3C331bEE18FC85;

    IBEP20 public constant CAKE = IBEP20(0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82);
    IMasterChef public constant CAKE_MASTER_CHEF = IMasterChef(0x73feaa1eE314F8c655E354234017bE2193C9E24E);

    /* ========== STATE VARIABLES ========== */

    IQPositionManager public positionManager;
    IQZap public qZap;
    IQore public qore;
    IQRewardBox public qRewardBox;

    mapping(address => uint) public pendingCake;
    address public keeper;

    /* ========== VARIABLE GAP ========== */

    uint256[49] private __gap;

    /* ========== MODIFIER ========== */

    modifier updateCakeHarvested(address pool) {
        uint before = CAKE.balanceOf(address(this));
        _;
        uint _after = CAKE.balanceOf(address(this));
        pendingCake[pool] = pendingCake[pool].add(_after).sub(before);
    }

    modifier onlyKeeper() {
        require(msg.sender == owner() || msg.sender == keeper, "QMultiplexer: only keeper");
        _;
    }

    /* ========== INITIALIZER ========== */

    function __MultiplexerHelper_init() internal initializer {
        __WhitelistUpgradeable_init();
        __PausableUpgradeable_init();
        __ReentrancyGuard_init();
    }

    /* ========== RESTRICTED FUNCTION ========== */

    function setPositionManager(address _address) external onlyOwner {
        positionManager = IQPositionManager(_address);
    }

    function setQore(address _qore) external onlyOwner {
        qore = IQore(_qore);
    }

    function setQZap(address _qZap) external onlyOwner {
        if (address(qZap) != address(0)) {
            CAKE.safeApprove(address(qZap), 0);
            IBEP20(QBT).safeApprove(address(qZap), 0);
        }
        qZap = IQZap(_qZap);
        CAKE.safeApprove(_qZap, uint(- 1));
        IBEP20(QBT).safeApprove(_qZap, uint(- 1));
    }

    function setRewardBox(address _qRewardBox) external onlyOwner {
        if (address(qRewardBox) != address(0)) {
            IBEP20(QBT).safeApprove(address(qRewardBox), 0);
        }
        qRewardBox = IQRewardBox(_qRewardBox);
        IBEP20(QBT).safeApprove(_qRewardBox, uint(- 1));
    }

    function setKeeper(address _keeper) external onlyOwner {
        keeper = _keeper;
    }

    /* ========== INTERNAL FUNCTION ========== */

    function _borrowAndSwap(
        uint id,
        address pool,
        uint[] memory depositAmount,
        uint[] memory borrowAmount
    ) internal returns (uint){
        (address _token0, address _token1) = positionManager.getBaseTokens(pool);
        uint amount;

        if (depositAmount[0] > 0) {
            require(depositAmount[0] == _transferIn(_token0, msg.sender, depositAmount[0]), "QMultiplexer: insufficient token0");
        }
        if (depositAmount[1] > 0) {
            require(depositAmount[1] == _transferIn(_token1, msg.sender, depositAmount[1]), "QMultiplexer: insufficient token1");
        }
        if (depositAmount[2] > 0) {
            require(depositAmount[2] == _transferIn(pool, msg.sender, depositAmount[2]), "QMultiplexer: insufficient LP token");
            amount = amount.add(depositAmount[2]);
        }

        if (borrowAmount[0] > 0) {
            _callQore(pool, id, _token0, borrowAmount[0], 0);
            emit Borrow(msg.sender, pool, id, borrowAmount[0], 0);
        }
        if (borrowAmount[1] > 0) {
            _callQore(pool, id, _token1, borrowAmount[1], 0);
            emit Borrow(msg.sender, pool, id, 0, borrowAmount[1]);
        }

        amount = amount.add(_addOptimalLiquidity(pool, depositAmount[0].add(borrowAmount[0]), depositAmount[1].add(borrowAmount[1])));

        positionManager.updatePositionInfo(pool, id, msg.sender, amount, 0, true);
        return amount;
    }

    function _withdrawAndRepay(
        address pool,
        uint id,
        uint withdrawAmount,
        uint[] memory repayAmount
    ) internal returns (uint token0Refund, uint token1Refund){
        (address _token0, address _token1) = positionManager.getBaseTokens(pool);
        address positionOwner = positionManager.getPositionOwner(pool, id);

        positionManager.updatePositionInfo(pool, id, positionOwner, 0, withdrawAmount, true);
        withdrawAmount = _withdraw(pool, withdrawAmount);

        _approveIfNeeded(pool, address(qZap));
        (token0Refund, token1Refund) = qZap.removeLiquidityWithDesired(pool, withdrawAmount, repayAmount[0], repayAmount[1]);

        if (repayAmount[0] > 0) {
            _callQore(pool, id, _token0, 0, repayAmount[0]);
            token0Refund = token0Refund.sub(repayAmount[0]);
            emit Repay(positionOwner, pool, id, repayAmount[0], 0);
        }
        if (repayAmount[1] > 0) {
            _callQore(pool, id, _token1, 0, repayAmount[1]);
            token1Refund = token1Refund.sub(repayAmount[1]);
            emit Repay(positionOwner, pool, id, 0, repayAmount[1]);
        }
    }

    function _callQore(address pool, uint id, address token, uint borrowAmount, uint repayAmount) private returns (uint) {
        address positionOwner = positionManager.getPositionOwner(pool, id);
        qRewardBox.updateReward(pool, token);

        if (borrowAmount > 0) {
            positionManager.updateDebt(pool, id, msg.sender, token, borrowAmount, 0);
            return qore.borrowMultiplexer(token, borrowAmount);
        }
        else if (repayAmount > 0) {
            _approveIfNeeded(token, qore.getQToken(token));
            positionManager.updateDebt(pool, id, positionOwner, token, 0, repayAmount);
            return token == WBNB ? qore.repayMultiplexer{value : repayAmount}(token, repayAmount) : qore.repayMultiplexer(token, repayAmount);
        }
        return 0;
    }

    function _addOptimalLiquidity(address lpToken, uint token0In, uint token1In) internal returns (uint liquidity) {
        if (token0In == 0 && token1In == 0) return 0;
        (address _token0, address _token1) = positionManager.getBaseTokens(lpToken);

        _approveIfNeeded(_token0, address(qZap));
        _approveIfNeeded(_token1, address(qZap));

        if (_token0 == WBNB) {
            liquidity = qZap.addOptimalLiquidity{value : token0In}(lpToken, token0In, token1In);
        } else if (_token1 == WBNB) {
            liquidity = qZap.addOptimalLiquidity{value : token1In}(lpToken, token0In, token1In);
        } else {
            liquidity = qZap.addOptimalLiquidity(lpToken, token0In, token1In);
        }
    }

    function _approveIfNeeded(address token, address to) internal {
        if (IBEP20(token).allowance(address(this), to) == 0) {
            IBEP20(token).safeApprove(to, uint(- 1));
        }
    }

    function _deposit(address pool, uint amount) internal updateCakeHarvested(pool) {
        uint pid = positionManager.pidOf(pool);
        require(pid != 0, "QMultiplexer: invalid staking token");

        _approveIfNeeded(pool, address(CAKE_MASTER_CHEF));
        CAKE_MASTER_CHEF.deposit(pid, amount);
    }

    function _withdraw(address pool, uint amount) internal updateCakeHarvested(pool) returns (uint amountOut) {
        uint pid = positionManager.pidOf(pool);
        require(pid != 0, "QMultiplexer: invalid staking token");

        uint _before = IBEP20(pool).balanceOf(address(this));
        CAKE_MASTER_CHEF.withdraw(pid, amount);
        amountOut = IBEP20(pool).balanceOf(address(this)).sub(_before);
    }

    function _transferIn(address token, address from, uint amount) internal returns (uint amountIn) {
        if (token == WBNB) return msg.value;
        uint _before = IBEP20(token).balanceOf(address(this));
        IBEP20(token).safeTransferFrom(from, address(this), amount);
        amountIn = IBEP20(token).balanceOf(address(this)).sub(_before);
    }

    function _transferOut(address token, address to, uint amount) internal {
        if (amount > 0) {
            token == WBNB ? SafeToken.safeTransferETH(to, amount) : IBEP20(token).safeTransfer(to, amount);
        }
    }
}
