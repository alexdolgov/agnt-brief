// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IMasterOracle} from "./IMasterOracle.sol";

interface IPool {
    function depositTokenOf(IERC20 underlying_) external view returns (IDepositToken);

    function debtTokenOf(ISyntheticToken syntheticToken_) external view returns (IDebtToken);

    function masterOracle() external view returns (IMasterOracle);

    function debtOf(address account_) external view returns (uint256 _debtInUsd);

    function depositOf(address account_) external view returns (uint256 _depositInUsd, uint256 _issuableLimitInUsd);

    function debtPositionOf(
        address account_
    )
        external
        view
        returns (
            bool _isHealthy,
            uint256 _depositInUsd,
            uint256 _debtInUsd,
            uint256 _issuableLimitInUsd,
            uint256 _issuableInUsd
        );

    function smartFarmingManager() external view returns (ISmartFarmingManager);
}

interface IDebtToken is IERC20 {
    function quoteRepayIn(uint256 amountToRepay_) external view returns (uint256 _amount, uint256 _fee);

    function issue(uint256 amount_, address to_) external;

    function repay(address onBehalfOf_, uint256 amount_) external returns (uint256 _repaid, uint256 _fee);

    function syntheticToken() external view returns (ISyntheticToken);

    function interestRate() external view returns (uint256);
}

interface IDepositToken is IERC20 {
    function underlying() external view returns (IERC20);

    function withdraw(uint256 amount_, address to_) external returns (uint256 _withdrawn, uint256 _fee);

    function unlockedBalanceOf(address account_) external view returns (uint256);

    function deposit(uint256 amount_, address onBehalfOf_) external returns (uint256 _deposited, uint256 _fee);

    function collateralFactor() external view returns (uint256);
}

interface ISyntheticToken is IERC20 {}

interface ISmartFarmingManager {
    function pool() external view returns (IPool);

    function leverage(
        IERC20 tokenIn_,
        IDepositToken depositToken_,
        ISyntheticToken syntheticToken_,
        uint256 amountIn_,
        uint256 leverage_,
        uint256 depositAmountMin_
    ) external returns (uint256 _deposited, uint256 _issued);

    function flashRepay(
        ISyntheticToken syntheticToken_,
        IDepositToken depositToken_,
        uint256 withdrawAmount_,
        uint256 repayAmountMin_
    ) external returns (uint256 _withdrawn, uint256 _repaid);
}
