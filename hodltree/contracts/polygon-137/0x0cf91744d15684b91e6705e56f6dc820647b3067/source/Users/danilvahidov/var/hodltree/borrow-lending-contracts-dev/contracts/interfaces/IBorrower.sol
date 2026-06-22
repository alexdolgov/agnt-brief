// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IBorrowerActions {
    /***************************************
					ACTIONS
	****************************************/

    /**
	 * @notice Deposit tokens as collateral
	 * @param amount_ Amount of tokens to deposit
	 */
    function deposit(uint256 amount_) external;

    /**
	 * @notice Withdraw tokens from collateral
	 * @param amount_ Amount of tokens to withdraw
	 */
    function withdraw(uint256 amount_) external;
    
    /**
	 * @notice Borrow tokens if collateral is provided in advance
	 * @param amount_ Amount of tokens to borrow
	 * @return Amount of borrowed tokens
	 */
    function borrow(uint256 amount_) external returns(uint256);

    /**
	 * @notice Repay previously borrowed tokens 
	 * @param amount_ Amount of tokens to repay, must be lte user's debt
	 */
    function repay(uint256 amount_) external payable;

    /**
	 * @notice Deposit tokens and borrow tokens in one operation
	 * @param amountDeposit_ Amount of tokens to deposit
	 * @param amountBorrow_ Amount of tokens to borrow
	 * @return Amount of borrowed tokens
	 */
    function depositAndBorrow(
        uint256 amountDeposit_, 
        uint256 amountBorrow_
    ) external returns(uint256);

    /**
	 * @notice Repay tokens and withdraw tokens from collateral
	 * @param amountRepay_ Amount of tokens to repay
	 * @param amountWithdraw_ Amount of tokens to withdraw
	 */
    function repayAndWithdraw(
        uint256 amountRepay_, 
        uint256 amountWithdraw_
    ) external payable;

    /**
	 * @notice Liquidate user, which health is equal to 0
	 * @param borrower_ Address of borrower
	 * @return liquidationAmount_ Amount of collateral tokens received after liquidation
	 */
    function liquidate(
        address borrower_
    ) external payable returns(uint256 liquidationAmount_);

    /**
	 * @notice Claim rewards, accumulated from providing collateral to lending protocol (currently - AAVE)
	 * @return Amount of reward received
	 */
    function claimRewards() external returns(uint256);
}

interface IBorrowerGetters {
    /***************************************
					GETTERS
	****************************************/

    /**
	 * @notice Get information about user
	 * @param borrower_ Address of user
	 * @return balance_ balance of user
	 * @return debt_ debt of user
	 * @return availableWithdraw_ Amount of collateral tokens available for withdraw
	 * @return availableBorrow_ Amount of tokens available for borrow
	 * @return healthFactor_ Health factor of user account
	 */
    function getUserData(address borrower_) 
        external 
        view 
        returns (
            uint256 balance_, 
            uint256 debt_, 
            uint256 availableWithdraw_, 
            uint256 availableBorrow_, 
            uint256 healthFactor_
        );

    /**
	 * @notice Get available borrow for user if some tokens are deposited right now
	 * @param borrower_ Address of user
	 * @param amountDeposit_ Amount of collateral tokens to deposit (virtually)
	 * @return availableBorrow_ Amount of tokens available for withdraw
	 */
    function getAvailableBorrow(
        address borrower_, 
        uint256 amountDeposit_
    ) external view returns(uint256 availableBorrow_);

    /**
	 * @notice Get available amount of tokens for withdraw if some debt is repayed 
	 * @param borrower_ Address of user
	 * @param amountRepay_ Amount of tokens to use for repay (virtually)
	 * @return availableWithdraw_ Amount of collateral tokens available for withdraw
	 */
    function getAvailableWithdraw(
        address borrower_, 
        uint256 amountRepay_
    ) external view returns(uint256 availableWithdraw_);

    /**
	 * @notice Get amount of collateral tokens acquired after liquidation if liquidation is performed right now
	 * @param borrower_ Address of user
	 * @return liquidationAmount_ Amount of collateral tokens acquired
	 */
    function getLiquidationAmount(address borrower_) external view returns(uint256 liquidationAmount_);

    /**
	 * @notice Get price of borrowed asset
	 */
    function getPrice() external view returns(uint256);

    /**
	 * @notice Get current reward amount
	 * @return Current reward amount
	 */
    function getRewardsBalance() external view returns(uint256);
}

interface IBorrowerAdmin {
    /***************************************
					ADMIN
	****************************************/

    /**
	 * @notice Update address of lending pool
	 */
	function updateLendingPoolAddress() external;

    /**
	 * @notice Update address of aToken (in case it is changed)
	 */
	function updateaTokenAddress() external;
    
    /**
	 * @notice Change address of oracle
	 * @param feedAddress_ Address of oracle
	 */
	function updatePriceOracle(address feedAddress_) external;

    /**
	 * @notice Change address of reward receiver
	 * @param rewardsBeneficiary_ Address of reward receiver
	 */
	function updateRewardsBeneficiary(address rewardsBeneficiary_) external;

    /**
	 * @notice Get fee of lender
	 * @param lender_ Address of lender
	 * @param amount_ Amount of tokens that lender provider
	 * @return feePaid_ Amount of fee to pay
	 */
	function getFee(address lender_, uint256 amount_) external returns(uint256 feePaid_);
}

interface IBorrowerFee {
    // Helper interface for Lender.sol

    /**
	 * @notice Get fee of lender
	 * @param lender_ Address of lender
	 * @param amount_ Amount of tokens that lender provider
	 * @return feePaid_ Amount of fee to pay
	 */
    function getFee(address lender_, uint256 amount_) external returns(uint256 feePaid_);
    
    /**
     * @notice Get amount of fee paid by address of lender
     * @param lender Address of lender
     * @return Fee paid
     */
    function feePaid(address lender) external view returns(uint256);
}