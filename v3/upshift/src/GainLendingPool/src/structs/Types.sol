// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

struct LoanDeploymentParams {
    uint256 fundingPeriodInSeconds;
    uint256 newPaymentIntervalInSeconds;
    uint256 newLoanAmountInPrincipalTokens; 
    uint256 originationFeePercent2Decimals;
    uint256 newAprWithTwoDecimals;
    uint256 initialCollateralRatioWith2Decimals;
    uint256 maintenanceCollateralRatioWith2Decimals;
    uint256 lateInterestFee;
    uint256 latePrincipalFee;
    uint256 expiryInfo;
    string loanTypeInfo;
    address lenderAddr;
    address borrowerAddr;
    address newCollateralToken;
    address newPrincipalToken;
    address feesManagerAddr;
    address priceOracleAddress;
    address feesCollectorAddress;
    address categoryFeesAdress;
    bool allowSeizeCollateral;
}

struct LoanRecord {
    address lenderAddr;
    address borrowerAddr;
    address principalTokenAddr;
    address collateralTokenAddr;
    uint256 loanAmount;
    uint256 initialApr;
    uint256 paymentInterval;
}

struct FeeData {
    address feeTokenAddr;       // The token address. This is used when the offset is not available (offset = 0).
    uint256 feeTokenOffset;     // The offset of the token, if any.
    uint256 amountOffset;       // The offset of the amount.
    uint256 feeWithTwoDecimals; // The applicable fee, expressed with 2 decimal places.
}

struct CallCheck {
    uint8 checkType;
    address contractAddr;
    uint256 numericVal;
    address contractAddr2;
    uint256 numericVal2;
}

struct ModuleFee {
    address tokenAddress;
    uint256 dstAmount;
    uint256 dstPercent;
}

struct ModuleResponse {
    uint256[] targetCallValues;
    address[] targetAddresses;
    bytes[] targetPayloads;
    CallCheck[] checks;
    ModuleFee[] feesBefore;
    ModuleFee[] feesAfter;
}
