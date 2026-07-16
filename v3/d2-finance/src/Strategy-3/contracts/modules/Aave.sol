// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.28;

import "@solidstate/contracts/access/access_control/AccessControl.sol";
import "@solidstate/contracts/utils/ReentrancyGuard.sol";

interface IAave_Module {
    function aave_supply(address asset, uint256 amount, address onBehalfOf, uint16 referralCode) external;
    function aave_withdraw(address asset, uint256 amount, address to) external;
    function aave_borrow(address asset, uint256 amount, uint256 interestRateMode, uint16 referralCode, address to) external;
    function aave_repay(address asset, uint256 amount, uint256 interestRateMode, address to) external;
    function aave_swapBorrowRateMode(address asset, uint256 interestRateMode) external;
    function aave_setUserEMode(uint8 categoryId) external;
}

contract Aave_Module is AccessControl, ReentrancyGuard {
    bytes32 public constant EXECUTOR_ROLE = keccak256("EXECUTOR_ROLE");
    uint256 public constant MAX_LTV_FACTOR = 0.8e18;
    uint256 internal constant MANTISSA_FACTOR = 1e18;
    uint256 internal constant BASIS_FACTOR = 1e4;

    IPool public immutable pool;

    constructor(address _pool) {
        pool = IPool(_pool);
    }

    function aave_supply(
        address asset,
        uint256 amount,
        address onBehalfOf,
        uint16 referralCode
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        require(onBehalfOf == address(this), "invalid recipient");
        pool.supply(asset, amount, onBehalfOf, referralCode);
    }

    function aave_withdraw(address asset, uint256 amount, address to) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        require(to == address(this), "invalid recipient");
        pool.withdraw(asset, amount, to);
    }

    function aave_borrow(
        address asset,
        uint256 amount,
        uint256 interestRateMode,
        uint16 referralCode,
        address onBehalfOf
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        require(onBehalfOf == address(this), "invalid recipient");
        pool.borrow(asset, amount, interestRateMode, referralCode, onBehalfOf);
        (uint256 totalCollateralBase, uint256 totalDebtBase, , , uint256 ltv, ) = pool.getUserAccountData(onBehalfOf);
        uint256 maxDebtBase = (totalCollateralBase * ltv * MAX_LTV_FACTOR) / (BASIS_FACTOR * MANTISSA_FACTOR);
        require(totalDebtBase <= maxDebtBase, "borrow amount exceeds max LTV");
    }

    function aave_repay(
        address asset,
        uint256 amount,
        uint256 interestRateMode,
        address onBehalfOf
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        require(onBehalfOf == address(this), "invalid recipient");
        pool.repay(asset, amount, interestRateMode, onBehalfOf);
    }

    function aave_swapBorrowRateMode(address asset, uint256 interestRateMode) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        pool.swapBorrowRateMode(asset, interestRateMode);
    }

    function aave_setUserEMode(uint8 categoryId) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        pool.setUserEMode(categoryId);
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
