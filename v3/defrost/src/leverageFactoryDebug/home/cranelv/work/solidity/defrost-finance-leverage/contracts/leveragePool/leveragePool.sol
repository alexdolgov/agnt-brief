// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.7.0 <0.8.0;

import "../modules/SafeMath.sol";
import "../modules/safeErc20.sol";
import "./leverageData.sol";
contract leveragePool is leverageData {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;
    mapping(address=>bool) internal approveMap;

    constructor (address multiSignature,address origin0,address origin1,
        address payable _feeAddress,address _lendingPool,address _underlying,
        address _oracle,address _swapHelper,
        uint256 _collateralRate,uint256 _liquidationPenalty,uint256 _liquidationReward)
        proxyOwner(multiSignature,origin0,origin1){
        require(_underlying != address(0), "Underlying must be ERC20 token");
        underlying = _underlying;
        lendingPool = ILendingPool(_lendingPool);
        lendingToken = IERC20(lendingPool.underlying());
        feePool = _feeAddress;
        oracle = IDSOracle(_oracle);
        _setLiquidationInfo(_collateralRate,_liquidationReward,_liquidationPenalty);
        safeApprove(_swapHelper);
        swapHelper = ISwapHelper(_swapHelper);
        WAVAX = IWAVAX(swapHelper.WAVAX());
        lendingToken.safeApprove(address(lendingPool),uint256(-1));
    }
    receive()external payable{

    }
    function safeApprove(address _swapHelper)internal{
        if (!approveMap[_swapHelper]){
            approveMap[_swapHelper] = true;
            IERC20(underlying).safeApprove(_swapHelper,uint256(-1));
            lendingToken.safeApprove(_swapHelper,uint256(-1));
        }
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
    function withdrawUnderlying(address account, uint256 amount) notHalted nonReentrant notZeroAddress(account) external {
        require(checkLiquidate(msg.sender,0,-(int256(amount))),"underlying remove overflow!");
        bytes32 userID = getUserVaultID(msg.sender);
        userVault[userID] = userVault[userID].sub(amount);
        uint256 fee = amount.mul(swapFee)/calDecimals;
        if (fee > 0){
            _redeem(feePool,underlying,fee);
            amount = amount.sub(fee);
        }
        _redeem(account,underlying,amount);
        emit WithdrawUnderlying(msg.sender,userID, account, amount);
    }
    function setLiquidationInfo(uint256 _collateralRate,uint256 _liquidationReward,uint256 _liquidationPenalty)external onlyOrigin{
        _setLiquidationInfo(_collateralRate,_liquidationReward,_liquidationPenalty);
    }
    function _setLiquidationInfo(uint256 _collateralRate,uint256 _liquidationReward,uint256 _liquidationPenalty)internal {
        require(_collateralRate >= 1e18 && _collateralRate<= 5e18 ,"Collateral Vault : collateral rate overflow!");
        require(_liquidationReward <= 5e17 && _liquidationPenalty <= 5e17 &&
            (calDecimals+_liquidationPenalty)*(calDecimals+_liquidationReward)/calDecimals <= _collateralRate,"Collateral Vault : Liquidate setting overflow!");
        collateralRate = _collateralRate;
        liquidationReward = _liquidationReward;
        liquidationPenalty = _liquidationPenalty; 
        emit SetLiquidationInfo(msg.sender,_collateralRate,_liquidationReward,_liquidationPenalty);
    }

    function leverage(address account, uint256 amount,uint amountLending,uint256 slipRate,uint256 deadLine) ensure(deadLine) external payable {
        _leverage(account,amount,amountLending,slipRate);
    }
    function repay(address account, uint256 amount,uint256 deadLine) ensure(deadLine) external payable {
        _repay(account,amount);
    }
    function sellLeverage(address account,uint256 amountUnderlying,uint256 slipRate,uint256 deadLine) ensure(deadLine) external {
        _sellLeverage(account,amountUnderlying,slipRate);
    }
    function sell(address account,address to,uint256 slipRate,uint256 deadLine) ensure(deadLine) external {
        _sell(account,to,slipRate);
    }
    /**
    * @notice Join collateral in the system
    * @dev This function locks collateral in the adapter and creates a 'representation' of
    *      the locked collateral inside the system. This adapter assumes that the collateral
    *      has 18 decimals
    * @param account Account from which we transferFrom collateral and add it in the system
    * @param amount Amount of collateral to transfer in the system
    **/
    function _repay(address account, uint256 amount) internal nonReentrant {
        amount = getPayableAmount(lendingToken,amount);
        lendingPool.repay(getUserVaultID(account),amount);
    }
    function _leverage(address account, uint256 amount,uint amountLending,uint256 slipRate) internal notHalted nonReentrant {
        amount = getPayableAmount(lendingToken,amount);
        bytes32 vaultID = getUserVaultID(account);
        lendingPool.borrow(vaultID,amountLending);
        uint256 amountUnderlying = swapTokensOnDex(address(lendingToken),underlying,amountLending.add(amount),slipRate);
        userVault[vaultID] = userVault[vaultID].add(amountUnderlying);
        require(checkLiquidate(account,0,0),"leveragePool : under liquidate!");
        emit Leverage(msg.sender, vaultID, amount,amountLending,amountUnderlying);
    }
    function _leverage2(address account, uint256 amount,uint amountLending,uint256 slipRate) internal notHalted nonReentrant {
        amount = getPayableAmount(IERC20(underlying),amount);
        bytes32 vaultID = getUserVaultID(account);
        lendingPool.borrow(vaultID,amountLending);
        uint256 amountUnderlying = swapTokensOnDex(address(lendingToken),underlying,amountLending,slipRate);
        userVault[vaultID] = userVault[vaultID].add(amountUnderlying).add(amount);
        require(checkLiquidate(account,0,0),"leveragePool : under liquidate!");
        emit Leverage(msg.sender, vaultID, amount,amountLending,amountUnderlying);
    }
    function _sellLeverage(address account,uint256 amountUnderlying,uint256 slipRate) internal nonReentrant {
        bytes32 vaultID = getUserVaultID(account);
        require(userVault[vaultID]>=amountUnderlying,"User vault is insufficient!");
        uint256 amount = swapTokensOnDex(underlying,address(lendingToken),amountUnderlying,slipRate);
        lendingPool.repay(vaultID,amount);
        userVault[vaultID] = userVault[vaultID].sub(amountUnderlying);
        require(checkLiquidate(account,0,0),"leveragePool : under liquidate!");
    }
    function _sell(address account,address to,uint256 slipRate) internal nonReentrant{
        bytes32 vaultID = getUserVaultID(account);
        uint256 preBalance = lendingToken.balanceOf(address(this));
        swapTokensOnDex(underlying,address(lendingToken),userVault[vaultID],slipRate);
        userVault[vaultID] = 0;
        lendingPool.repay(vaultID,uint256(-1));
        uint256 curBalance = lendingToken.balanceOf(address(this));
        _redeem(to,address(lendingToken),curBalance.sub(preBalance));
    }
    function _sell2(address account,address to,uint256 slipRate) internal nonReentrant{
        bytes32 vaultID = getUserVaultID(account);
        uint256 loan =lendingPool.loan(vaultID);
        uint256 sellAmount = swapTokensOnDex_exactOut(underlying,address(lendingToken),loan,slipRate);
        _redeem(to,underlying,userVault[vaultID].sub(sellAmount));
        userVault[vaultID] = 0;
        lendingPool.repay(vaultID,uint256(-1));
    }
    // User Vault ID is guaranteed to be unique through hash (contract address,lending token,underlying token,user address)
    function getUserVaultID(address account)internal view returns (bytes32){
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
    function canLiquidateVault( bytes32 userID) public view returns (bool){
        uint256 loan =lendingPool.loan(userID);
        (uint256 underlyingPrice,uint256 lendingPrice) = getPrices();
        uint256 allUnderlying = userVault[userID].mul(underlyingPrice);
        return loan.mul(lendingPrice).mul(collateralRate)/calDecimals>allUnderlying;
    }
    //Check if the user's vault can be liquidated while user's operation
    function checkLiquidate(address account,int256 newLending,int256 newUnderlying) public view returns(bool){
        bytes32 userID = getUserVaultID(account);
        uint256 loan =lendingPool.loan(userID);
        (uint256 underlyingPrice,uint256 lendingPrice) = getPrices();
        uint256 allUnderlying = newUnderlying >= 0 ? userVault[userID].add(uint256(newUnderlying)) : userVault[userID].sub(uint256(-newUnderlying));
        allUnderlying = allUnderlying.mul(underlyingPrice);
        loan = newLending >= 0 ? loan.add(uint256(newLending)) : loan.sub(uint256(-newLending));
        return loan.mul(lendingPrice).mul(collateralRate)/calDecimals<allUnderlying;
    }
    //Calculate liquidation information
    //returns liquidation is liquidatable, penalty,repay loan, and the amount paid by user
    function liquidateTest(uint256 allUnderlying,uint256 loan,uint256 amount) 
        internal view returns(bool,uint256,uint256,uint256){
        (uint256 underlyingPrice,uint256 lendingPrice) = getPrices();
        bool bLiquidate = loan.mul(lendingPrice).mul(collateralRate)/calDecimals<allUnderlying.mul(underlyingPrice);
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
            repayLoan = amount.mul(calDecimals)/liquidationPenalty;
            penalty = amount.sub(repayLoan);
            require(loan >= repayLoan,"Input amount is overflow!");
        }else{
            penalty = loan.mul(liquidationPenalty)/calDecimals;
            repayLoan = loan;
            amount = repayLoan.add(penalty);
        }
        return (penalty,repayLoan,amount);
    }
    //Liquidate accounts vault. the amount paid by user. Partial liquidation is supported.
    function liquidate(bytes32 userID,uint256 amount) nonReentrant payable external{
        (bool bLiquidate,uint256 penalty,uint256 repayLoan,uint256 _payback) = 
            liquidateTest(userVault[userID],lendingPool.loan(userID),amount);
        require(bLiquidate,"liquidation check error!");
        uint256 payAmount = repayLoan.add(penalty);
        amount = getPayableAmount(lendingToken,payAmount);
        if (amount > payAmount){
             _redeem(msg.sender,address(lendingToken),amount.sub(payAmount));
        }
        lendingPool.repay(userID,repayLoan);
        if (penalty > 0){
            _redeem(feePool,address(lendingToken),penalty);
        }
        userVault[userID] = userVault[userID].sub(_payback);
        _redeem(msg.sender,underlying,_payback);
        emit Liquidate(msg.sender,userID,address(lendingToken),penalty.add(repayLoan),underlying,_payback);  
    }
    modifier notZeroAddress(address inputAddress) {
        require(inputAddress != address(0), "collateralVault : input zero address");
        _;
    }
    modifier ensure(uint256 deadline) {
        require(deadline >= block.timestamp, 'leveragedPool: EXPIRED');
        _;
    }
    // Get the amount paid by user. AVAX will be deposited to WAVAX immediately.
    function getPayableAmount(IERC20 inputToken,uint256 amount)internal returns(uint256){
        if(address(inputToken) == address(WAVAX)){
            WAVAX.deposit{value:msg.value}();
            amount = msg.value;
        }else{
            inputToken.safeTransferFrom(msg.sender, address(this), amount);
        }
        return amount;
    }
    // Set Swap fee. (scaled by 1e18)
    function setSwapFee(uint256 _swapFee) OwnerOrOrigin external{
        require(_swapFee<5e16,"Leverage fee is beyond the limit");
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
        return swapHelper.swapExactTokens_oracle(token0,token1,balance,slipRate,address(this));
    }
     // Exchange exact amount by swaphelper. Swap Fee will be transfer to feePool simultaneously.
    function swapTokensOnDex_exactOut(address token0,address token1,uint256 amountOut,uint256 slipRate)internal returns (uint256){
        if (amountOut == 0){
            return 0;
        }
        uint256 preBalance = IERC20(token0).balanceOf(address(this));
        swapHelper.swapToken_exactOut_oracle(token0,token1,amountOut,slipRate,address(this));
        uint256 balance = preBalance.sub(IERC20(token0).balanceOf(address(this)));
        uint256 fee = balance.mul(swapFee)/calDecimals;
        if (fee > 0){
            _redeem(feePool,token0,fee);
        }
        return balance;
    }

}