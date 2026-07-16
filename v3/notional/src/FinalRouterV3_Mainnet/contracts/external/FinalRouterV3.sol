// SPDX-License-Identifier: BSUL-1.1
pragma solidity =0.7.6;
pragma abicoder v2;

import {IStrategyVault} from "../../interfaces/notional/IStrategyVault.sol";
import {StorageLayoutV2} from "../global/StorageLayoutV2.sol";
import {UUPSUpgradeable} from "../proxy/utils/UUPSUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {WETH9} from "../../interfaces/WETH9.sol";
import {VaultAccount} from "../global/Types.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";

interface IAavePool {

    function supply(
        address asset,
        uint256 amount,
        address onBehalfOf,
        uint16 referralCode
    ) external;

    function borrow(
        address asset,
        uint256 amount,
        uint256 interestRateMode,
        uint16 referralCode,
        address onBehalfOf
    ) external;

    function getReserveAToken(address asset) external view returns (address);

    function getReserveVariableDebtToken(address asset) external view returns (address);

    function getUserAccountData(address user) external view returns (
        uint256 totalCollateralBase,
        uint256 totalDebtBase,
        uint256 availableBorrowsBase,
        uint256 currentLiquidationThreshold,
        uint256 ltv,
        uint256 healthFactor
    );

}


abstract contract FinalRouterV3 is StorageLayoutV2, UUPSUpgradeable {
    using SafeERC20 for IERC20;

    struct BalanceInfo {
        uint256 balance;
        uint16 currencyId;
    }

    struct TransferInfo {
        address account;
        BalanceInfo[] balances;
    }

    function currencyIdToAddress(uint16 currencyId) public view virtual returns (address);
    function aavePool() public view virtual returns (IAavePool);
    function _WETH() internal view virtual returns (address);

    function wrapETH() external {
        require(owner == msg.sender, "Unauthorized");
        WETH9(_WETH()).deposit{value: address(this).balance}();
    }

    /// @dev Only the owner may upgrade the contract
    function _authorizeUpgrade(address newImplementation) internal override {
        require(owner == msg.sender,  "Unauthorized");
    }

    /// @dev Borrower here is a Gnosis Safe which has already given credit delegation to this contract
    /// on the VariableDebtToken for each of the debt currencies in the specified amount.
    function migrateBorrow(address borrower, BalanceInfo[] calldata collateral, BalanceInfo[] calldata debt) external {
        require(owner == msg.sender, "Unauthorized");
        for (uint256 i = 0; i < collateral.length; i++) {
            address token = currencyIdToAddress(collateral[i].currencyId);
            IERC20(token).approve(address(aavePool()), collateral[i].balance);
            aavePool().supply(token, collateral[i].balance, borrower, 0);
        }

        for (uint256 i = 0; i < debt.length; i++) {
            address token = currencyIdToAddress(debt[i].currencyId);
            uint256 balanceBefore = IERC20(token).balanceOf(address(this));
            // NOTE: this contract should receive the borrowed funds. This requires prior
            // credit delegation of the given amount.
            aavePool().borrow(token, debt[i].balance, 2, 0, borrower);
            uint256 balanceAfter = IERC20(token).balanceOf(address(this));
            require(balanceAfter - balanceBefore >= debt[i].balance, "Insufficient balance");
        }
    }

    function redeemVault(
        address vault,
        address account,
        uint256 vaultShares,
        uint256 maturity,
        uint256 underlyingToRepayDebt,
        bytes calldata data,
        uint16 currencyId
    ) external returns (uint256 totalPrimary) {
        require(owner == msg.sender, "Unauthorized");
        address underlyingToken = currencyIdToAddress(currencyId);
        uint256 balanceBefore = underlyingToken == address(0) ? 
            address(this).balance : IERC20(underlyingToken).balanceOf(address(this));
        // This will transfer any excess profits back to the account.
        uint256 transferToReceiver = IStrategyVault(vault).redeemFromNotional(
            account, account, vaultShares, maturity, underlyingToRepayDebt, data
        );
        WETH9(_WETH()).deposit{value: address(this).balance}();
        uint256 balanceAfter = underlyingToken == address(0) ? 
            address(this).balance : IERC20(underlyingToken).balanceOf(address(this));

        require(balanceAfter - balanceBefore >= underlyingToRepayDebt, "Insufficient balance");

        return balanceAfter - balanceBefore + transferToReceiver;
    }

    function transferBalances(TransferInfo[] calldata transferInfo) external {
        require(owner == msg.sender, "Unauthorized");
        for (uint256 i = 0; i < transferInfo.length; i++) {
            _transferBalance(transferInfo[i].account, transferInfo[i].balances);
        }
    }

    function _transferBalance(address account, BalanceInfo[] calldata balances) internal {
        for (uint256 i = 0; i < balances.length; i++) {
            address token = currencyIdToAddress(balances[i].currencyId);
            IERC20(token).safeTransfer(account, balances[i].balance);
        }
    }
}

