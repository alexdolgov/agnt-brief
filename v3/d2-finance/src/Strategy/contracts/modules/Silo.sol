// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.0;

import "@solidstate/contracts/utils/ReentrancyGuard.sol";
import "@solidstate/contracts/access/access_control/AccessControl.sol";
import "./ModuleHelper.sol";

interface ISilo_Module {
    function silo_deposit(address, address, uint256, bool) external;
    function silo_withdraw(address, address, uint256, bool) external;
    function silo_borrow(address, address, uint256) external;
    function silo_repay(address, address, uint256) external;
    function silo_execute(ISiloRouter.Action[] calldata) external;
}

contract Silo_Module is ISilo_Module, ModuleHelper, AccessControl, ReentrancyGuard {
    bytes32 public constant EXECUTOR_ROLE = keccak256("EXECUTOR_ROLE");

    ISiloRouter public immutable router;

    constructor(address _router) {
        require(_router != address(0), "Silo_Module: Zero address");
        router = ISiloRouter(_router);
    }

    function getSilo(address silo) internal view returns (ISilo) {
        ISiloRepository r = ISiloRepository(router.siloRepository());
        require(r.isSilo(silo), "Silo_Module: not silo");
        return ISilo(silo);
    }

    function silo_deposit(address silo, address asset, uint256 amount, bool collateralOnly) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateToken(asset);
        IERC20(asset).approve(silo, amount);
        ISilo s = getSilo(silo);
        s.deposit(asset, amount, collateralOnly);
    }

    function silo_withdraw(address silo, address asset, uint256 amount, bool collateralOnly) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateToken(asset);
        ISilo s = getSilo(silo);
        s.withdraw(asset, amount, collateralOnly);
    }

    function silo_borrow(address silo, address asset, uint256 amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateToken(asset);
        ISilo s = getSilo(silo);
        s.borrow(asset, amount);
    }

    function silo_repay(address silo, address asset, uint256 amount) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        IERC20(asset).approve(silo, amount);
        ISilo s = getSilo(silo);
        s.repay(asset, amount);
    }

    function silo_execute(ISiloRouter.Action[] calldata actions) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        IERC20(actions[0].asset).approve(address(router), actions[0].amount);
        router.execute(actions);
    }
}

interface IERC20 {
    function balanceOf(address) external view returns (uint256);
    function approve(address, uint256) external returns (bool);
    function transfer(address, uint256) external returns (bool);
}

interface ISilo {
    // bool is collateralOnly
    function deposit(address, uint256, bool) external;
    function withdraw(address, uint256, bool) external;
    function borrow(address, uint256) external;
    function repay(address, uint256) external;
}

interface ISiloRouter {
    enum ActionType {
        Deposit,
        Withdraw,
        Borrow,
        Repay
    }
    struct Action {
        ActionType actionType;
        address silo;
        address asset;
        uint256 amount;
        bool collateralOnly;
    }

    function execute(Action[] calldata _actions) external payable;
    function siloRepository() external view returns (address);
}

interface ISiloRepository {
    function isSilo(address) external view returns (bool);
}
