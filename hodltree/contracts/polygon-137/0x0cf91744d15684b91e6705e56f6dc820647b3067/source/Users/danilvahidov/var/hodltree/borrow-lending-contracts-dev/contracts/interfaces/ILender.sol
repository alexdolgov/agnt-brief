// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ILenderActions {
    /***************************************
					ACTIONS
	****************************************/

    /**
	 * @notice Deposit wETH to contract for obtaining fees
	 * @param amount_ Amount of tokens to deposit
	 */
    function deposit(uint256 amount_) external payable;
    
    /**
	 * @notice Withdraw wETH from contract
	 * @param amount_ Amount of wETH to withdraw
	 */
    function withdraw(uint256 amount_) external;

    /**
	 * @notice Get available fee
	 * @param lender_ Address of lender
	 * @param borrower_ Address of borrower
	 * @param amount_ Amount of tokens borrowed
	 * @param signature_ Signature attached to message
	 */
    function getFee(
        address lender_, 
        address borrower_, 
        uint256 amount_, 
        bytes calldata signature_
    ) external;
}

interface ILenderGetters {
    /***************************************
					GETTERS
	****************************************/

    /**
	 * @notice Get fee paid
	 * @param lender_ Address of lender
	 * @param borrower_ Address of borrower
	 */
    function getFeePaid(address lender_, address borrower_) external view returns(uint256);
}

interface ILenderAdmin {
    /***************************************
					ADMIN
	****************************************/

    /**
	 * @notice Change borrow coefficient
	 * @param borrowCoefficient_ Coefficient reducing possible borrow
	 */
    function setBorrowCoefficient(uint256 borrowCoefficient_) external;

    /**
	 * @notice Change liquidation coefficient
	 * @param liquidationCoefficient_ Collateral reduction coefficient to check if account can be liquidated
	 */
    function setLiquidationCoefficient(uint256 liquidationCoefficient_) external;

    /**
	 * @notice Change liquidation bonus coefficient
	 * @param liquidationBonusCoefficient_ Multiplier for tokens obtained during liquidation
	 */
    function setLiquidationBonusCoefficient(uint256 liquidationBonusCoefficient_) external;

    /**
	 * @notice Change fee signer
	 * @param feeSigner_ Who must be signer
	 */
    function setFeeSigner(address feeSigner_) external;

    /**
	 * @notice Set approval for borrower contract
	 * @param borrower_ Address of borrower contract
	 * @param amount_ Amount of approval
	 */
    function approveBorrower(address borrower_, uint256 amount_) external;
}

interface ILenderPublic {
    /***************************************
					PUBLIC VARS
	****************************************/

    /**
     * @notice Get address of native currency wrapper
     * @return Address of wrapper
     */
    function wETH() external view returns(address);

    /**
     * @notice Get coefficient reducing possible borrow
     * @return Borrow coefficient
     */
	function borrowCoefficient() external view returns (uint256);

    /**
     * @notice Get collateral reduction coefficient to check if account can be liquidated
     * @return Liquidation coefficient
     */
	function liquidationCoefficient() external view returns (uint256);

    /**
     * @notice Get multiplier for tokens obtained during liquidation
     * @return Liquidation bonus coefficient
     */
	function liquidationBonusCoefficient() external view returns (uint256);

    /**
     * @notice Get who must be signer
     * @return Fee signer
     */
    function feeSigner() external view returns (address);
}