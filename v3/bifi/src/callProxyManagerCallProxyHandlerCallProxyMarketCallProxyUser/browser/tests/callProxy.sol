pragma solidity 0.6;
pragma experimental ABIEncoderV2;
interface ERC20  {
	function totalSupply() view external returns (uint256);

	function balanceOf(address who) view external returns (uint256);

	function allowance(address owner, address spender) view external returns (uint256);

	function transfer(address to, uint256 value) external returns (bool);

	function approve(address spender, uint256 value) external returns (bool);

	function transferFrom(address from, address to, uint256 value) external returns (bool);
}interface marketManagerInterface  {
	function setCircuitBreaker(bool _emergency) external returns (bool);

	function getTokenHandlerInfo(uint256 handlerID) view external returns (bool, address, string memory);

	function handlerRegister(uint256 handlerID, address tokenHandlerAddr, uint256 oracleTokenID, uint256 marginCallLimit) external returns (bool);

	function applyInterestHandlers(address payable userAddr, uint256 callerID, bool allFlag) external returns (uint256, uint256);

	function liquidationApplyInterestHandlers(address payable userAddr, uint256 callerID) external returns (uint256, uint256, uint256, uint256, uint256);

	function getTokenHandlerAddr(uint256 handlerID) view external returns (address);

	function getTokenHandlerPrice(uint256 handlerID) view external returns (uint256);

	function getTokenHandlerBorrowLimit(uint256 handlerID) view external returns (uint256);

	function getTokenHandlerExist(uint256 handlerID) view external returns (bool);

	function getTokenHandlerSupport(uint256 handlerID) view external returns (bool);

	function getTokenHandlersLength() view external returns (uint256);

	function getTokenHandlerID(uint256 index) view external returns (uint256);

	function getTokenHandlerMarginCallLimit(uint256 handlerID) view external returns (uint256);

	function getUserIntraHandlerAssetWithInterest(address payable userAddr, uint256 handlerID) view external returns (uint256, uint256);

	function getUserTotalIntraAsset(address payable userAddr) view external returns (uint256, uint256);

	function getUserTotalIntraAmount(address payable userAddr, uint256 handlerID) view external returns (uint256, uint256);

	function getUserTotalIntraCreditAsset(address payable userAddr) view external returns (uint256, uint256);

	function getUserLimitIntraAsset(address payable userAddr) view external returns (uint256, uint256);

	function getUserCollateralizableAmount(address payable userAddr, uint256 handlerID) view external returns (uint256);

	function getUserExtraLiquidityAmount(address payable userAddr, uint256 handlerID) view external returns (uint256);

	function partialLiquidationUser(address payable delinquentBorrower, uint256 liquidateAmount, address payable liquidator, uint256 liquidateHandlerID, uint256 rewardHandlerID) external returns (uint256, uint256, uint256);

	function getMaxLiquidationReward(address payable delinquentBorrower, uint256 liquidateHandlerID, uint256 liquidateAmount, uint256 rewardHandlerID, uint256 rewardRatio) view external returns (uint256);

	function partialLiquidationUserReward(address payable delinquentBorrower, uint256 rewardAmount, address payable liquidator, uint256 handlerID) external returns (uint256);

	function getHandlerAmount(address payable userAddr, uint256 handlerID) view external returns (uint256, uint256);

	function setLiquidationManager(address liquidationManagerAddr) external returns (bool);

	function checkLiquidation(uint256 marginCallLimitAsset, uint256 userBorrowAsset) view external returns (bool);
}interface marketHandlerInterface  {
	function setCircuitBreaker(bool _emergency) external returns (bool);

	function migration(address payable targetContractAddr) external returns (uint256);

	function getTokenName() view external returns (string memory);

	function deposit(uint256 unifiedTokenAmount, bool allFlag) payable external returns (bool);

	function withdraw(uint256 unifiedTokenAmount, bool allFlag) external returns (bool);

	function borrow(uint256 unifiedTokenAmount, bool allFlag) external returns (bool);

	function repay(uint256 unifiedTokenAmount, bool allFlag) payable external returns (bool);

	function partialLiquidationUser(address payable delinquentBorrower, uint256 liquidateAmount, address payable liquidator, uint256 rewardHandlerID) external returns (uint256, uint256, uint256);

	function partialLiquidationUserReward(address payable delinquentBorrower, uint256 liquidationAmountWithReward, address payable liquidator) external returns (uint256);

	function getUserAmountWithInterest(address payable userAddr) view external returns (uint256, uint256);

	function getUserAmount(address payable userAddr) view external returns (uint256, uint256);

	function getMarketLiquidityLimit() view external returns (uint256);

	function getInterestEffectLimit() view external returns (uint256);

	function getSIRandBIR() view external returns (uint256, uint256);

	function getUserMaxBorrowAmount(address payable userAddr) view external returns (uint256);

	function getUserMaxWithdrawAmount(address payable userAddr) view external returns (uint256);

	function getUserMaxRepayAmount(address payable userAddr) view external returns (uint256);

	function applyInterest(address payable userAddr) external returns (uint256, uint256);

	function getERC20Addr() view external returns (address);

	function reserveDeposit(uint256 unifiedTokenAmount) payable external returns (bool);

	function reserveWithdraw(uint256 unifiedTokenAmount) external returns (bool);

	function getDepositTotalAmount() view external returns (uint256);

	function getBorrowTotalAmount() view external returns (uint256);

	function getHandlerDataStorageAddr() view external returns (address);
}contract callProxyManagerCallProxyHandlerCallProxyMarketCallProxyUser  {
	marketManagerInterface callProxyManager_marketManager;

	struct callProxyMarket_HandlerAsset {
		uint256 handlerID;
		address handlerAddr;
		uint256 tokenPrice;
		uint256 depositTotalAmount;
		uint256 borrowTotalAmount;
		uint256 depositInterestRate;
		uint256 borrowInterestRate;
	}

	struct callProxyUser_UserHandlerAsset {
		uint256 handlerID;
		address handlerAddr;
		uint256 tokenPrice;
		uint256 depositAmount;
		uint256 borrowAmount;
		uint256 depositInterestAmount;
		uint256 borrowInterestAmount;
		uint256 depositInterestRate;
		uint256 borrowInterestRate;
		uint256 borrowLimit;
		uint256 userMaxWithdrawAmount;
		uint256 userMaxBorrowAmount;
		uint256 userMaxRepayAmount;
	}

	struct callProxyUser_UserAsset {
		uint256 userTotalBorrowLimitAsset;
		uint256 userTotalMarginCallLimitAsset;
		uint256 userDepositCreditAsset;
		uint256 userBorrowCreditAsset;
	}

	constructor (address _marketManagerAddr) public
	{
		callProxyManager_marketManager = marketManagerInterface(_marketManagerAddr);
	}

	function callProxyManager_getTokenHandlerInfo(uint256 handlerID) view public returns (bool, address, string memory)
	{
		return callProxyManager_marketManager.getTokenHandlerInfo(handlerID);
	}

	function callProxyManager_getManagerAddr() view public returns (address)
	{
		return address(callProxyManager_marketManager);
	}

	function callProxyManager_getTokenPrice(uint256 handlerID) view public returns (uint256)
	{
		return callProxyManager_marketManager.getTokenHandlerPrice(handlerID);
	}

	function callProxyManager_getBorrowLimit(uint256 handlerID) view public returns (uint256)
	{
		return callProxyManager_marketManager.getTokenHandlerBorrowLimit(handlerID);
	}

	function callProxyManager_getUserTotalIntraCreditAsset(address payable userAddr) view public returns (uint256, uint256)
	{
		return callProxyManager_marketManager.getUserTotalIntraCreditAsset(userAddr);
	}

	function callProxyManager_getUserLimitIntraAsset(address payable userAddr) view public returns (uint256, uint256)
	{
		return callProxyManager_marketManager.getUserLimitIntraAsset(userAddr);
	}

	function callProxyManager_getTokenHandlersLength() view public returns (uint256)
	{
		return callProxyManager_marketManager.getTokenHandlersLength();
	}

	function callProxyManager_getTokenHandlerID(uint256 index) view public returns (uint256)
	{
		return callProxyManager_marketManager.getTokenHandlerID(index);
	}

	function callProxyHandler_getUserAmount(address tokenHandlerAddr, address payable userAddr) view public returns (uint256, uint256)
	{
		marketHandlerInterface marketHandler = marketHandlerInterface(tokenHandlerAddr);
		return marketHandler.getUserAmount(userAddr);
	}

	function callProxyHandler_getDepositTotalAmount(address tokenHandlerAddr) view public returns (uint256)
	{
		marketHandlerInterface marketHandler = marketHandlerInterface(tokenHandlerAddr);
		return marketHandler.getDepositTotalAmount();
	}

	function callProxyHandler_getBorrowTotalAmount(address tokenHandlerAddr) view public returns (uint256)
	{
		marketHandlerInterface marketHandler = marketHandlerInterface(tokenHandlerAddr);
		return marketHandler.getBorrowTotalAmount();
	}

	function callProxyHandler_getUserMaxWithdrawAmount(address tokenHandlerAddr, address payable userAddr) view public returns (uint256)
	{
		marketHandlerInterface marketHandler = marketHandlerInterface(tokenHandlerAddr);
		return marketHandler.getUserMaxWithdrawAmount(userAddr);
	}

	function callProxyHandler_getUserMaxBorrowAmount(address tokenHandlerAddr, address payable userAddr) view public returns (uint256)
	{
		marketHandlerInterface marketHandler = marketHandlerInterface(tokenHandlerAddr);
		return marketHandler.getUserMaxBorrowAmount(userAddr);
	}

	function callProxyHandler_getUserMaxRepayAmount(address tokenHandlerAddr, address payable userAddr) view public returns (uint256)
	{
		marketHandlerInterface marketHandler = marketHandlerInterface(tokenHandlerAddr);
		return marketHandler.getUserMaxRepayAmount(userAddr);
	}

	function callProxyHandler_getUserAmountWithInterest(address tokenHandlerAddr, address payable userAddr) view public returns (uint256, uint256)
	{
		marketHandlerInterface marketHandler = marketHandlerInterface(tokenHandlerAddr);
		return marketHandler.getUserAmountWithInterest(userAddr);
	}

	function callProxyHandler_getSIRandBIR(address tokenHandlerAddr) view public returns (uint256, uint256)
	{
		marketHandlerInterface marketHandler = marketHandlerInterface(tokenHandlerAddr);
		return marketHandler.getSIRandBIR();
	}

	function callProxyMarket_getMarket() view public returns (callProxyMarket_HandlerAsset[] memory)
	{
		uint256 handlerLength = callProxyManager_getTokenHandlersLength();
		callProxyMarket_HandlerAsset[] memory handlerAssets = new callProxyMarket_HandlerAsset[](handlerLength);
		for (uint256 i = 0; i < handlerLength; i++)
		{
			uint256 handlerID = i;
			bool support;
			address handlerAddr;
			string memory tokenName;
			(support, handlerAddr, tokenName) = callProxyManager_getTokenHandlerInfo(handlerID);
			if (!support)
			{
				continue;
			}
			
			handlerAssets[i].tokenPrice = callProxyManager_getTokenPrice(handlerID);
			handlerAssets[i].depositTotalAmount = callProxyHandler_getDepositTotalAmount(handlerAddr);
			handlerAssets[i].borrowTotalAmount = callProxyHandler_getBorrowTotalAmount(handlerAddr);
			(handlerAssets[i].depositInterestRate, handlerAssets[i].borrowInterestRate) = callProxyHandler_getSIRandBIR(handlerAddr);
			handlerAssets[i].handlerID = handlerID;
			handlerAssets[i].handlerAddr = handlerAddr;
		}
		
		return handlerAssets;
	}

	function callProxyUser_getUser(address payable userAddr) view public returns (callProxyUser_UserHandlerAsset[] memory, callProxyUser_UserAsset memory)
	{
		callProxyUser_UserAsset memory userAsset;
		(userAsset.userTotalBorrowLimitAsset, userAsset.userTotalMarginCallLimitAsset) = callProxyManager_getUserLimitIntraAsset(userAddr);
		(userAsset.userDepositCreditAsset, userAsset.userBorrowCreditAsset) = callProxyManager_getUserTotalIntraCreditAsset(userAddr);
		uint256 handlerLength = callProxyManager_getTokenHandlersLength();
		callProxyUser_UserHandlerAsset[] memory userHandlerAssets = new callProxyUser_UserHandlerAsset[](handlerLength);
		for (uint256 i = 0; i < handlerLength; i++)
		{
			uint256 handlerID = i;
			bool support;
			address tokenHandlerAddr;
			string memory tokenName;
			(support, tokenHandlerAddr, tokenName) = callProxyManager_getTokenHandlerInfo(handlerID);
			if (!support)
			{
				continue;
			}
			
			userHandlerAssets[i].handlerID = handlerID;
			userHandlerAssets[i].tokenPrice = callProxyManager_getTokenPrice(handlerID);
			(userHandlerAssets[i].depositAmount, userHandlerAssets[i].borrowAmount) = callProxyHandler_getUserAmount(tokenHandlerAddr, userAddr);
			(userHandlerAssets[i].depositInterestRate, userHandlerAssets[i].borrowInterestRate) = callProxyHandler_getSIRandBIR(tokenHandlerAddr);
			(userHandlerAssets[i].depositInterestAmount, userHandlerAssets[i].borrowInterestAmount) = callProxyHandler_getUserAmountWithInterest(tokenHandlerAddr, userAddr);
			if (userHandlerAssets[i].depositAmount > userHandlerAssets[i].depositInterestAmount)
			{
				userHandlerAssets[i].depositInterestAmount = 0;
			}
			else
			{
				userHandlerAssets[i].depositInterestAmount = userHandlerAssets[i].depositInterestAmount - userHandlerAssets[i].depositAmount;
			}
			
			if (userHandlerAssets[i].borrowAmount > userHandlerAssets[i].borrowInterestAmount)
			{
				userHandlerAssets[i].borrowInterestAmount = 0;
			}
			else
			{
				userHandlerAssets[i].borrowInterestAmount = userHandlerAssets[i].borrowInterestAmount - userHandlerAssets[i].borrowAmount;
			}
			
			userHandlerAssets[i].handlerAddr = tokenHandlerAddr;
			userHandlerAssets[i].borrowLimit = callProxyManager_getBorrowLimit(handlerID);
			userHandlerAssets[i].userMaxWithdrawAmount = callProxyHandler_getUserMaxWithdrawAmount(tokenHandlerAddr, userAddr);
			userHandlerAssets[i].userMaxBorrowAmount = callProxyHandler_getUserMaxBorrowAmount(tokenHandlerAddr, userAddr);
			userHandlerAssets[i].userMaxRepayAmount = callProxyHandler_getUserMaxRepayAmount(tokenHandlerAddr, userAddr);
		}
		
		return (userHandlerAssets, userAsset);
	}
}