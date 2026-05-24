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

import "./QMultiplexerHelper.sol";

contract QMultiplexer is QMultiplexerHelper {
    using SafeMath for uint;
    using SafeBEP20 for IBEP20;

    /* ========== STATE VARIABLES ========== */

    uint public incentiveBp;
    uint public performanceBp;

    /* ========== EVENTS ========== */

    event Recovered(address token, uint amount);

    /* ========== MODIFIER ========== */

    modifier onlyPositionOwner(address pool, uint id) {
        require(msg.sender == positionManager.getPositionOwner(pool, id), "QMultiplexer: permission denied");
        _;
    }

    modifier checkDebtRatio(address pool, uint id) {
        _;
        require(positionManager.debtRatioOf(pool, id) <= positionManager.debtRatioLimit(pool), "QMultiplexer: Exceed debtRatioLimit");
    }

    modifier checkLiquidated(address pool, uint id) {
        require(!positionManager.isLiquidated(pool, id), "QMultiplexer: liquidated");
        _;
    }

    modifier onlyEOAOrWhitelist() {
        require(msg.sender == tx.origin || isWhitelist(msg.sender), "QMultiplexer: only EOA or whitelist");
        _;
    }

    /* ========== INITIALIZER ========== */

    receive() external payable {}

    function initialize() external initializer {
        __MultiplexerHelper_init();

        incentiveBp = 500;
        performanceBp = 300;
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function createPosition(
        address pool,
        uint[] memory depositAmount,    // token0, token1, lp
        uint[] memory borrowAmount
    ) external payable override onlyEOAOrWhitelist nonReentrant returns (uint id){
        require(depositAmount[0] > 0 || depositAmount[1] > 0 || depositAmount[2] > 0, "QMultiplexer: Zero depositAmount");

        id = positionManager.getLastPositionID(pool);
        uint amount = _borrowAndSwap(id, pool, depositAmount, borrowAmount);

        _deposit(pool, amount);
        positionManager.pushPosition(pool, msg.sender, id, isWhitelist(msg.sender));
        require(positionManager.debtRatioOf(pool, id) <= positionManager.debtRatioLimit(pool), "QMultiplexer: Exceed debtRatioLimit");
        emit OpenPosition(msg.sender, pool, id);
        emit Deposited(msg.sender, pool, id, depositAmount[0], depositAmount[1], depositAmount[2]);
    }

    function increasePosition(
        address pool,
        uint id,
        uint[] memory depositAmount,
        uint[] memory borrowAmount
    ) external override payable onlyEOAOrWhitelist onlyPositionOwner(pool, id) checkDebtRatio(pool, id) checkLiquidated(pool, id) nonReentrant {
        uint amount = _borrowAndSwap(id, pool, depositAmount, borrowAmount);

        _deposit(pool, amount);
        emit Deposited(msg.sender, pool, id, depositAmount[0], depositAmount[1], depositAmount[2]);
    }

    function closePosition(
        address pool,
        uint id)
    external override onlyEOAOrWhitelist onlyPositionOwner(pool, id) checkLiquidated(pool, id) nonReentrant {
        uint _balance = positionManager.balanceOf(pool, id);
        (uint token0Refund, uint token1Refund) = _withdrawAndRepay(pool, id, _balance, positionManager.debtValOfPosition(pool, id));

        positionManager.removePosition(pool, msg.sender, id);

        _transferOut(IPancakePair(pool).token0(), msg.sender, token0Refund);
        _transferOut(IPancakePair(pool).token1(), msg.sender, token1Refund);
        emit ClosePosition(msg.sender, pool, id);
        emit Withdrawn(msg.sender, pool, id, _balance, token0Refund, token1Refund);
    }

    function reducePosition(
        address pool,
        uint id,
        uint reduceAmount,
        uint[] memory repayAmount
    ) external override onlyEOAOrWhitelist onlyPositionOwner(pool, id) checkDebtRatio(pool, id) checkLiquidated(pool, id) nonReentrant {
        require(reduceAmount <= positionManager.principalOf(pool, id), "QMultiplexer: invalid reduceAmount");

        (uint token0Refund, uint token1Refund) = _withdrawAndRepay(pool, id, reduceAmount, repayAmount);

        _transferOut(IPancakePair(pool).token0(), msg.sender, token0Refund);
        _transferOut(IPancakePair(pool).token1(), msg.sender, token1Refund);
        emit Withdrawn(msg.sender, pool, id, reduceAmount, token0Refund, token1Refund);
    }

    function getReward(address pool, uint id) public override onlyEOAOrWhitelist onlyPositionOwner(pool, id) checkLiquidated(pool, id) nonReentrant returns (uint reward) {
        reward = positionManager.earned(pool, id);
        if (reward > 0) {
            positionManager.updatePositionInfo(pool, id, msg.sender, 0, reward, false);
            reward = _withdraw(pool, reward);

            _transferOut(pool, msg.sender, reward);
            emit ClaimReward(msg.sender, pool, id, reward);
        }
    }

    function liquidationRefund(address pool, uint id) public onlyPositionOwner(pool, id) nonReentrant {
        (bool isLiquidated, uint[] memory refundAmount) = positionManager.getLiquidationInfo(pool, id);
        require(isLiquidated, "QMultiplexer: not liquidated yet");

        address positionOwner = positionManager.getPositionOwner(pool, id);
        positionManager.removePosition(pool, msg.sender, id);

        _transferOut(IPancakePair(pool).token0(), positionOwner, refundAmount[0]);
        _transferOut(IPancakePair(pool).token1(), positionOwner, refundAmount[1]);
        emit Withdrawn(msg.sender, pool, id, 0, refundAmount[0], refundAmount[1]);
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function setIncentiveBp(uint _incentiveBp) external onlyOwner {
        require(_incentiveBp <= 10000, "QMultiplexer: invalid value");
        incentiveBp = _incentiveBp;
    }

    function setPerformanceBp(uint _performanceBp) external onlyOwner {
        require(_performanceBp <= 10000, "QMultiplexer: invalid value");
        performanceBp = _performanceBp;
    }

    function harvest(address pool) external onlyKeeper {
        _harvest(pool);
    }

//    function claimQBT() external onlyKeeper {
//        address[] memory markets = qore.allMarkets();
//        for (uint i=0; i<markets.length; i++){
//            address token = IQToken(markets[i]).underlying();
//            address market = qore.getQToken(token);
//            if (market != address(0)) {
//                uint _before = IBEP20(QBT).balanceOf(address(this));
//                qore.claimQubit(market);
//                uint claimedQBT = IBEP20(QBT).balanceOf(address(this)).sub(_before);
//                qRewardBox.notifyRewardAmount(token, claimedQBT);
//            }
//        }
//    }

    function kill(address pool, uint id) external onlyWhitelisted nonReentrant {
        require(positionManager.debtRatioOf(pool, id) > positionManager.debtRatioLimit(pool), "QMultiplexer: Not yet to liquidate");

        (uint token0Refund, uint token1Refund) = _withdrawAndRepay(pool, id, positionManager.balanceOf(pool, id), positionManager.debtValOfPosition(pool, id));

        uint token0Incentive = token0Refund.mul(incentiveBp).div(10000);
        uint token1Incentive = token1Refund.mul(incentiveBp).div(10000);

        positionManager.notifyLiquidated(pool, id, token0Refund.sub(token0Incentive), token1Refund.sub(token1Incentive));

        _transferOut(IPancakePair(pool).token0(), msg.sender, token0Incentive);
        _transferOut(IPancakePair(pool).token1(), msg.sender, token1Incentive);
        emit KillPosition(pool, id, token0Incentive, token1Incentive);
    }

    /* ========== PRIVATE FUNCTIONS ========== */

    function _harvest(address pool) private {
        _withdraw(pool, 0);

        uint claimedQBT = qRewardBox.getReward(pool);
        if (claimedQBT > 0) {
            _compound(pool, QBT, claimedQBT);
        }

        if (pendingCake[pool] > 0) {
            uint performanceFee = pendingCake[pool].mul(performanceBp).div(10000);
            _compound(pool, address(CAKE), pendingCake[pool].sub(performanceFee));

            performanceFee = qZap.swapExactTokenForToken(address(CAKE), QBT, performanceFee);
            pendingCake[pool] = 0;

            _transferOut(QBT, DEV_TREASURY, performanceFee);
            emit PerformanceFee(pool, performanceFee);
        }
    }

    function _compound(address pool, address tokenFrom, uint _amount) private {
        (address _token0, address _token1) = positionManager.getBaseTokens(pool);
        address token = _token0 == WBNB ? _token1 : _token0;
        uint tokenOut = qZap.swapExactTokenForToken(tokenFrom, token, _amount);
        uint compoundAmount = token == _token0 ?
                        _addOptimalLiquidity(pool, tokenOut, 0) :
                        _addOptimalLiquidity(pool, 0, tokenOut);
        _deposit(pool, compoundAmount);
        emit Harvested(pool, compoundAmount);
    }
}
