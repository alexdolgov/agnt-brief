pragma solidity ^0.5.16;

contract ComptrollerInterface {
    function isComptroller() external returns (bool);

    function enterMarkets(address[] calldata vTokens) external returns (uint[] memory);
    function exitMarket(address vToken) external returns (uint);
    function checkMembership(address account, address vToken) external view returns (bool);

    function vaiAddress() external view returns(address);
    function isListedMarket(address) external view returns (bool);

    function setPriceOracle(address newOracle) external returns (uint);
    function setCloseFactor(uint newCloseFactorMantissa) external returns (uint);
    function setLiquidationIncentive(uint newLiquidationIncentiveMantissa) external returns (uint);
    function setVAIController(address vaiController_) external returns (uint);
    function setDemeterVAIRate(uint demeterVAIRate_) external;
    function supportMarket(address vToken) external returns (uint);
    function setCollateralFactor(address vToken, uint newCollateralFactorMantissa) external returns (uint);
    function setMarketBorrowCaps(address[] calldata vTokens, uint[] calldata newBorrowCaps) external;

    function getAllMarkets() external view returns(address[] memory);
    function getBlockNumber() public view returns (uint);

    function mintAllowed(address vToken, address minter, uint mintAmount) external returns (uint);

    function redeemAllowed(address vToken, address redeemer, uint redeemTokens) external returns (uint);

    function borrowAllowed(address vToken, address borrower, uint borrowAmount) external returns (uint);

    function mintVAIAllowed(address minter, uint mintAmount) external returns (uint);

    function repayVAIAllowed(address payer, address borrower, uint repayAmount) external returns (uint);

    function repayBorrowAllowed(
        address vToken,
        address payer,
        address borrower,
        uint repayAmount) external returns (uint);

    function liquidateBorrowAllowed(
        address vTokenBorrowed,
        address vTokenCollateral,
        address liquidator,
        address borrower,
        uint repayAmount) external returns (uint);

    function seizeAllowed(
        address vTokenCollateral,
        address vTokenBorrowed,
        address liquidator,
        address borrower,
        uint seizeTokens) external returns (uint);

    function setDemeterSpeed(address vToken, uint demeterSupplySpeed, uint demeterBorrowSpeed) external;

    function mintVerify(address vToken, address minter, uint mintAmount, uint mintTokens) external;
    function redeemVerify(address vToken, address redeemer, uint redeemAmount, uint redeemTokens) external;
    function borrowVerify(address vToken, address borrower, uint borrowAmount) external;
    function mintVAIVerify(address minter, uint mintAmount) external;
    function repayVAIVerify(address payer, address borrower, uint actualRepayAmount, uint borrowerIndex) external;
    function repayBorrowVerify(
        address vToken,
        address payer,
        address borrower,
        uint repayAmount,
        uint borrowerIndex) external;
    function liquidateBorrowVerify(
        address vTokenBorrowed,
        address vTokenCollateral,
        address liquidator,
        address borrower,
        uint repayAmount,
        uint seizeTokens) external;
    function seizeVerify(
        address vTokenCollateral,
        address vTokenBorrowed,
        address liquidator,
        address borrower,
        uint seizeTokens) external;
    function transferVerify(address vToken, address src, address dst, uint transferTokens) external;


    function transferAllowed(address vToken, address src, address dst, uint transferTokens) external returns (uint);

    function getAccountLiquidity(address account) public view returns (uint, uint, uint);

    function liquidateCalculateSeizeTokens(
        address vTokenBorrowed,
        address vTokenCollateral,
        uint repayAmount) external view returns (uint, uint);

    function liquidateVAICalculateSeizeTokens(
        address vTokenCollateral,
        uint repayAmount) external view returns (uint, uint);

    function distributeVAIMinterDemeter(address vaiMinter) external;

    function claimDemeter(address holder) external;

    function grantDMT(address recipient, uint amount) public;

}

interface IVAIVault {
    function updatePendingRewards() external;
}
