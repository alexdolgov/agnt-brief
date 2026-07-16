// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.0;

import "@solidstate/contracts/access/access_control/AccessControl.sol";
import "@solidstate/contracts/utils/ReentrancyGuard.sol";
import "./ModuleHelper.sol";

interface IAave_Module {
    function aave_supply(address asset, uint256 amount) external;
    function aave_withdraw(address asset, uint256 amount) external;
    function aave_borrow(address asset, uint256 amount, uint256 interestRateMode) external;
    function aave_repay(address asset, uint256 amount, uint256 interestRateMode) external;
    function aave_setUserEMode(uint8 categoryId) external;
    function aave_claimRewards(address[] calldata assets, address reward) external;
}

contract Aave_Module is IAave_Module, ModuleHelper, AccessControl, ReentrancyGuard {
    bytes32 public constant EXECUTOR_ROLE = keccak256("EXECUTOR_ROLE");
    uint256 public constant MAX_LTV_FACTOR = 0.8e18;
    uint256 internal constant MANTISSA_FACTOR = 1e18;
    uint256 internal constant BASIS_FACTOR = 1e4;

    IPool public immutable pool;
    IRewardsController public immutable rewardsController;

    constructor(address _pool, address _rewardsController) {
        pool = IPool(_pool);
        rewardsController = IRewardsController(_rewardsController);
    }

    function aave_supply(address asset, uint256 amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateToken(asset);
        IERC20(asset).approve(address(pool), amount);
        pool.supply(asset, amount, address(this), 0);
    }

    function aave_withdraw(address asset, uint256 amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        pool.withdraw(asset, amount, address(this));
    }

    function aave_borrow(
        address asset,
        uint256 amount,
        uint256 interestRateMode
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateToken(asset);
        pool.borrow(asset, amount, interestRateMode, 0, address(this));
        (uint256 totalCollateralBase, uint256 totalDebtBase, , , uint256 ltv, ) = pool.getUserAccountData(address(this));
        uint256 maxDebtBase = (totalCollateralBase * ltv * MAX_LTV_FACTOR) / (BASIS_FACTOR * MANTISSA_FACTOR);
        require(totalDebtBase <= maxDebtBase, "borrow amount exceeds max LTV");
    }

    function aave_repay(
        address asset,
        uint256 amount,
        uint256 interestRateMode
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        IERC20(asset).approve(address(pool), amount);
        pool.repay(asset, amount, interestRateMode, address(this));
    }

    function aave_setUserEMode(uint8 categoryId) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        pool.setUserEMode(categoryId);
    }

    function aave_claimRewards(address[] calldata assets, address reward) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        rewardsController.claimRewards(
            assets, type(uint256).max, address(this), reward
        );
    }
}

interface IPool {
    function supply(address asset, uint256 amount, address onBehalfOf, uint16 referralCode) external;
    function withdraw(address asset, uint256 amount, address to) external returns (uint256);
    function borrow(address asset, uint256 amount, uint256 interestRateMode, uint16 referralCode, address onBehalfOf) external;
    function repay(address asset, uint256 amount, uint256 interestRateMode, address onBehalfOf) external returns (uint256);
    function swapBorrowRateMode(address asset, uint256 interestRateMode) external;
    function getUserAccountData(
        address user
    )
        external
        view
        returns (
            uint256 totalCollateralBase,
            uint256 totalDebtBase,
            uint256 availableBorrowsBase,
            uint256 currentLiquidationThreshold,
            uint256 ltv,
            uint256 healthFactor
        );
    function setUserEMode(uint8 categoryId) external;
}

interface IRewardsController {
    function claimRewards(
        address[] calldata assets,
        uint256 amount,
        address to,
        address reward
    ) external;
}

interface IERC20 {
    function approve(address target, uint256 amount) external;
}