contract FinalRouterV3_Mainnet is FinalRouterV3 {
    address constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
    address constant DAI = 0x6B175474E89094C44Da98b954EedeAC495271d0F; 
    address constant USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
    address constant WBTC = 0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599;
    address constant wstETH = 0x7f39C581F595B53c5cb19bD0b3f8dA6c935E2Ca0;
    address constant FRAX = 0x853d955aCEf822Db058eb8505911ED77F175b99e;
    address constant rETH = 0xae78736Cd615f374D3085123A210448E74Fc6393;
    address constant USDT = 0xdAC17F958D2ee523a2206206994597C13D831ec7;
    address constant cbETH = 0xBe9895146f7AF43049ca1c1AE358B0541Ea49704;
    address constant sDAI = 0x83F20F44975D03b1b09e64809B757c47f942BEeA;
    address constant GHO = 0x40D16FC0246aD3160Ccc09B8D0D3A2cD28aE6C2f;
    address constant tBTC = 0x18084fbA666a33d37592fA2633fD49a74DD93a88;

    function aavePool() public override view returns (IAavePool) {
        return IAavePool(0x87870Bca3F3fD6335C3F4ce8392D69350B4fA4E2);
    }

    function _WETH() internal override view returns (address) {
        return WETH;
    }

    function currencyIdToAddress(uint16 currencyId) public view override returns (address) {
        if (currencyId == 1) return WETH;
        else if (currencyId == 2) return DAI;
        else if (currencyId == 3) return USDC;
        else if (currencyId == 4) return WBTC;
        else if (currencyId == 5) return wstETH;
        else if (currencyId == 6) return FRAX;
        else if (currencyId == 7) return rETH;
        else if (currencyId == 8) return USDT;
        else if (currencyId == 9) return cbETH;
        else if (currencyId == 10) return sDAI;
        else if (currencyId == 11) return GHO;
        else if (currencyId == 12) return tBTC;
        revert("Invalid currencyId");
    }

    function getVaultAccount(address account, address vault) external view returns (VaultAccount memory vaultAccount) {
        // Only used to update vault rewards for the last time.
        if (vault == 0xe20048FA0F165A49b780DFA9A8caBa845332f848) {
            if (account == 0xd74e7325dFab7D7D1ecbf22e6E6874061C50f243) {
                return VaultAccount(0, 0, 406624, account, 0, 0);
            } else if (account == 0x7F6f138C955e5B1017A12E4567D90C62abb00074) {
                return VaultAccount(0, 0, 530412, account, 0, 0);
            }
        }
        revert();
    }

}

contract FinalRouterV3_Arbitrum is FinalRouterV3 {

    address constant WETH = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;
    address constant DAI = 0xDA10009cBd5D07dd0CeCc66161FC93D7c9000da1; 
    address constant USDC = 0xaf88d065e77c8cC2239327C5EDb3A432268e5831;
    address constant WBTC = 0x2f2a2543B76A4166549F7aaB2e75Bef0aefC5B0f;
    address constant wstETH = 0x5979D7b546E38E414F7E9822514be443A4800529;
    address constant FRAX = 0x17FC002b466eEc40DaE837Fc4bE5c67993ddBd6F;
    address constant rETH = 0xEC70Dcb4A1EFa46b8F2D97C310C9c4790ba5ffA8;
    address constant USDT = 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9;
    address constant cbETH = 0x1DEBd73E752bEaF79865Fd6446b0c970EaE7732f;
    address constant GMX = 0xfc5A1A6EB076a2C7aD06eD22C90d7E710E35ad0a;
    address constant ARB = 0x912CE59144191C1204E64559FE8253a0e49E6548;
    address constant RDNT = 0x3082CC23568eA640225c2467653dB90e9250AaA0;
    address constant UNI = 0xFa7F8980b0f1E64A2062791cc3b0871572f1F7f0;
    address constant LINK = 0xf97f4df75117a78c1A5a0DBb814Af92458539FB4;
    address constant LDO = 0x13Ad51ed4F1B7e9Dc168d8a00cB3f4dDD85EfA60;

    address constant AAVE_POOL = 0x794a61358D6845594F94dc1DB02A252b5b4814aD;

    function currencyIdToAddress(uint16 currencyId) public view override returns (address) {
        if (currencyId == 1) return WETH;
        else if (currencyId == 2) return DAI;
        else if (currencyId == 3) return USDC;
        else if (currencyId == 4) return WBTC;
        else if (currencyId == 5) return wstETH;
        else if (currencyId == 6) return FRAX;
        else if (currencyId == 7) return rETH;
        else if (currencyId == 8) return USDT;
        else if (currencyId == 9) return cbETH;
        else if (currencyId == 10) return GMX;
        else if (currencyId == 11) return ARB;
        else if (currencyId == 12) return RDNT;
        else if (currencyId == 13) return UNI;
        else if (currencyId == 14) return LINK;
        else if (currencyId == 15) return LDO;
        revert("Invalid currencyId");
    }

    function aavePool() public override view returns (IAavePool) {
        return IAavePool(AAVE_POOL);
    }

    function _WETH() internal override view returns (address) {
        return WETH;
    }
}