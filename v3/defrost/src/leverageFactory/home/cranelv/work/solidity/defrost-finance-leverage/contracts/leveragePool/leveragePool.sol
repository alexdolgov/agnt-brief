// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.7.0 <0.8.0;

import "../modules/SafeMath.sol";
import "../modules/timeLockSetting.sol";
import "../modules/safeErc20.sol";
import "./leverageData.sol";
contract leveragePool is leverageData,timeLockSetting {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    constructor (address multiSignature,address origin0,address origin1,
        address payable _feeAddress,address _lendingPool,address _underlying,
        address _oracle,address _swapHelper,
        uint256 _collateralRate,uint256 _liquidationPenalty,uint256 _liquidationReward)
        proxyOwner(multiSignature,origin0,origin1){
        require(_underlying != address(0), "Use WAVAX instand");
        underlying = _underlying;
        lendingPool = ILendingPool(_lendingPool);
        lendingToken = IERC20(lendingPool.asset());
        feePool = _feeAddress;
        oracle = IDSOracle(_oracle);
        _setLiquidationInfo(_collateralRate,_liquidationReward,_liquidationPenalty);
        IERC20(_underlying).safeApprove(_swapHelper,uint256(-1));
        lendingToken.safeApprove(_swapHelper,uint256(-1));
        swapHelper = ISwapHelper(_swapHelper);
        WAVAX = IWAVAX(swapHelper.WAVAX());
        lendingToken.safeApprove(address(lendingPool),uint256(-1));
    }
    receive()external payable{

    }
    function setSwapHelper(address _swapHelper) external onlyOrigin notZeroAddress(_swapHelper) {
        require(_swapHelper != address(swapHelper),"SwapHelper set error!");
        _set(swapHelperKey,uint256(_swapHelper));
    }
    function acceptSwapHelper() external onlyOrigin {
        swapHelper = ISwapHelper(address(_accept(swapHelperKey)));
        address _swapHelper = address(swapHelper);
        if (IERC20(underlying).allowance(address(this), _swapHelper) == 0){
            IERC20(underlying).safeApprove(_swapHelper,uint256(-1));
        }
        if (lendingToken.allowance(address(this), _swapHelper) == 0){
            lendingToken.safeApprove(_swapHelper,uint256(-1));
        }
    }
    function setOracle(address _oracle) external onlyOrigin notZeroAddress(_oracle){
        require(_oracle != address(oracle),"oracle set error!");
        _set(oracleKey,uint256(_oracle));
    }
    function acceptOracle() external onlyOrigin{
        oracle = IDSOracle(address(_accept(oracleKey)));
    }
    function setLiquidationInfo(uint256 _collateralRate,uint256 _liquidationReward,uint256 _liquidationPenalty)external onlyOrigin{
        _setLiquidationInfo(_collateralRate,_liquidationReward,_liquidationPenalty);
    }
    function _setLiquidationInfo(uint256 _collateralRate,uint256 _liquidationReward,uint256 _liquidationPenalty)internal {
        require(_collateralRate >= 1e18 && _collateralRate<= 5e18 ,"Collateral rate overflow!");
        require(_liquidationReward <= 5e17 && _liquidationPenalty <= 5e17 &&
            (calDecimals.add(_liquidationPenalty)).mul(calDecimals.add(_liquidationReward))/calDecimals <= _collateralRate,"Liquidate setting overflow!");
        collateralRate = _collateralRate;
        liquidationReward = _liquidationReward;
        liquidationPenalty = _liquidationPenalty; 
        emit SetLiquidationInfo(msg.sender,_collateralRate,_liquidationReward,_liquidationPenalty);
    }
    function getUserInfo(address account)external view returns (uint256,uint256){
        bytes32 userID = getUserVaultID(account);
        return (lendingPool.loan(userID),userVault[userID]);
    }
    function getUnderlingLeft(address account) external view returns (uint256){
        bytes32 userID = getUserVaultID(account);
        uint256 loan =lendingPool.loan(userID);
        (uint256 underlyingPrice,uint256 lendingPrice) = getPrices();
        uint256 allUnderlying = userVault[userID].mul(underlyingPrice);
        uint256 loadUSD = loan.mul(lendingPrice).mul(collateralRate)/calDecimals;
        if (allUnderlying > loadUSD){
            return (allUnderlying - loadUSD)/underlyingPrice;
        }
        return 0;
    }
    function _addUnderlying(address account,bytes32 userID, uint256 amount) internal {
        if (amount > 0){
            userVault[userID] = userVault[userID].add(amount);
            emit AddUnderlying(msg.sender,account,userID,amount);
        }
    }
    function _withdrawUnderlying(bytes32 userID, address account,uint256 amount) internal {
        require(_checkLiquidate(userID,0,-(int256(amount))),"underlying remove overflow!");
        userVault[userID] = userVault[userID].sub(amount);
        uint256 fee = amount.mul(swapFee)/calDecimals;
        if (fee > 0){
            _redeem(feePool,underlying,fee);
            amount = amount.sub(fee);
        }
        _redeem(account,underlying,amount);
        emit WithdrawUnderlying(msg.sender,userID, account, amount);
        setUserLeverageInfo(userID,uint256(-1));
    }
    function _buyLeverage(address account,bytes32 vaultID, uint256 amount,uint amountLending,uint256 slipRate) internal {
        if (amountLending>0){
            lendingPool.borrow(vaultID,amountLending);
        }
        uint256 amountAll = amountLending.add(amount);
        if (amountAll> 0){
            uint256 amountUnderlying = swapTokensOnDex(address(lendingToken),underlying,amountAll,slipRate);
            userVault[vaultID] = userVault[vaultID].add(amountUnderlying);
            require(_checkLiquidate(vaultID,0,0),"Under liquidate!");
            emit BuyLeverage(msg.sender, account,vaultID, amount,amountLending,amountUnderlying);
        }
    }
    function _sellLeverage(bytes32 vaultID,uint256 amountLoan,uint256 slipRate) internal {
        uint256 amount = swapTokensOnDex_exactOut(underlying,address(lendingToken),amountLoan,slipRate);
        lendingPool.repay(vaultID,amountLoan);
        userVault[vaultID] = userVault[vaultID].sub(amount);
        require(_checkLiquidate(vaultID,0,0),"Under liquidate!");
        emit SellLeverage(msg.sender,vaultID,amount,amountLoan);
    }
    function _leverage(bytes32 vaultID,uint256 amount,uint256 leverageRate,uint256 slipRate) validLeverageRate(leverageRate) internal {
        (uint256 borrow,uint256 payment) = _getLeverageAmount(vaultID,amount,leverageRate);
        if(payment>0){
            if (payment>amount){
                if(amount>0){
                    lendingPool.repay(vaultID,amount);
                }
                _sellLeverage(vaultID,payment.sub(amount),slipRate);
            }else{
                lendingPool.repay(vaultID,payment);
                _buyLeverage(msg.sender,vaultID,amount.sub(payment),0,slipRate);
            }
        }else{
            _buyLeverage(msg.sender,vaultID,amount,borrow,slipRate);
        }
        setUserLeverageInfo(vaultID,leverageRate);
    }
    function leverageETH(uint256 leverageRate,uint256 slipRate,uint256 deadLine)  notHalted nonReentrant ensure(deadLine) AVAXDeposit(address(lendingToken)) external payable {
        _leverage(getUserVaultID(msg.sender),msg.value,leverageRate,slipRate);
    }
    function leverage(uint256 amount,uint256 leverageRate,uint256 slipRate,uint256 deadLine)  notHalted nonReentrant ensure(deadLine) external {
        lendingToken.safeTransferFrom(msg.sender, address(this),amount);
        _leverage(getUserVaultID(msg.sender),amount,leverageRate,slipRate);
    }
    function leverageUnderlyingETH(uint256 leverageRate,uint256 slipRate,uint256 deadLine)  notHalted nonReentrant ensure(deadLine) 
        AVAXDeposit(underlying) external payable {
        bytes32 vaultID = getUserVaultID(msg.sender);
        _addUnderlying(msg.sender,vaultID,msg.value);
        _leverage(vaultID,0,leverageRate,slipRate);
    }
    function leverageUnderlying(uint256 amount,uint256 leverageRate,uint256 slipRate,uint256 deadLine)  notHalted nonReentrant ensure(deadLine) external {
        IERC20(underlying).safeTransferFrom(msg.sender, address(this),amount);
        bytes32 vaultID = getUserVaultID(msg.sender);
        _addUnderlying(msg.sender,vaultID,amount);
        _leverage(vaultID,0,leverageRate,slipRate);
    }
    function buyLeverageETH(address account, uint256 amountLending,uint256 slipRate,uint256 deadLine)  notHalted nonReentrant 
        AVAXDeposit(address(lendingToken)) ensure(deadLine) external payable {
        bytes32 vaultID = getUserVaultID(account);
        _buyLeverage(account,vaultID,msg.value,amountLending,slipRate);
        setUserLeverageInfo(vaultID,uint256(-1));
    }
    function buyLeverage(address account, uint256 amount,uint256 amountLending,uint256 slipRate,uint256 deadLine)  notHalted nonReentrant ensure(deadLine) external {
        lendingToken.safeTransferFrom(msg.sender, address(this),amount);
        bytes32 vaultID = getUserVaultID(account);
        _buyLeverage(account,vaultID,amount,amountLending,slipRate);
        setUserLeverageInfo(vaultID,uint256(-1));
    }
    function addUnderlying(address account, uint256 amount)notHalted nonReentrant external {
        IERC20(underlying).safeTransferFrom(msg.sender, address(this),amount);
        bytes32 vaultID = getUserVaultID(account);
        _addUnderlying(account,vaultID,amount);
        setUserLeverageInfo(vaultID,uint256(-1));
    }
    function addUnderlyingETH(address account)notHalted nonReentrant AVAXDeposit(underlying) external payable {
        bytes32 vaultID = getUserVaultID(account);
        _addUnderlying(account,vaultID,msg.value);
        setUserLeverageInfo(vaultID,uint256(-1));
    }
    function withdrawUnderlying(address account, uint256 amount) notHalted nonReentrant external {
        _withdrawUnderlying(getUserVaultID(msg.sender),account,amount);
    }
    function buyleverageUnderlyingETH(address account,uint256 amountLending,uint256 slipRate,uint256 deadLine) notHalted nonReentrant
        AVAXDeposit(underlying) ensure(deadLine) external payable {
        bytes32 vaultID = getUserVaultID(account);
        _addUnderlying(account,vaultID,msg.value);
        _buyLeverage(account,vaultID,0,amountLending,slipRate);
        setUserLeverageInfo(vaultID,uint256(-1));
    }

    function buyleverageUnderlying(address account, uint256 amount,uint256 amountLending,uint256 slipRate,uint256 deadLine) ensure(deadLine) external {
        IERC20(underlying).safeTransferFrom(msg.sender, address(this),amount);
        bytes32 vaultID = getUserVaultID(account);
        _addUnderlying(account,vaultID,amount);
        _buyLeverage(account,vaultID,0,amountLending,slipRate);
        setUserLeverageInfo(vaultID,uint256(-1));
    }
    function sellLeverage(uint256 amountLoan,uint256 slipRate,uint256 deadLine) ensure(deadLine) nonReentrant external {
        bytes32 vaultID = getUserVaultID(msg.sender);
        if (amountLoan == uint256(-1)){
            amountLoan = lendingPool.loan(vaultID);
        }
        _sellLeverage(vaultID,amountLoan,slipRate);
        setUserLeverageInfo(vaultID,uint256(-1));
    }
    function closeLeverage(address to,uint256 slipRate,uint256 deadLine) ensure(deadLine) nonReentrant external {
        bytes32 vaultID = getUserVaultID(msg.sender);
        uint256 loan =lendingPool.loan(vaultID);
        _sellLeverage(vaultID,loan,slipRate);
        _withdrawUnderlying(vaultID,to,userVault[vaultID]);
    }
    function repayETH(address account) external  AVAXDeposit(address(lendingToken)) payable {
        bytes32 vaultID = getUserVaultID(account);
        lendingPool.repay(vaultID,msg.value);
        setUserLeverageInfo(vaultID,uint256(-1));
    }
    function repay(address account, uint256 amount) external {
        bytes32 vaultID = getUserVaultID(account);
        lendingToken.safeTransferFrom(msg.sender, address(this), amount);
        lendingPool.repay(vaultID,amount);
        setUserLeverageInfo(vaultID,uint256(-1));
    }
    function getLeverageAmount(address account,uint256 inputAsset,uint256 leverageRate)external view 
        returns (uint256 borrow,uint256 payment,uint256 newLoan,uint256 newUnderlying){
        bytes32 userID = getUserVaultID(account);
        (borrow,payment) = _getLeverageAmount(userID,inputAsset,leverageRate);
        newLoan =lendingPool.loan(userID);
        newUnderlying = userVault[userID];
        if(payment>0){
            newLoan = newLoan.sub(payment);
            if (payment>inputAsset){
                uint256 amountIn = swapHelper.getAmountIn(underlying,address(lendingToken),payment.sub(inputAsset));
                newUnderlying = newUnderlying.sub(amountIn.mul(calDecimals.add(swapFee))/calDecimals);
            }else if(inputAsset>payment){
                inputAsset = inputAsset.sub(payment).mul(calDecimals.sub(swapFee))/calDecimals;
                uint256 amountOut = swapHelper.getAmountOut(address(lendingToken),underlying,inputAsset);
                newUnderlying = newUnderlying.add(amountOut);
            }
        }else if(borrow>0 || inputAsset>0){
            newLoan = newLoan.add(borrow);
            inputAsset = inputAsset.add(borrow).mul(calDecimals.sub(swapFee))/calDecimals;
            uint256 amountOut = swapHelper.getAmountOut(address(lendingToken),underlying,inputAsset);
            newUnderlying = newUnderlying.add(amountOut);
        }
    }
    function _getLeverageAmount(bytes32 userID,uint256 inputAsset,uint256 leverageRate)internal view returns (uint256 borrow,uint256 payment){
        uint256 loan =lendingPool.loan(userID);
        (uint256 underlyingPrice,uint256 lendingPrice) = getPrices();
        uint256 allUnderlying = userVault[userID].mul(underlyingPrice).add(inputAsset.mul(lendingPrice));
        uint256 allLoan = loan.mul(lendingPrice);
        allUnderlying = allUnderlying.sub(allLoan).mul(leverageRate.sub(calDecimals))/calDecimals;
        if(allUnderlying>allLoan){
            borrow = (allUnderlying-allLoan)/lendingPrice;
        }else{
            payment = (allLoan - allUnderlying)/lendingPrice;
        }
    }

    // User Vault ID is guaranteed to be unique through hash (contract address,lending token,underlying token,user address)
    function getUserVaultID(address account)public view returns (bytes32){
        return keccak256(abi.encode(address(this),address(lendingToken),underlying,account));
    }
    // get underlying price and lending pirce from orcle
    function getPrices()internal view returns(uint256,uint256){
        (bool tol0,uint256 underlyingPrice) = oracle.getPriceInfo(underlying);
        (bool tol1,uint256 lendingPrice) = oracle.getPriceInfo(address(lendingToken));
         require(tol0 && tol1,"Oracle price is abnormal!");
         return (underlyingPrice,lendingPrice);
    }
    //Check if the user's vault can be liquidated
    function canLiquidate(address account) external view returns (bool){
        return canLiquidateVault(getUserVaultID(account));
    }
    function canLiquidateVault(bytes32 userID) public view returns (bool){
        (uint256 underlyingPrice,uint256 lendingPrice) = getPrices();
        return lendingPool.loan(userID).mul(lendingPrice).mul(collateralRate)/calDecimals>userVault[userID].mul(underlyingPrice);
    }
    //Check if the user's vault can be liquidated while user's operation
    function checkLiquidate(address account,int256 newLending,int256 newUnderlying) external view returns(bool){
        return _checkLiquidate(getUserVaultID(account),newLending,newUnderlying);
    }
    function _checkLiquidate(bytes32 userID,int256 newLending,int256 newUnderlying) internal view returns(bool){
        uint256 loan =lendingPool.loan(userID);
        (uint256 underlyingPrice,uint256 lendingPrice) = getPrices();
        uint256 allUnderlying = newUnderlying >= 0 ? userVault[userID].add(uint256(newUnderlying)) : userVault[userID].sub(uint256(-newUnderlying));
        allUnderlying = allUnderlying.mul(underlyingPrice);
        loan = newLending >= 0 ? loan.add(uint256(newLending)) : loan.sub(uint256(-newLending));
        return loan.mul(lendingPrice).mul(collateralRate)/calDecimals<=allUnderlying;
    } 
    //Calculate liquidation information
    //returns liquidation is liquidatable, penalty,repay loan, and the amount paid by user
    function liquidateTest(uint256 allUnderlying,uint256 loan,uint256 amount) 
        internal view returns(bool,uint256,uint256,uint256){
        (uint256 underlyingPrice,uint256 lendingPrice) = getPrices();
        bool bLiquidate = loan.mul(lendingPrice).mul(collateralRate)/calDecimals>allUnderlying.mul(underlyingPrice);
        if (bLiquidate){
            uint256 penalty;
            uint256 repayLoan;
            (penalty,repayLoan,amount) = liquidateAmount(amount,loan);
            amount = amount.mul(lendingPrice).mul(calDecimals.add(liquidationReward))/underlyingPrice/calDecimals;
            allUnderlying = allUnderlying.mul(repayLoan)/loan;
            amount = amount <= allUnderlying ? amount : allUnderlying;
            return (bLiquidate,penalty,repayLoan,amount);
        }
        return (bLiquidate,0,0,0);
    }
    //Calculate liquidation amount. returns liquidation penalty,repay loan, and the amount paid by user
    function liquidateAmount(uint256 amount,uint256 loan)internal view returns(uint256,uint256,uint256){
        if (amount == 0){
            return (0,0,0);
        }
        uint256 penalty;
        uint256 repayLoan;
        if (amount != uint256(-1)){
            repayLoan = amount.mul(calDecimals)/(calDecimals.add(liquidationPenalty));
            penalty = amount.sub(repayLoan);
            require(loan >= repayLoan,"Input amount overflow!");
        }else{
            penalty = loan.mul(liquidationPenalty)/calDecimals;
            repayLoan = loan;
            amount = repayLoan.add(penalty);
        }
        return (penalty,repayLoan,amount);
    }
    function liquidateETH(address account,uint256 amount)nonReentrant AVAXDeposit(address(lendingToken)) external payable {
        bytes32 userID = getUserVaultID(account);
        (bool bLiquidate,uint256 penalty,uint256 repayLoan,uint256 _payback) = 
            liquidateTest(userVault[userID],lendingPool.loan(userID),amount);
        require(bLiquidate,"liquidation check error!");
        uint256 payAmount = repayLoan.add(penalty);
        require(msg.value>=payAmount,"insufficient value!");
        if(msg.value>payAmount){
            _redeem(msg.sender,address(lendingToken),msg.value.sub(payAmount));
        }
        _liquidate(userID,penalty,repayLoan,_payback);
        emit Liquidate(msg.sender,account,userID,address(lendingToken),penalty.add(repayLoan),underlying,_payback);
        setUserLeverageInfo(userID,uint256(-1));
    }
    function liquidate(address account,uint256 amount)nonReentrant external {
        bytes32 userID = getUserVaultID(account);
        (bool bLiquidate,uint256 penalty,uint256 repayLoan,uint256 _payback) = 
            liquidateTest(userVault[userID],lendingPool.loan(userID),amount);
        require(bLiquidate,"liquidation check error!");
        uint256 payAmount = repayLoan.add(penalty);
        lendingToken.safeTransferFrom(msg.sender, address(this), payAmount);
        _liquidate(userID,penalty,repayLoan,_payback);
        emit Liquidate(msg.sender,account,userID,address(lendingToken),penalty.add(repayLoan),underlying,_payback);  
        setUserLeverageInfo(userID,uint256(-1));
    }
    //Liquidate accounts vault. the amount paid by user. Partial liquidation is supported.
    function _liquidate(bytes32 userID,uint256 penalty,uint256 repayLoan,uint256 _payback) internal{
        lendingPool.repay(userID,repayLoan);
        if (penalty > 0){
            _redeem(feePool,address(lendingToken),penalty);
        }
        userVault[userID] = userVault[userID].sub(_payback);
        _redeem(msg.sender,underlying,_payback);
    }
    modifier validLeverageRate(uint256 leverageRate) {
        require(leverageRate >= 1e18, "Invalid leverage rate");
        _;
    }
    modifier notZeroAddress(address inputAddress) {
        require(inputAddress != address(0), "input zero address");
        _;
    }
    modifier ensure(uint256 deadline) {
        require(deadline >= block.timestamp, 'leveragedPool: EXPIRED');
        _;
    }
    // Set Swap fee. (scaled by 1e18)
    function setSwapFee(uint256 _swapFee) OwnerOrOrigin external{
        require(_swapFee<5e16,"Leverage fee overflow");
        swapFee = _swapFee;
        emit SetSwapFee(msg.sender,_swapFee);
    }
    //safe transfer token to account. WAVAX will be withdraw to AVAX immediately.
    function _redeem(address account,address token,uint256 _amount)internal{
        if(token == address(0) || token == address(WAVAX)){
            WAVAX.withdraw(_amount);
            _safeTransferETH(account, _amount);
        }else{
            IERC20(token).safeTransfer(account,_amount);
        }
    }
    //safe transfer AVAX.
    function _safeTransferETH(address to, uint256 value) internal {
        (bool success, ) = to.call{value: value}(new bytes(0));
        require(success, 'ETH_TRANSFER_FAILED');
    }
    // Exchange by swaphelper. Swap Fee will be transfer to feePool simultaneously.
    function swapTokensOnDex(address token0,address token1,uint256 balance,uint256 slipRate)internal returns (uint256){
        if(balance == 0){
            return 0;
        }
        uint256 fee = balance.mul(swapFee)/calDecimals;
        if (fee > 0){
            _redeem(feePool,token0,fee);
            balance = balance.sub(fee);
        }
        if(token0 == token1){
            return balance;
        }
        
        uint256 amountIn = swapHelper.swapExactTokens_oracle(token0,token1,balance,slipRate,address(this));
        emit SwapOnDex(msg.sender,token0,token1,balance,amountIn);
        return amountIn;
    }
     // Exchange exact amount by swaphelper. Swap Fee will be transfer to feePool simultaneously.
    function swapTokensOnDex_exactOut(address token0,address token1,uint256 amountOut,uint256 slipRate)internal returns (uint256){
        if (amountOut == 0){
            return 0;
        }
        uint256 amountIn = swapHelper.swapToken_exactOut_oracle(token0,token1,amountOut,slipRate,address(this));
        uint256 amountAll = amountIn.mul(calDecimals)/(calDecimals.sub(swapFee));
        if (amountAll > amountIn){
            _redeem(feePool,token0,amountAll-amountIn);
        }
        emit SwapOnDex(msg.sender,token0,token1,amountIn,amountOut);
        return amountAll;
    }
    function redeemFee(address token,uint256 _fee)internal{
        if (_fee > 0){
            _redeem(feePool,token,_fee);
            emit RedeemFee(msg.sender,feePool,token,_fee);
        }
    }
    modifier AVAXDeposit(address asset) {
        require(address(asset) == address(WAVAX), "Not WAVAX token");
        WAVAX.deposit{value: msg.value}();
        _;
    }
    function getUserLeverageInfo(address account) external view returns (uint256,uint256,uint256,uint256,uint256){
        bytes32 userID = getUserVaultID(account);
        (uint256 underlyingPrice,uint256 lendingPrice) = getPrices();
        uint256 allCollateral = userVault[userID].mul(underlyingPrice)/lendingPrice;
        uint256 principal = allCollateral.sub(lendingPool.loan(userID));
        uint256 leverageRate = userLeverageInfo[userID].leverageRate;
        if(leverageRate == 0){
            leverageRate = calDecimals;
        }
        return (uint256(userLeverageInfo[userID].lendingPrice)*1e8,
        uint256(userLeverageInfo[userID].underlyingPrice)*1e8,
        leverageRate,userLeverageInfo[userID].principal,principal);
    }
    function setUserLeverageInfo(bytes32 userID,uint256 leverageRate)internal{
        (uint256 underlyingPrice,uint256 lendingPrice) = getPrices();
        uint256 allCollateral = userVault[userID].mul(underlyingPrice)/lendingPrice;
        uint256 principal = allCollateral.sub(lendingPool.loan(userID));
        if (leverageRate == uint256(-1)){
            if (principal == 0){
                leverageRate = calDecimals;
            }else{
                leverageRate = allCollateral.mul(calDecimals)/principal;
            }
        }
        userLeverageInfo[userID]  = leverageInfo(toUint128(lendingPrice/1e8),toUint128(underlyingPrice/1e8),
            toUint128(leverageRate),toUint128(principal));
    }
    function toUint128(uint256 value) internal pure returns (uint128) {
        require(value < 2**128, "Greater than 128bits");
        return uint128(value);
    }
}
