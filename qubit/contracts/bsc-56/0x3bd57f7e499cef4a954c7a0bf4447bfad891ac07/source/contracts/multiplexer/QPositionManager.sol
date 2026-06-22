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
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/IBEP20.sol";

import "../library/WhitelistUpgradeable.sol";
import "../library/PausableUpgradeable.sol";
import "../library/SafeToken.sol";
import "../library/QubitMath.sol";

import "../interfaces/IPancakePair.sol";
import "../interfaces/IPancakeRouter02.sol";
import "../interfaces/IPriceCalculator.sol";
import "../interfaces/multiplexer/IQMultiplexer.sol";
import "../interfaces/multiplexer/IQPositionManager.sol";

import "../interfaces/IQore.sol";
import "../interfaces/IQToken.sol";
import "../interfaces/IMasterChef.sol";

contract QPositionManager is IQPositionManager, WhitelistUpgradeable, PausableUpgradeable {
    using QubitMath for uint;
    using SafeMath for uint;
    using SafeBEP20 for IBEP20;

    /* ========== CONSTANTS ============= */

    IPancakeRouter02 private constant ROUTER = IPancakeRouter02(0x10ED43C718714eb63d5aA57B78B54704E256024E);
    IPriceCalculator private constant priceCalculator = IPriceCalculator(0x20E5E35ba29dC3B540a1aee781D0814D5c77Bce6);
    IMasterChef private constant CAKE_MASTER_CHEF = IMasterChef(0x73feaa1eE314F8c655E354234017bE2193C9E24E);

    uint public constant MAX_POS_NUM = 10;
    uint private constant MAX_ITER = 100;
    uint private constant DUST = 1000;

    /* ========== STATE VARIABLES ============= */

    mapping(address => uint) public override totalDebtShares;   // token -> totalDebtShare
    mapping(address => PoolInfo) private pools;         // pool(LP) -> poolInfo
    mapping(address => UserInfo) private users;         // account -> userInfo
    IQMultiplexer private qMultiplexer;
    IQore private qore;

    mapping(address => address) public qMarkets;

    /* ========== MODIFIER ========== */

    modifier onlyMultiplexer() {
        require(msg.sender == address(qMultiplexer), "QPositionManager:: caller is not qMultiplexer");
        _;
    }

    /* ========== INITIALIZER ========== */

    receive() external payable {}

    function initialize() external initializer {
        __WhitelistUpgradeable_init();
        __PausableUpgradeable_init();
    }

    /* ========== VIEW FUNCTIONS ========== */

    // global info
    function totalDebtValue(address token) public override view returns (uint) {
        address market = qore.getQToken(token);
//        address market = qMarkets[token];
        return market == address(0) ? 0 : IQToken(market).borrowBalanceOf(address(qMultiplexer));
    }

    function debtShareToVal(address token, uint share) public view returns (uint debtVal){
        uint _totalDebtShare = totalDebtShares[token];
        debtVal = _totalDebtShare == 0 ? 0 : totalDebtValue(token).mul(share).div(_totalDebtShare);
    }

    function debtValToShare(address token, uint amount) public view returns (uint) {
        uint _totalDebtValue = totalDebtValue(token);
        return _totalDebtValue == 0 ? amount : amount.mul(totalDebtShares[token]).div(_totalDebtValue);
    }

    function getBorrowAPY(address token) external view returns (uint) {
        address market = qore.getQToken(token);
//        address market = qMarkets[token];
        return IQToken(market).borrowRatePerSec().mul(365 days);
    }

    function getQBTRewardAPY(address token) external view returns (uint) {
        address market = qore.getQToken(token);
//        address market = qMarkets[token];
        QConstant.DistributionAPY memory apyInfo = qore.apyDistributionOf(market, address(qMultiplexer));
        return apyInfo.apyAccountBorrowQBT;
    }

    function getQMultiplexer() external view returns (address) {
        return address(qMultiplexer);
    }

    function getQore() external view returns (address) {
        return address(qore);
    }

    // pool info
    function totalSupply(address pool) public view returns (uint) {
        return pools[pool].totalPositionShare;
    }

    function totalDebtShareOfPool(address pool, address token) public override view returns (uint) {
        return pools[pool].totalDebtShares[token];
    }

    function pidOf(address pool) public override view returns (uint) {
        return pools[pool].pid;
    }

    function balance(address pool) public override view returns (uint amount) {
        (amount,) = CAKE_MASTER_CHEF.userInfo(pidOf(pool), address(qMultiplexer));
    }

    function balanceOf(address pool, uint id) public override view returns (uint) {
        uint _totalPositionShare = totalSupply(pool);
        return _totalPositionShare == 0 ? 0 : balance(pool).mul(shareOf(pool, id)).div(_totalPositionShare);
    }

    function principalOf(address pool, uint id) public override view returns (uint) {
        return pools[pool].positions[id].principal;
    }

    function shareOf(address pool, uint id) public view returns (uint) {
        return pools[pool].positions[id].positionShare;
    }

    function debtShareOfPosition(address pool, uint id, address token) public override view returns (uint) {
        return pools[pool].positions[id].debtShare[token];
    }

    function earned(address pool, uint id) public override view returns (uint) {
        return balanceOf(pool, id) > principalOf(pool, id) + DUST ? balanceOf(pool, id).sub(principalOf(pool, id)) : 0;
    }

    function getPositionOwner(address pool, uint id) public override view returns (address) {
        return pools[pool].positions[id].positionOwner;
    }

    function getLastPositionID(address pool) public override view returns (uint) {
        return pools[pool].lastPositionID;
    }

    function debtValOfPosition(address pool, uint id) public override view returns (uint[] memory) {
        uint[] memory debtValue = new uint[](2);
        (address _token0, address _token1) = getBaseTokens(pool);

        debtValue[0] = debtShareToVal(_token0, debtShareOfPosition(pool, id, _token0));
        debtValue[1] = debtShareToVal(_token1, debtShareOfPosition(pool, id, _token1));

        return debtValue;
    }

    function debtRatioOf(address pool, uint id) public override view returns (uint) {
        uint positionBalance = balanceOf(pool, id);

        (address _token0, address _token1) = getBaseTokens(pool);
        uint[] memory positionDebt = debtValOfPosition(pool, id);

        // early exit to avoid zero-division
        if (positionBalance == 0) return positionDebt[0].add(positionDebt[1]) == 0 ? 0 : uint(- 1);

        (, uint positionValInUSD) = priceCalculator.valueOfAsset(pool, positionBalance);
        (, uint token0DebtValInUSD) = priceCalculator.valueOfAsset(_token0, positionDebt[0]);
        (, uint token1DebtValInUSD) = priceCalculator.valueOfAsset(_token1, positionDebt[1]);

        return token0DebtValInUSD.add(token1DebtValInUSD).mul(1e18).div(positionValInUSD);
    }

    function debtRatioLimit(address pool) public override view returns (uint) {
        return pools[pool].debtRatioLimit.mul(1e18).div(10000);
    }

    // user info
    function getPositionList(address pool, address account) public override view returns (uint[] memory){
        return users[account].positionList[pool];
    }

    function positionBalanceOfUser(address account, address pool) public override view returns (uint) {
        uint _totalPositionShare = totalSupply(pool);
        uint _positionShare = users[account].positionShare[pool];
        return _totalPositionShare == 0 ? 0 : balance(pool).mul(_positionShare).div(_totalPositionShare);
    }

    function debtShareOfUser(address account, address token) public override view returns (uint) {
        return users[account].debtShare[token];
    }

    function debtValOfUser(address account, address token) public override view returns (uint) {
        uint _debtShare = users[account].debtShare[token];
        return debtShareToVal(token, _debtShare);
    }

    function estimateTokenValue(address lpToken, uint amount) public override view returns (uint token0Amount, uint token1Amount) {
        uint myRatio = amount.mul(1e18).div(IPancakePair(lpToken).totalSupply());
        (address token0, address token1) = getBaseTokens(lpToken);

        token0Amount = myRatio.mul(IBEP20(token0).balanceOf(lpToken)).div(1e18);
        token1Amount = myRatio.mul(IBEP20(token1).balanceOf(lpToken)).div(1e18);
    }

    /*
        @params
        lpToken: address, target LP token to create
        token0Amount, token1Amount: uint, input token amounts
        @returns
        token0Value, token1Value: uint, estimated token value of LP
        token1Swap, token1Swap: uint, need to swap amount
    */
    function estimateAddLiquidity(
        address lpToken,
        uint token0Amount,
        uint token1Amount)
    public override view returns (uint token0Value, uint token1Value, uint token0Swap, uint token1Swap) {
        (uint r0, uint r1,) = IPancakePair(lpToken).getReserves();
        token0Swap = 0;
        token1Swap = 0;
        uint token0Recv;
        uint token1Recv;

        // token0 -> token1
        if (token0Amount > 0) {
            token0Swap = _getOptimalSwapAmount(r0, token0Amount);
            token1Recv = ROUTER.getAmountOut(token0Swap, r0, r1);
        }

        // update reserves
        r0 = r0.add(token0Swap);
        r1 = r1.sub(token1Recv);

        // token1 -> token0
        if (token1Amount > 0) {
            token1Swap = _getOptimalSwapAmount(r1, token1Amount);
            token0Recv = ROUTER.getAmountOut(token1Swap, r1, r0);
        }

        // estimate position value
        token0Value = token0Amount.sub(token0Swap).add(token0Recv);
        token1Value = token1Amount.sub(token1Swap).add(token1Recv);
    }

    function estimateRefund(
        address pool,
        uint amount,
        uint token0Repay,
        uint token1Repay)
    public view returns (uint token0Trade, uint token1Trade, uint token0Refund, uint token1Refund) {
        (address token0, address token1) = getBaseTokens(pool);

        (token0Refund, token1Refund) = estimateTokenValue(pool, amount);

        token0Trade = 0;
        token1Trade = 0;
        if (token0Refund >= token0Repay && token1Refund >= token1Repay) {
            token0Refund = token0Refund.sub(token0Repay);
            token1Refund = token1Refund.sub(token1Repay);
        } else if (token0Refund < token0Repay) {
            token1Trade = _getAmountIn(token1, token0, token0Repay.sub(token0Refund));

            token0Refund = 0;
            token1Refund = token1Refund.sub(token1Repay).sub(token1Trade);
        } else if (token1Refund < token1Repay) {
            token0Trade = _getAmountIn(token0, token1, token1Repay.sub(token1Refund));

            token0Refund = token0Refund.sub(token0Repay).sub(token0Trade);
            token1Refund = 0;
        }
    }

    function getBorrowable(
        address pool,
        uint leverageLevel,
        uint lpDepositAmount,
        uint token0DepositAmount,
        uint token1DepositAmount)
    public view returns (uint token0Borrowable, uint token1Borrowable) {
        (address token0, address token1) = getBaseTokens(pool);
        (, uint token0Value) = priceCalculator.valueOfAsset(token0, token0DepositAmount);
        (, uint token1Value) = priceCalculator.valueOfAsset(token1, token1DepositAmount);

        uint level = leverageLevel;

        (, uint lpValue) = priceCalculator.valueOfAsset(pool, lpDepositAmount);
        uint totalSupplyValue = lpValue.add(token0Value).add(token1Value);

        uint borrowValue = totalSupplyValue.mul(level.sub(1e18)).div(1e18);
        (, uint token0UnitValue) = priceCalculator.valueOfAsset(token0, 1e18);
        (, uint token1UnitValue) = priceCalculator.valueOfAsset(token1, 1e18);

        token0Borrowable = borrowValue.mul(1e18).div(token0UnitValue);
        token1Borrowable = borrowValue.mul(1e18).div(token1UnitValue);
    }

    function isLiquidated(address pool, uint id) external override view returns (bool) {
        return pools[pool].positions[id].isLiquidated;
    }

    function getLiquidationInfo(address pool, uint id) external override view returns (bool, uint[] memory) {
        (address token0, address token1) = getBaseTokens(pool);

        uint[] memory liquidationRefund = new uint[](2);
        liquidationRefund[0] = pools[pool].positions[id].liquidateAmount[token0];
        liquidationRefund[1] = pools[pool].positions[id].liquidateAmount[token1];

        return (pools[pool].positions[id].isLiquidated, liquidationRefund);
    }

    function getPositionInfo(address pool, uint id) public override view returns (PositionState memory) {
        PositionState memory info;

        uint[] memory positionDebt = debtValOfPosition(pool, id);

        info.account = getPositionOwner(pool, id);
        info.liquidated = pools[pool].positions[id].isLiquidated;
        info.balance = balanceOf(pool, id);
        info.principal = principalOf(pool, id);
        info.debtRatio = debtRatioOf(pool, id);
        info.earned = earned(pool, id);
        info.debtToken0 = positionDebt[0];
        info.debtToken1 = positionDebt[1];

        (info.token0Value, info.token1Value) = estimateTokenValue(pool, info.balance);

        return info;
    }

    function getBaseTokens(address lpToken) public override view returns (address, address){
        return (IPancakePair(lpToken).token0(), IPancakePair(lpToken).token1());
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function pushPosition(address pool, address account, uint id, bool isWhitelist) external override onlyMultiplexer {
        UserInfo storage userInfo = users[account];
        require(isWhitelist || userInfo.positionList[pool].length + 1 <= MAX_POS_NUM, "QPositionManager:: MAX_POS_NUM");
        userInfo.positionList[pool].push(id);
        pools[pool].lastPositionID += 1;
    }

    function removePosition(address pool, address account, uint id) external override onlyMultiplexer {
        uint[] storage positionList = users[account].positionList[pool];

        require(positionList.length > 0, "QPositionManager:: empty position list");

        if (id != positionList[positionList.length - 1]) {
            uint index = _findValue(positionList, id);
            for (uint i = index; i < positionList.length - 1; i++) {
                positionList[i] = positionList[i + 1];
            }
        }
        positionList.pop();

        delete pools[pool].positions[id];
        delete pools[pool].positions[id].debtShare[IPancakePair(pool).token0()];
        delete pools[pool].positions[id].debtShare[IPancakePair(pool).token1()];
        delete pools[pool].positions[id].liquidateAmount[IPancakePair(pool).token0()];
        delete pools[pool].positions[id].liquidateAmount[IPancakePair(pool).token1()];
    }

    function notifyLiquidated(address pool, uint id, uint token0Refund, uint token1Refund) external override onlyMultiplexer {
        PositionInfo storage positionInfo = pools[pool].positions[id];
        require(!positionInfo.isLiquidated, "QPositionManager:: already liquidated!");

        (address token0, address token1) = getBaseTokens(pool);

        positionInfo.isLiquidated = true;
        positionInfo.liquidateAmount[token0] = token0Refund;
        positionInfo.liquidateAmount[token1] = token1Refund;
    }

    function updateDebt(address pool, uint id, address account, address token, uint borrowAmount, uint repayAmount) external override onlyMultiplexer {
        require((borrowAmount > 0 && repayAmount == 0) || (repayAmount > 0 && borrowAmount == 0), 'QPositionManager::updateDebt:: invalid debt amount');

        if (borrowAmount > 0) {
            uint debtShare = debtValToShare(token, borrowAmount);
            totalDebtShares[token] = totalDebtShares[token].add(debtShare);
            // update global DebtShare (Multiplexer's Debt)
            pools[pool].totalDebtShares[token] = pools[pool].totalDebtShares[token].add(debtShare);
            // update pool debtShare (depending on pool)
            pools[pool].positions[id].debtShare[token] = pools[pool].positions[id].debtShare[token].add(debtShare);
            // update position debtShare (depending on position)
            users[account].debtShare[token] = users[account].debtShare[token].add(debtShare);
            // update user debtShare (depending on account)
        }
        else if (repayAmount > 0) {
            uint debtShare = debtValToShare(token, repayAmount);
            totalDebtShares[token] = totalDebtShares[token].sub(debtShare);
            pools[pool].totalDebtShares[token] = pools[pool].totalDebtShares[token].sub(debtShare);
            pools[pool].positions[id].debtShare[token] = pools[pool].positions[id].debtShare[token].sub(debtShare);
            users[account].debtShare[token] = users[account].debtShare[token].sub(debtShare);

            // clean up dust
            if (pools[pool].positions[id].debtShare[token] < DUST) {
                uint dust = pools[pool].positions[id].debtShare[token];
                totalDebtShares[token] = totalDebtShares[token].sub(dust);
                pools[pool].totalDebtShares[token] = pools[pool].totalDebtShares[token].sub(dust);
                pools[pool].positions[id].debtShare[token] = 0;
                users[account].debtShare[token] = users[account].debtShare[token].sub(dust);
            }
        }
    }

    function updatePositionInfo(address pool, uint id, address account, uint depositAmount, uint withdrawAmount, bool updatePrincipal) external override onlyMultiplexer {
        require((depositAmount > 0 && withdrawAmount == 0) || (withdrawAmount > 0 && depositAmount == 0), 'QPositionManager::updatePositionInfo:: invalid amount');
        PoolInfo storage poolInfo = pools[pool];

        uint amount = depositAmount > 0 ? depositAmount : withdrawAmount;
        uint share = poolInfo.totalPositionShare == 0 ? amount : amount.mul(poolInfo.totalPositionShare).div(balance(pool));

        if (depositAmount > 0) {
            poolInfo.totalPositionShare = poolInfo.totalPositionShare.add(share);
            poolInfo.positions[id].positionShare = poolInfo.positions[id].positionShare.add(share);
            poolInfo.positions[id].principal = poolInfo.positions[id].principal.add(depositAmount);
            if (poolInfo.positions[id].positionOwner == address(0)) poolInfo.positions[id].positionOwner = account;
            users[account].positionShare[pool] = users[account].positionShare[pool].add(share);
        }
        else if (withdrawAmount > 0) {
            poolInfo.totalPositionShare = poolInfo.totalPositionShare.sub(share);
            poolInfo.positions[id].positionShare = poolInfo.positions[id].positionShare.sub(share);
            users[account].positionShare[pool] = users[account].positionShare[pool].sub(share);
            if (updatePrincipal) poolInfo.positions[id].principal = poolInfo.positions[id].principal.sub(Math.min(withdrawAmount, poolInfo.positions[id].principal));

            // clean up dust
            if (poolInfo.positions[id].positionShare < DUST) {
                poolInfo.totalPositionShare = poolInfo.totalPositionShare.sub(poolInfo.positions[id].positionShare);
                poolInfo.positions[id].positionShare = 0;
            }
            if (poolInfo.positions[id].principal < DUST) poolInfo.positions[id].principal = 0;
            if (users[account].positionShare[pool] < DUST) users[account].positionShare[pool] = 0;
        }
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function setQMultiplexer(address _qMultiplexer) external onlyOwner {
        qMultiplexer = IQMultiplexer(_qMultiplexer);
    }

    function setQore(address _qore) external onlyOwner {
        qore = IQore(_qore);
    }

    function setQMarkets(address[] memory _tokens, address[] memory _qTokens) external onlyOwner {
        require(_tokens.length == _qTokens.length, "QPositionManager:: not identical length of token list");
        for (uint i = 0; i < _tokens.length; i++) {
            qMarkets[_tokens[i]] = _qTokens[i];
        }
    }

    function setPid(address pool, uint pid) external onlyOwner {
        PoolInfo storage poolInfo = pools[pool];
        poolInfo.pid = pid;
    }

    function setDebtRatioLimit(address pool, uint limit) external onlyOwner {
        require(limit < 10000, "QPositionManager:: invalid limit value");
        PoolInfo storage poolInfo = pools[pool];
        poolInfo.debtRatioLimit = limit;
    }

    /* ========== PRIVATE FUNCTIONS ========== */

    function _getAmountIn(address _from, address _to, uint amountMinOut) private view returns (uint amountIn) {
        address[] memory path;
        path = new address[](2);
        path[0] = _from;
        path[1] = _to;

        uint[] memory amounts = ROUTER.getAmountsIn(amountMinOut, path);
        amountIn = amounts[0];
    }

    function _getOptimalSwapAmount(uint r0, uint amount0) private pure returns (uint swapAmount0) {
        // suppose trade fee(f) = 0.0025 (0.25%)
        uint a = 1_9975;
        // (2-f) * 10000
        uint a2 = 3_9900_0625;
        // (2-f)^2 * 10000^2
        uint b = 3_9900_0000;
        // 4(1-f) * 10000 * 10000
        uint c = 1_9950;
        // 2(1-f)

        swapAmount0 = QubitMath.sqrt(r0.mul(r0.mul(a2).add(amount0.mul(b)))).sub(r0.mul(a)) / c;
    }

    // suppose array sorted by ascending order
    function _findValue(uint[] memory arr, uint value) private pure returns (uint) {
        uint arrayLen = arr.length;
        uint iter = 0;
        uint start = 0;
        uint end = arrayLen - 1;
        uint i = arrayLen.div(2);

        while (true) {
            require(iter < MAX_ITER, "QPositionManager: MAX_ITER");
            uint v = arr[i];
            if (v == value) {
                return i;
            }
            else if (v > value) {
                end = i;
                i = i.add(start).div(2);
            }
            else {
                start = i;
                i = i.add(end).div(2);
            }
            iter++;
        }

        return i;
    }
}
