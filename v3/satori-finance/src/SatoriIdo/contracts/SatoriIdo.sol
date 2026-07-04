// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

// interface
import "./interfaces/ISatoriIdo.sol";

contract SatoriIdo is ISatoriIdo, Ownable, ReentrancyGuard, Pausable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    /* ========== STATE VARIABLES ========== */

    uint256 private limitRateM;
    uint256 private limitRateBase;
    uint256 private immutable discountRateM;
    uint256 private immutable discountRateBase;
    address private idoToken;
    address public lpToken;
    uint256 public lpAmountCollected;
    address private buyTokenAddr;
    address public pmAddr;
    uint256 private pmTokenAmount;
    uint256 public payBaseLimit;
    uint256 private collectTokenAmount;
    uint256 public maxPerUser;
    uint256 public minBuyAmount;
    uint256 public buyAmountCollected;
    uint256 public mathAmountCollected;
    uint256 public mathAmountSpend;
    uint256 private lpStartTime;
    uint256 private lpEndTime;
    uint256 private buyEndTime;

    bool public idoFail;

    uint256 public pmSettled;

    mapping(address => UserAccount) public userAccountMap;

    /* ========== STRUCTS ========== */
    struct UserAccount {
        uint256 idoStatus;
        address userAddr;
        uint256 firstStakingLpAmount;
        uint256 secondStakingLpAmount;
        uint256 stakingBuyAmount;
        uint256 claimIdoToken;
        uint256 claimLpToken;
        uint256 claimBuyToken;
        uint256 settleTime;
    }

    /* ========== MODIFIERS ========== */

    modifier onlyPmNotSettled() {
        require(pmSettled == 0, "pm is claimed ");
        _;
    }

    modifier onlyNotFail() {
        require(!idoFail, "ido is fail");
        _;
    }

    modifier onlyFail() {
        require(idoFail, "ido is not fail");
        _;
    }

    /* ========== EVENTS ========== */
    event LogAddrInit(address lpAddr, address buyAddr, address pmAddr);
    event LogAmountInit(uint256 cAmount, uint256 pAmount);
    event LogBuyLintInit(uint256 minBuy, uint256 maxBuy);
    event LogTimeConfig(
        uint256 lpStartTime,
        uint256 lpEndTime,
        uint256 buyEndTime
    );
    event LogUserRefund(
        address userAddr,
        uint256 lpSAmount,
        uint256 lpRAmount,
        uint256 bSAmount,
        uint256 bRAmount
    );
    event UpdatePmAddr(address oldAddr, address newAddr);
    event UpdateLpEndTime(uint256 oldTime, uint256 newTime);
    event UpdateBuyEndTime(uint256 oldTime, uint256 newTime);
    event UpdateLimitRate(
        uint256 oldRateM,
        uint256 oldRateBase,
        uint256 newRateM,
        uint256 newRateBase
    );
    event ClaimFailLpRefund(address userAddr, uint256 refundAmount);
    event ClaimFailBuyTokenRefund(address userAddr, uint256 refundAmount);

    event LogClaimSuccess(
        address userAddr,
        uint256 userCollectedAmount,
        uint256 userMathAmount,
        uint256 lp_claim,
        uint256 buy_claim,
        uint256 pm_claim
    );
    event LogPmSettle(uint256 buyTokenAmount, uint256 pmTokenAmount);

    /* ========== CONSTRUCTOR ========== */
    constructor(
        uint256 _limitRateM,
        uint256 _limitRateBase,
        uint256 _discountRateM,
        uint256 _discountRateBase,
        address _lpTokenAddr,
        address _buyTokenAddr,
        address _pmTokenAddr,
        uint256 _cAmount,
        uint256 _pAmount,
        uint256 _minBuy,
        uint256 _maxBuy,
        address _pmAddr,
        uint256 _payBaseLimit,
        uint256[3] memory _idoTimes
    ) {
        limitRateM = _limitRateM;
        limitRateBase = _limitRateBase;
        discountRateM = _discountRateM;
        discountRateBase = _discountRateBase;
        payBaseLimit = _payBaseLimit;

        require(
            _lpTokenAddr != address(0) && _pmTokenAddr != address(0),
            "init error tokenAddr"
        );
        idoToken = _pmTokenAddr;
        lpToken = _lpTokenAddr;
        buyTokenAddr = _buyTokenAddr;
        require(_pmAddr != address(0), "invalid _pm address");
        pmAddr = _pmAddr;
        emit LogAddrInit(idoToken, buyTokenAddr, lpToken);
        _initTimes(_idoTimes[0], _idoTimes[1], _idoTimes[2]);
        _initTokenAmount(_cAmount, _pAmount);
        _initBuyLimit(_minBuy, _maxBuy);
    }

    /* ========== VIEWS ========== */
    function getUserTokenAmountLimit() public view returns (uint256) {
        UserAccount storage accountInfo = userAccountMap[msg.sender];
        if (
            SafeMath.add(
                accountInfo.firstStakingLpAmount,
                accountInfo.secondStakingLpAmount
            ) == 0
        ) {
            return payBaseLimit;
        }
        uint256 firstPayAmount;
        uint256 secondPayAmountDiscount;
        if (accountInfo.firstStakingLpAmount > 0) {
            firstPayAmount = SafeMath.div(
                SafeMath.mul(accountInfo.firstStakingLpAmount, limitRateM),
                limitRateBase
            );
        }
        if (accountInfo.secondStakingLpAmount > 0) {
            uint256 secondPayAmountNotDiscount = SafeMath.div(
                SafeMath.mul(accountInfo.secondStakingLpAmount, limitRateM),
                limitRateBase
            );
            secondPayAmountDiscount = SafeMath.div(
                SafeMath.mul(secondPayAmountNotDiscount, discountRateM),
                discountRateBase
            );
        }
        return
            SafeMath.add(
                payBaseLimit,
                SafeMath.add(firstPayAmount, secondPayAmountDiscount)
            );
    }

    function _calcMyClaimableTokens()
        private
        view
        returns (
            uint256 lpStakingAmount,
            uint256 spendBuyToken,
            uint256 refundBuyToken,
            uint256 pmTokenClaimAmount
        )
    {
        UserAccount storage accountInfo = userAccountMap[msg.sender];
        lpStakingAmount = SafeMath.add(
            accountInfo.firstStakingLpAmount,
            accountInfo.secondStakingLpAmount
        );
        uint256 buyTokenAmount = accountInfo.stakingBuyAmount;
        uint256 mathAmount = buyTokenAmount > maxPerUser && maxPerUser > 0
            ? maxPerUser
            : buyTokenAmount;
        if (mathAmountCollected > collectTokenAmount) {
            spendBuyToken = SafeMath.div(
                SafeMath.mul(mathAmount, collectTokenAmount),
                mathAmountCollected
            );
            refundBuyToken = SafeMath.sub(
                buyTokenAmount,
                buyTokenAmount > spendBuyToken
                    ? SafeMath.add(spendBuyToken, 1)
                    : spendBuyToken
            );
            pmTokenClaimAmount = SafeMath.div(
                SafeMath.mul(spendBuyToken, pmTokenAmount),
                collectTokenAmount
            );
            return (
                lpStakingAmount,
                spendBuyToken,
                refundBuyToken,
                pmTokenClaimAmount
            );
        } else {
            spendBuyToken = mathAmount;
            pmTokenClaimAmount = SafeMath.div(
                SafeMath.mul(spendBuyToken, pmTokenAmount),
                collectTokenAmount
            );
            refundBuyToken = SafeMath.sub(buyTokenAmount, spendBuyToken);
            return (
                lpStakingAmount,
                spendBuyToken,
                refundBuyToken,
                pmTokenClaimAmount
            );
        }
    }

    function calcMyClaimableTokens()
        public
        view
        returns (
            uint256 lpStakingAmount,
            uint256 refundBuyToken,
            uint256 pmTokenClaimAmount
        )
    {
        (
            lpStakingAmount,
            ,
            refundBuyToken,
            pmTokenClaimAmount
        ) = _calcMyClaimableTokens();
        return (lpStakingAmount, refundBuyToken, pmTokenClaimAmount);
    }

    function getIdoInfo()
        external
        view
        returns (
            uint256 idoStartTime,
            uint256 idoStepSecStartTime,
            uint256 idoStepThirdStartTime,
            uint256 targetTokenAmount,
            uint256 collectTokenAmounts,
            address targetTokenAddr,
            address collectTokenAddr,
            uint256 lpStep2DiscountRateM,
            uint256 lpStep2DiscountRateBase,
            uint256 lpCollectTokenLimitRateM,
            uint256 lpCollectTokenLimitRateBase,
            uint256 minBuyTokenAmount,
            uint256 maxIdoAmount,
            uint256 buyTokenCollected,
            uint256 buyTokenMathed,
            bool idoFailed,
            bool isPaused
        )
    {
        idoStartTime = lpStartTime;
        idoStepSecStartTime = lpEndTime;
        idoStepThirdStartTime = buyEndTime;
        targetTokenAmount = pmTokenAmount;
        collectTokenAmounts = collectTokenAmount;
        targetTokenAddr = idoToken;
        collectTokenAddr = buyTokenAddr;
        lpStep2DiscountRateM = discountRateM;
        lpStep2DiscountRateBase = discountRateBase;
        lpCollectTokenLimitRateM = limitRateM;
        lpCollectTokenLimitRateBase = limitRateBase;
        minBuyTokenAmount = minBuyAmount;
        maxIdoAmount = SafeMath.div(
            SafeMath.mul(maxPerUser, pmTokenAmount),
            collectTokenAmount
        );
        buyTokenCollected = buyAmountCollected;
        buyTokenMathed = mathAmountCollected;
        idoFailed = idoFail;
        isPaused = paused();
        return (
            idoStartTime,
            idoStepSecStartTime,
            idoStepThirdStartTime,
            targetTokenAmount,
            collectTokenAmounts,
            targetTokenAddr,
            collectTokenAddr,
            lpStep2DiscountRateM,
            lpStep2DiscountRateBase,
            lpCollectTokenLimitRateM,
            lpCollectTokenLimitRateBase,
            minBuyTokenAmount,
            maxIdoAmount,
            buyTokenCollected,
            buyTokenMathed,
            idoFailed,
            isPaused
        );
    }

    function getMyStakingInfo()
        external
        view
        returns (
            uint256 myIdoStatus,
            uint256 lpStakingAmtStep1,
            uint256 lpStakingAmtStep2,
            uint256 collectStakingLimit,
            uint256 collectStakingAmt,
            uint256 targetAllotAmt,
            uint256 refundCollectAmt,
            uint256 settleTime
        )
    {
        UserAccount storage accountInfo = userAccountMap[msg.sender];
        collectStakingLimit = getUserTokenAmountLimit();
        if (block.timestamp > buyEndTime) {
            if (idoFail && accountInfo.idoStatus != 6) {
                myIdoStatus = 5;
                uint256 buyTokenBalance = balanceOfAnyToken(buyTokenAddr);
                refundCollectAmt = buyTokenBalance >
                    accountInfo.stakingBuyAmount
                    ? accountInfo.stakingBuyAmount
                    : buyTokenBalance;
            } else if (!idoFail && accountInfo.idoStatus != 4) {
                myIdoStatus = 3;
                uint256 lp_claim;
                uint256 buy_claim;
                uint256 pm_claim;
                (lp_claim, buy_claim, pm_claim) = calcMyClaimableTokens();
                targetAllotAmt = pm_claim;
                refundCollectAmt = buy_claim;
            } else {
                myIdoStatus = accountInfo.idoStatus;
            }
        } else {
            myIdoStatus = accountInfo.idoStatus;
        }
        lpStakingAmtStep1 = accountInfo.firstStakingLpAmount;
        lpStakingAmtStep2 = accountInfo.secondStakingLpAmount;
        collectStakingAmt = accountInfo.stakingBuyAmount;
        settleTime = accountInfo.settleTime;
        return (
            myIdoStatus,
            lpStakingAmtStep1,
            lpStakingAmtStep2,
            collectStakingLimit,
            collectStakingAmt,
            targetAllotAmt,
            refundCollectAmt,
            settleTime
        );
    }

    /* ========== init function ========== */

    function _initTimes(
        uint256 _lpStartTime,
        uint256 _lpEndTime,
        uint256 _buyEndTime
    ) private {
        require(block.timestamp < _lpStartTime, "time111 init error");
        require(
            block.timestamp < _lpStartTime &&
                _lpStartTime < _lpEndTime &&
                _lpEndTime < _buyEndTime,
            "time init error"
        );
        lpStartTime = _lpStartTime;
        lpEndTime = _lpEndTime;
        buyEndTime = _buyEndTime;
        emit LogTimeConfig(lpStartTime, lpEndTime, buyEndTime);
    }

    function _initTokenAmount(
        uint256 _collectTokenAmount,
        uint256 _pmTokenAmount
    ) private {
        require(
            0 < _collectTokenAmount && 0 < _pmTokenAmount,
            "invalid _collectTokenAmount or _pmTokenAmount"
        );
        collectTokenAmount = _collectTokenAmount;
        pmTokenAmount = _pmTokenAmount;
        emit LogAmountInit(collectTokenAmount, pmTokenAmount);
    }

    function _initBuyLimit(uint256 _minAmount, uint256 _maxAmount) private {
        require(
            0 < _minAmount && _minAmount < _maxAmount,
            "invalid _minAmount or _maxAmount"
        );
        minBuyAmount = _minAmount;
        maxPerUser = _maxAmount;
        emit LogBuyLintInit(minBuyAmount, maxPerUser);
    }

    /* ========== write function ========== */

    function stakingLp(
        uint256 _lpAmount
    ) external payable whenNotPaused nonReentrant {
        require(
            lpStartTime <= block.timestamp && block.timestamp <= buyEndTime,
            "LP staking time error"
        );
        require(_lpAmount > 0, "_lpAmount error");
        UserAccount storage accountInfo = userAccountMap[msg.sender];
        require(
            IERC20(lpToken).transferFrom(msg.sender, address(this), _lpAmount),
            "transfer lp fail from user"
        );
        if (block.timestamp <= lpEndTime) {
            if (accountInfo.userAddr == address(0)) {
                accountInfo.userAddr = msg.sender;
                accountInfo.firstStakingLpAmount = _lpAmount;
                accountInfo.idoStatus = 1;
            } else {
                uint256 res = accountInfo.firstStakingLpAmount + _lpAmount;
                accountInfo.firstStakingLpAmount = res;
            }
        } else {
            if (accountInfo.userAddr == address(0)) {
                accountInfo.userAddr = msg.sender;
                accountInfo.secondStakingLpAmount = _lpAmount;
                accountInfo.idoStatus = 1;
            } else {
                uint256 res = accountInfo.secondStakingLpAmount + _lpAmount;
                accountInfo.secondStakingLpAmount = res;
            }
        }
        lpAmountCollected = SafeMath.add(lpAmountCollected, _lpAmount);
    }

    function stakingCollectToken(
        uint256 _bsAmount
    ) external payable whenNotPaused nonReentrant {
        require(
            lpEndTime < block.timestamp && block.timestamp <= buyEndTime,
            "buyToken staking time error"
        );
        uint256 payLimit = getUserTokenAmountLimit();
        UserAccount storage accountInfo = userAccountMap[msg.sender];
        require(minBuyAmount <= _bsAmount, "_bsAmount to low");
        require(
            SafeMath.add(_bsAmount, accountInfo.stakingBuyAmount) <= payLimit,
            "Exceed the limit"
        );
        require(
            transferInAnyToken(buyTokenAddr, msg.sender, _bsAmount),
            "transfer token fail from user"
        );
        if (maxPerUser > 0) {
            if (accountInfo.stakingBuyAmount < maxPerUser) {
                if (accountInfo.stakingBuyAmount + _bsAmount > maxPerUser) {
                    mathAmountCollected = SafeMath.add(
                        mathAmountCollected,
                        SafeMath.sub(maxPerUser, accountInfo.stakingBuyAmount)
                    );
                } else {
                    mathAmountCollected = mathAmountCollected + _bsAmount;
                }
            }
        } else {
            mathAmountCollected = mathAmountCollected + _bsAmount;
        }
        accountInfo.stakingBuyAmount = accountInfo.stakingBuyAmount + _bsAmount;
        accountInfo.idoStatus = 2;
        buyAmountCollected = buyAmountCollected + _bsAmount;
    }

    function transferInAnyToken(
        address token,
        address from,
        uint256 amount
    ) private returns (bool success) {
        if (token == address(0)) {
            success = msg.value == amount;
        } else {
            success = IERC20(token).transferFrom(from, address(this), amount);
        }
        require(success, "transfer in fail");
        return success;
    }

    function transferOutAnyToken(
        address token,
        address to,
        uint256 amount
    ) private returns (bool success) {
        if (token == address(0)) {
            (success, ) = to.call{value: amount}(new bytes(0));
        } else {
            success = IERC20(token).transfer(to, amount);
        }
        require(success, "transfer op fail");
        return success;
    }

    function balanceOfAnyToken(
        address token
    ) private view returns (uint256 balanceOfContract) {
        if (token == address(0)) {
            balanceOfContract = address(this).balance;
        } else {
            balanceOfContract = IERC20(token).balanceOf(address(this));
        }
        return balanceOfContract;
    }

    function claim() external whenNotPaused nonReentrant onlyNotFail {
        uint256 pmBalance = IERC20(idoToken).balanceOf(address(this));
        require(buyEndTime < block.timestamp, "buy staking not end");
        UserAccount storage accountInfo = userAccountMap[msg.sender];
        require(accountInfo.claimIdoToken == 0, "is claimed");
        require(accountInfo.claimLpToken == 0, "is claimed");
        require(accountInfo.claimBuyToken == 0, "is claimed");
        uint256 lpBalance = IERC20(lpToken).balanceOf(address(this));
        uint256 buyTokenBalance = balanceOfAnyToken(buyTokenAddr);
        uint256 buyTokenAmount = accountInfo.stakingBuyAmount;
        uint256 mathAmount = buyTokenAmount > maxPerUser && maxPerUser > 0
            ? maxPerUser
            : buyTokenAmount;
        uint256 lp_claim;
        uint256 spend_buyToken;
        uint256 buy_claim;
        uint256 pm_claim;
        (
            lp_claim,
            spend_buyToken,
            buy_claim,
            pm_claim
        ) = _calcMyClaimableTokens();
        accountInfo.claimIdoToken = pm_claim;
        accountInfo.claimLpToken = lp_claim;
        accountInfo.settleTime = block.timestamp;
        accountInfo.idoStatus = 4;
        mathAmountSpend = SafeMath.add(mathAmountSpend, spend_buyToken);
        if (lpBalance >= lp_claim) {
            require(
                IERC20(lpToken).transfer(msg.sender, lp_claim),
                "transfer lp fail"
            );
        } else if (lpBalance > 0) {
            require(
                IERC20(lpToken).transfer(msg.sender, lpBalance),
                "transfer lp fail"
            );
            emit ClaimFailLpRefund(
                msg.sender,
                SafeMath.sub(lp_claim, lpBalance)
            );
        } else {
            emit ClaimFailLpRefund(msg.sender, lp_claim);
        }
        if (buyTokenAmount == 0) {
            emit LogClaimSuccess(
                msg.sender,
                buyTokenAmount,
                mathAmount,
                lp_claim,
                buy_claim,
                pm_claim
            );
            return;
        }
        if (buyTokenBalance >= buy_claim) {
            accountInfo.claimBuyToken = buy_claim;
            require(
                transferOutAnyToken(buyTokenAddr, msg.sender, buy_claim),
                "transfer buyToken fail"
            );
        } else if (buyTokenBalance > 0) {
            accountInfo.claimBuyToken = buyTokenBalance;
            require(
                transferOutAnyToken(buyTokenAddr, msg.sender, buyTokenBalance),
                "transfer buyToken fail"
            );
            emit ClaimFailBuyTokenRefund(
                msg.sender,
                SafeMath.sub(buy_claim, buyTokenBalance)
            );
        } else {
            emit ClaimFailBuyTokenRefund(msg.sender, buy_claim);
        }
        if (pmBalance >= pm_claim) {
            require(
                IERC20(idoToken).transfer(msg.sender, pm_claim),
                "transfer pmToken fail"
            );
        } else {
            revert("pmToken Insufficient");
        }
        emit LogClaimSuccess(
            msg.sender,
            buyTokenAmount,
            mathAmount,
            lp_claim,
            accountInfo.claimBuyToken,
            pm_claim
        );
    }

    function pmClaim()
        external
        whenNotPaused
        nonReentrant
        onlyNotFail
        onlyPmNotSettled
    {
        require(pmAddr != address(0), "invalid pm address");
        uint256 pmTokenBalance = IERC20(idoToken).balanceOf(address(this));
        uint256 realMathAmountCollected = mathAmountCollected >
            collectTokenAmount
            ? collectTokenAmount
            : mathAmountCollected;

        uint256 effectiveBuyAmount = SafeMath.sub(
            realMathAmountCollected,
            mathAmountSpend
        );
        uint canBuyPmAmount = SafeMath.div(
            SafeMath.mul(effectiveBuyAmount, pmTokenAmount),
            collectTokenAmount
        );
        require(pmTokenBalance > canBuyPmAmount, "pmTokenBalance Insufficient");
        require(buyEndTime < block.timestamp, "buy staking not end");
        require(
            transferOutAnyToken(buyTokenAddr, pmAddr, realMathAmountCollected),
            "withdraw buyToken fail"
        );
        uint claimPmToken = SafeMath.sub(pmTokenBalance, canBuyPmAmount);
        require(
            IERC20(idoToken).transfer(pmAddr, claimPmToken),
            "pm withdraw fail"
        );
        pmSettled = 1;
        emit LogPmSettle(mathAmountCollected, claimPmToken);
    }

    function refund() external whenNotPaused nonReentrant onlyFail {
        UserAccount storage accountInfo = userAccountMap[msg.sender];
        uint256 lpBalance = IERC20(lpToken).balanceOf(address(this));
        uint256 buyTokenBalance = balanceOfAnyToken(buyTokenAddr);
        if (lpBalance == 0 && buyTokenBalance == 0) {
            return;
        }
        uint256 lpRefundAmount = SafeMath.add(
            accountInfo.firstStakingLpAmount,
            accountInfo.secondStakingLpAmount
        );
        require(accountInfo.settleTime == 0, "is refund");
        uint256 realRefund;
        uint256 buyTokenRefund = accountInfo.stakingBuyAmount;
        uint256 bRealRefund;
        accountInfo.settleTime = block.timestamp;
        accountInfo.idoStatus = 6;
        if (lpBalance > 0) {
            if (lpBalance >= lpRefundAmount) {
                realRefund = lpRefundAmount;
            } else if (lpBalance < lpRefundAmount) {
                realRefund = lpBalance;
            }
            accountInfo.firstStakingLpAmount = 0;
            accountInfo.secondStakingLpAmount = 0;
            require(
                IERC20(lpToken).transfer(msg.sender, realRefund),
                "refund lp fail"
            );
        }
        if (buyTokenRefund == 0) {
            emit LogUserRefund(
                msg.sender,
                lpRefundAmount,
                realRefund,
                buyTokenRefund,
                bRealRefund
            );
            return;
        }
        if (buyTokenBalance > 0) {
            if (buyTokenBalance >= buyTokenRefund) {
                bRealRefund = buyTokenRefund;
            } else if (buyTokenBalance < buyTokenRefund) {
                bRealRefund = buyTokenBalance;
            }
            accountInfo.stakingBuyAmount = 0;
            require(
                transferOutAnyToken(buyTokenAddr, msg.sender, bRealRefund),
                "transfer buyToken fail"
            );
        }
        emit LogUserRefund(
            msg.sender,
            lpRefundAmount,
            realRefund,
            buyTokenRefund,
            bRealRefund
        );
    }

    function pmRefund()
        external
        whenNotPaused
        nonReentrant
        onlyFail
        onlyPmNotSettled
    {
        require(pmAddr != address(0), "invalid pm address");
        uint256 pmTokenBalance = IERC20(idoToken).balanceOf(address(this));
        require(pmTokenBalance > 0, "pmTokenBalance Insufficient");
        if (pmTokenBalance > 0) {
            require(
                IERC20(idoToken).transfer(pmAddr, pmTokenBalance),
                "transfer pmToken fail"
            );
        }
        pmSettled = 1;
        emit LogPmSettle(0, pmTokenBalance);
    }

    /* ========== admin function ========== */

    function changeIdoAmount(
        uint256 _cAmount,
        uint256 _pAmount
    ) external onlyOwner whenNotPaused {
        require(block.timestamp < lpEndTime, "commit started");
        collectTokenAmount = _cAmount;
        pmTokenAmount = _pAmount;
    }

    function fail() external onlyOwner {
        require(buyEndTime > block.timestamp, "buy staking is end");
        idoFail = true;
    }

    function pause() external onlyOwner whenNotPaused {
        _pause();
    }

    function unpause() external onlyOwner whenPaused {
        _unpause();
    }

    function changeIdoStepSecStartTime(uint256 _newTime) external onlyOwner {
        require(block.timestamp < lpEndTime, "LP staking end");
        require(
            lpEndTime < _newTime && _newTime < buyEndTime,
            "invalid _newTime"
        );
        uint256 oldTime = lpEndTime;
        lpEndTime = _newTime;
        emit UpdateLpEndTime(oldTime, _newTime);
    }

    function changeIdoStepThirdStartTime(uint256 _newTime) external onlyOwner {
        require(block.timestamp < buyEndTime, "buy staking end");
        require(
            block.timestamp < _newTime && buyEndTime < _newTime,
            "invalid _newTime"
        );
        uint256 oldTime = buyEndTime;
        buyEndTime = _newTime;
        emit UpdateBuyEndTime(oldTime, _newTime);
    }

    function changeLpCollectTokenLimitRate(
        uint256 _rateM,
        uint256 _rateBase
    ) external onlyOwner {
        require(block.timestamp < buyEndTime, "buy staking end");
        require(
            SafeMath.mul(_rateM, limitRateBase) >
                SafeMath.mul(limitRateM, _rateBase),
            "Invalid parameter"
        );
        uint256 old_rateM = limitRateM;
        uint256 old_rateBase = limitRateBase;
        limitRateM = _rateM;
        limitRateBase = _rateBase;
        emit UpdateLimitRate(old_rateM, old_rateBase, _rateM, _rateBase);
    }
}
