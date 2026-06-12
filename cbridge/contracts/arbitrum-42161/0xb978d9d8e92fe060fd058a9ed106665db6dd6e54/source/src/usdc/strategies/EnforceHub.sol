// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";
import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";

import {IRewardReceiver} from "src/interfaces/IRewardReceiver.sol";
import {UpgradeableGovernable} from "src/common/UpgradeableGovernable.sol";

import {IUnderlyingVault} from "src/interfaces/vaults/IUnderlyingVault.sol";
import {IPayBack} from "src/interfaces/vaults/IPayBack.sol";

contract EnforceHub is IPayBack, UpgradeableGovernable {
    using FixedPointMathLib for uint256;

    /* -------------------------------------------------------------------------- */
    /*                                  VARIABLES                                 */
    /* -------------------------------------------------------------------------- */

    address public underlyingVault;
    IPayBack[] public strategies;
    uint256[] public targets;

    uint256 public constant BASIS_POINTS = 1e12;

    function initialize(address _underlyingVault, address[] memory _strategies, uint256[] memory _targets)
        external
        initializer
    {
        __Governable_init(msg.sender);

        underlyingVault = _underlyingVault;

        uint256 length = _strategies.length;

        for (uint256 i; i < length;) {
            strategies.push(IPayBack(_strategies[i]));
            targets.push(_targets[i]);

            unchecked {
                ++i;
            }
        }
    }

    function payBack(uint256 amount, bytes calldata enforceData) external returns (uint256) {
        _onlyUnderlyginVault();

        if (amount == 0) {
            revert ZeroAmount();
        }

        uint256 length = strategies.length;
        uint256[] memory amounts = new uint256[](length);
        uint256 totalAmount;
        uint256 acurredIncentives;

        for (uint256 i; i < length;) {
            amounts[i] = amount.mulDivUp(targets[i], BASIS_POINTS);
            totalAmount = totalAmount + amounts[i];
            if (amounts[i] > 0) {
                acurredIncentives = acurredIncentives + strategies[i].payBack(amounts[i], "");
            }

            unchecked {
                ++i;
            }
        }

        if (totalAmount < amount) {
            revert NotEnoughFunds();
        }

        emit PayBack(strategies, amounts, amount);

        return acurredIncentives;
    }

    function retentionRefund(uint256 amount, bytes calldata enforceData) external view returns (uint256) {
        uint256 length = strategies.length;
        uint256[] memory amounts = new uint256[](length);
        uint256 acurredIncentives;

        for (uint256 i; i < length;) {
            amounts[i] = amount.mulDivUp(targets[i], BASIS_POINTS);
            if (amounts[i] > 0) {
                acurredIncentives = acurredIncentives + strategies[i].retentionRefund(amounts[i], "");
            }

            unchecked {
                ++i;
            }
        }

        return acurredIncentives;
    }

    /* -------------------------------------------------------------------------- */
    /*                                  GOVERNOR                                  */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Set new retention received
     * @param _underlyingVault New retention received
     */
    function setUnderlyingVault(address _underlyingVault) external onlyGovernor {
        underlyingVault = _underlyingVault;
    }

    /**
     * @notice Set new targets
     * @param _targets New target values
     */
    function updateTargets(uint256[] memory _targets) external onlyGovernor {
        uint256 length = _targets.length;
        if (length != targets.length) {
            revert MissMatchLength();
        }

        uint256 totalTargets;

        for (uint256 i; i < length;) {
            totalTargets = totalTargets + _targets[i];
            targets[i] = _targets[i];

            unchecked {
                ++i;
            }
        }

        if (totalTargets != BASIS_POINTS) {
            revert InvalidTargets();
        }
    }

    function addStrategy(address _newStrategy, uint256[] memory _targets) external onlyGovernor {
        uint256 length = _targets.length;
        strategies.push(IPayBack(_newStrategy));

        if (strategies.length != length) {
            revert MissMatchLength();
        }

        delete targets;

        uint256 totalTargets;

        for (uint256 i; i < length;) {
            totalTargets = totalTargets + _targets[i];
            targets.push(_targets[i]);

            unchecked {
                ++i;
            }
        }

        if (totalTargets != BASIS_POINTS) {
            revert InvalidTargets();
        }
    }

    function removeStrategy(uint256 _strategyIndex, uint256[] memory _targets) external onlyGovernor {
        uint256 length = strategies.length - 1;

        if (_strategyIndex != length) {
            strategies[_strategyIndex] = strategies[length];
        }

        strategies.pop();

        length = _targets.length;

        if (strategies.length != length) {
            revert MissMatchLength();
        }

        delete targets;

        uint256 totalTargets;

        for (uint256 i; i < length;) {
            totalTargets = totalTargets + _targets[i];
            targets.push(_targets[i]);

            unchecked {
                ++i;
            }
        }

        if (totalTargets != BASIS_POINTS) {
            revert InvalidTargets();
        }
    }

    /**
     * @notice Moves assets from the strategy to `_to`
     * @param _assets An array of IERC20 compatible tokens to move out from the strategy
     * @param _withdrawNative `true` if we want to move the native asset from the strategy
     */
    function emergencyWithdraw(address _to, address[] memory _assets, bool _withdrawNative) external onlyGovernor {
        uint256 assetsLength = _assets.length;
        for (uint256 i = 0; i < assetsLength; i++) {
            IERC20 asset_ = IERC20(_assets[i]);
            uint256 assetBalance = asset_.balanceOf(address(this));

            if (assetBalance > 0) {
                // Transfer the ERC20 tokens
                asset_.transfer(_to, assetBalance);
            }

            unchecked {
                ++i;
            }
        }

        uint256 nativeBalance = address(this).balance;

        // Nothing else to do
        if (_withdrawNative && nativeBalance > 0) {
            // Transfer the native currency
            (bool sent,) = payable(_to).call{value: nativeBalance}("");
            if (!sent) {
                revert FailSendETH();
            }
        }

        emit EmergencyWithdrawal(msg.sender, _to, _assets, _withdrawNative ? nativeBalance : 0);
    }

    /* -------------------------------------------------------------------------- */
    /*                                  PRIVATE                                   */
    /* -------------------------------------------------------------------------- */

    function _onlyUnderlyginVault() private view {
        if (msg.sender != underlyingVault) {
            revert UnAuthorized();
        }
    }

    error UnAuthorized();
    error ZeroAmount();
    error NotEnoughFunds();
    error MissMatchLength();
    error InvalidTargets();
    error FailSendETH();

    event PayBack(IPayBack[] startegies, uint256[] amounts, uint256 amount);
    event EmergencyWithdrawal(address indexed caller, address indexed receiver, address[] tokens, uint256 nativeBalanc);
}
