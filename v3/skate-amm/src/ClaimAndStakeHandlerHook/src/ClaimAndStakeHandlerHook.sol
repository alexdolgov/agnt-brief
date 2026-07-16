// SPDX-License-Identifier: BUSL-1.1

pragma solidity =0.8.24;

import { UUPSUpgradeable } from
    "openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";

import { OwnableUpgradeable } from
    "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { IPostClaimHandler } from "./IPostClaimHandler.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

error InvalidCaller();
error DepositToStrategyFailed();
error ZeroAddress();

interface IStrategyManager {
    function depositIntoStrategyWithSignature(
        address strategy,
        address token,
        uint256 amount,
        address withdrawalAddress,
        uint256 expiry,
        bytes memory signature
    )
        external
        returns (uint256 depositShares);
}

contract ClaimAndStakeHandlerHook is IPostClaimHandler, UUPSUpgradeable, OwnableUpgradeable {
    using SafeERC20 for IERC20;

    address public vesterContract;
    address public strategyManager;
    address public strategy;

    event DepositedIntoStrategy(address user, string allocationId, uint256 amount, uint256 shares);

    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner { }

    function initialize(
        address vesterContract_,
        address strategyManager_,
        address strategy_
    )
        external
        initializer
    {
        __Ownable_init(msg.sender);
        if (
            vesterContract_ == address(0) || strategyManager_ == address(0)
                || strategy_ == address(0)
        ) revert ZeroAddress();
        vesterContract = vesterContract_;
        strategyManager = strategyManager_;
        strategy = strategy_;
    }

    function handlePostClaim(
        IERC20 claimToken,
        uint256 amount,
        address originalBeneficiary,
        address withdrawalAddress,
        string memory allocationId,
        bytes memory extraData
    )
        external
    {
        if (_msgSender() != vesterContract) revert InvalidCaller();
        uint256 balanceBefore = claimToken.balanceOf(address(this));

        (bytes memory signature, uint256 expiry) = abi.decode(extraData, (bytes, uint256));
        claimToken.approve(address(strategyManager), amount);
        uint256 depositShares = IStrategyManager(strategyManager).depositIntoStrategyWithSignature(
            strategy, address(claimToken), amount, withdrawalAddress, expiry, signature
        );
        uint256 balanceAfter = claimToken.balanceOf(address(this));
        if (depositShares == 0 || balanceBefore - balanceAfter != amount) {
            revert DepositToStrategyFailed();
        }
        emit DepositedIntoStrategy(withdrawalAddress, allocationId, amount, depositShares);
    }
}
