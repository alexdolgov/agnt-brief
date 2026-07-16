// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

interface IMorphoBlue {
    struct MarketParams {
        address loanToken;
        address collateralToken;
        address oracle;
        address irm;
        uint256 lltv;
    }
}

interface IStakingManager {
    function supplyAave(address afiContract, address tok, uint256 amount) external;
    function supplyPendle(address afiContract, address tok, uint256 amount, bytes calldata pendleData) external returns (uint256);
    function supplyMoonwell(address afiContract, address tok, uint256 amount) external;
    function supplyMorpho(address afiContract, address tok, uint256 amount) external;
    function supplyWithLeverage(
        address afiContract,
        address tok,
        uint256 amount,
        uint256[] memory providers,
        bytes[] calldata pendleData
        ) external returns (uint256 finalStakedAmount, uint256 finalProvider, address lToken);
    function withdrawAave(address afiContract, address tok, uint256 amount) external;
    function withdrawPendle(address afiContract, address tok, uint256 lpSharesAmount, bytes calldata pendleWithdrawData) external returns (uint256);
    function withdrawMoonwell(address afiContract, address tok, uint256 amount) external;
    function withdrawMorpho(address afiContract, address tok, uint256 amount) external;
    function withdrawAll(address afiContract, address tok, bytes calldata pendleWithdrawData) external returns (bool);
    function withdrawSome(
        address afiContract, 
        address tok, 
        uint256 amount, 
        bytes calldata pendleWithdrawData
    ) external returns (bool);
    function getBalances(address afiContract, address tok) external view returns (
        uint256 aaveBalance,
        uint256 pendleBalance,
        uint256 moonwellBalance,
        uint256 morphoBalance,
        uint256 tokenBalance
    );
    function balanceOfUnderlyingInPoolsAndContract(address tok, address afiContract) external view returns (uint256);
    function calcPoolValue(address tok, address afiContract) external view returns (uint256);
    function calcPoolValueForHelperToken(address tok, address afiContract) external view returns (uint256);
    function calcPoolValueSomeRead(address tok, address afiContract, uint256 price, uint256 multiplier, bool isExtra) external view returns (uint256);
    function getPendleLPPriceInUSD(address pendleMarket) external view returns (uint256);
    function convertAssetsToShares(address afiContract, address tok, uint256 assetAmount) external view returns (uint256);
    function distributeProfitShare(address aFiContract, uint256 share, address oToken, uint256 depositNAV, uint256 redemptionNAV) external returns (uint256);
    function getAtvMorphoTVL(address _vault) external view returns(uint256 totalCollateral, uint256 loanAmount, address loanToken);
    function getTargetLTV(address vault) external view returns (uint256);
    function getLeverageMarket(address vault, address token) external view returns (IMorphoBlue.MarketParams memory);
    function isLeverageConfigured(address vault, address token) external view returns (bool);
    function isTargetLTVSafe(address vault, address token) external view returns (bool);
    function closeLeverage(address _vault) external returns(address cToken, uint256 returnedCollateral, address uTok, address loanToken, uint256 seededFund);
    function isLeverageEnable(address _vault) external view returns(bool);
    function partialDeleverage(
        address vault,
        address token,
        uint256 alreadyRedeemed, //LoanToken address
        uint256 targetAmount,
        bytes[] calldata pendleWithdrawData,
        bool partialStatus
    ) external returns (uint256 amountReceived);
    function withdrawAllFinal(
        address afiContract,
        address tok,
        bytes calldata pendleWithdrawData
    ) external returns (bool);
}