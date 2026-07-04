// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {OwnableRoles} from "solady/auth/OwnableRoles.sol";
import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";
import {IVault} from "../interfaces/IVault.sol";
import {ERC20} from "solady/tokens/ERC20.sol";
import {ILiquidationBuffer} from "../interfaces/ILiquidationBuffer.sol";
import {IPositionManager} from "../interfaces/IPositionManager.sol";

contract LiquidationBuffer is OwnableRoles, ILiquidationBuffer {
    using FixedPointMathLib for uint256;

    uint256 public constant DEPOSITOR_ROLE = _ROLE_0;
    uint256 public constant REDEEMER_ROLE = _ROLE_1;
    IPositionManager public immutable POSITION_MANAGER;

    uint256 public debtThresholdPercentage = 0.5e18;

    mapping(uint8 => uint256) public deposits;
    mapping(uint8 => uint256) public claimableExcess;

    event Deposit(uint8 indexed vault, uint256 amount);
    event Redemption(uint8 indexed vault, address indexed to, uint256 amount);

    error ClaimExessBelowMin();

    constructor(address _positionManagerAddress) {
        _initializeOwner(msg.sender);
        POSITION_MANAGER = IPositionManager(_positionManagerAddress);
    }

    function setDebtThresholdPercentage(uint256 _newThreshold) external onlyOwner {
        debtThresholdPercentage = _newThreshold;
    }

    function claimExcess(uint8 _vaultId, uint256 _minRedemption) external onlyOwner {
        uint256 excess = claimableExcess[_vaultId];
        claimableExcess[_vaultId] = 0;

        if (excess > 0) {
            uint256 redeemed =
                IVault(POSITION_MANAGER.getVault(_vaultId).addr).redeem(excess, msg.sender, address(this));

            if (redeemed < _minRedemption) {
                revert ClaimExessBelowMin();
            }
        }
    }

    function notifyDeposit(uint8 _vault, uint256 _amount) external onlyRoles(DEPOSITOR_ROLE) {
        IPositionManager.VaultData memory vaultData = POSITION_MANAGER.getVault(_vault);
        uint256 price = IVault(vaultData.addr).sharePrice();

        uint256 currentDeposit = deposits[_vault] + _amount;
        uint256 currentDepositUsd = currentDeposit.mulWad(price);

        uint256 threshold = vaultData.debtSnapshot.mulWad(debtThresholdPercentage);

        if (currentDepositUsd > threshold) {
            uint256 excessUsd = currentDepositUsd - threshold;
            uint256 excess = excessUsd.divWad(price);

            claimableExcess[_vault] += excess;
            deposits[_vault] = currentDeposit - excess;
        } else {
            deposits[_vault] = currentDeposit;
        }

        emit Deposit(_vault, _amount);
    }

    function redeem(uint8 _vault, address _to, uint256 _amount) external onlyRoles(REDEEMER_ROLE) returns (uint256) {
        deposits[_vault] -= _amount;

        emit Redemption(_vault, _to, _amount);

        return IVault(POSITION_MANAGER.getVault(_vault).addr).redeem(_amount, _to, address(this));
    }
}
