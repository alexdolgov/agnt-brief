// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";
import { Errors } from "contracts/libraries/Errors.sol";
import { ProtocolModule } from "contracts/system/ProtocolModule.sol";
import { IAccountManager, AccountLib } from "contracts/interfaces/IAccountManager.sol";
import { IStrategyVault } from "contracts/interfaces/IStrategyVault.sol";
import { UD60x18, ud, UNIT, ZERO } from "@prb/math/src/UD60x18.sol";
import { FixedPointMathLib } from "solady/src/utils/FixedPointMathLib.sol";

interface IJuiceStrategyKeeper {
    function requireSoftDepositCap(address account) external view;
}

/// @title JuiceStrategyKeeper
/// @notice Manages soft cap on deposits related to strategies holding the JUICE token.
contract JuiceStrategyKeeper is ProtocolModule, AccessControl {
    using SafeERC20 for IERC20;

    struct InitParams {
        address keeperAdmin;
        address protocolGovernor;
        address accountManager;
        UD60x18 juiceInvestmentRatio;
        UD60x18 juiceCollateralRatio;
    }

    error InsolventSoftCap();

    IAccountManager public immutable accountManager;

    IStrategyVault public lpStrategyVault;
    IStrategyVault public spotStrategyVault;

    // What % of total account investments can be in JUICE.
    UD60x18 public juiceInvestmentRatio;

    // How much collateral value is backing the JUICE value.
    UD60x18 public juiceCollateralRatio;

    constructor(InitParams memory params)
        ProtocolModule(params.protocolGovernor)
        nonZeroAddress(params.accountManager)
        nonZeroAddress(params.keeperAdmin)
    {
        _grantRole(DEFAULT_ADMIN_ROLE, params.keeperAdmin);
        accountManager = IAccountManager(params.accountManager);
        juiceInvestmentRatio = params.juiceInvestmentRatio;
        juiceCollateralRatio = params.juiceCollateralRatio;
    }

    function grantAdmin(address admin) external onlyOwner {
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
    }

    function revokeAdmin(address admin) external onlyOwner {
        _revokeRole(DEFAULT_ADMIN_ROLE, admin);
    }

    function setRatios(
        UD60x18 juiceInvestmentRatio_,
        UD60x18 juiceCollateralRatio_
    )
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        juiceInvestmentRatio = juiceInvestmentRatio_;
        juiceCollateralRatio = juiceCollateralRatio_;
    }

    function setLpStrategy(address lpStrategy_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        lpStrategyVault = IStrategyVault(lpStrategy_);
    }

    function setSpotStrategy(address spotStrategy_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        spotStrategyVault = IStrategyVault(spotStrategy_);
    }

    function getCurrentJuiceValue(address account) public view returns (uint256 juiceValue) {
        if (spotStrategyVault != IStrategyVault(address(0))) {
            juiceValue += spotStrategyVault.getPositionValue(account);
        }

        if (lpStrategyVault != IStrategyVault(address(0))) {
            // It is a Uniswap V2 LP strategy. Count half of the position value as JUICE.
            juiceValue += lpStrategyVault.getPositionValue(account) / 2;
        }
    }

    function getMaxJuiceValue(address account) public view returns (uint256) {
        AccountLib.Health memory health = accountManager.getAccountHealth(account);

        return FixedPointMathLib.max(
            (ud(health.collateralValue) * juiceCollateralRatio).unwrap(),
            (ud(health.investmentValue) * juiceInvestmentRatio).unwrap()
        );
    }

    /// @dev At time of deposit, JUICE exposure must either be overcollateralized or a small % of the user's total
    /// investment portfolio (in the case their investment portfolio goes up).
    function requireSoftDepositCap(address account) external view {
        uint256 juiceValue = getCurrentJuiceValue(account);
        uint256 maxValue = getMaxJuiceValue(account);

        if (juiceValue > maxValue) {
            revert InsolventSoftCap();
        }
    }
}
