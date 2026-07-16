// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { UNIT, ZERO } from "@prb/math/src/UD60x18.sol";
import "solady/src/utils/FixedPointMathLib.sol";
import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "contracts/libraries/types/Vault.sol";
import "contracts/libraries/Errors.sol";

abstract contract StrategyVaultStorage is ERC20Upgradeable {
    using SafeERC20 for IERC20;
    using FixedPointMathLib for uint256;

    /// @custom:storage-location erc7201:omega.storage.StrategyVault
    struct BaseStorage {
        /// @dev Asset that is deposited into the vault and received by a recipient on withdrawal.
        IERC20 baseAsset;
        /// @dev Amount of base asset deposited into the vault.
        uint256 totalBaseDeposit;
        Vault.Parameters vaultParams;
        mapping(address => uint256) baseDepositAmounts;
    }

    // keccak256(abi.encode(uint256(keccak256("omega.storage.StrategyVault")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant BaseStorageLocation = 0x6082726b3a0a462eb1d87ac85c6fa829706ac5bbbb799c2c7c67fb3024449f00;

    function _getStrategyVaultStorage() internal pure returns (BaseStorage storage s) {
        assembly {
            s.slot := BaseStorageLocation
        }
    }

    function __StrategyVaultStorage_init(Vault.BaseInitProps memory params, Vault.Parameters memory config) internal {
        __ERC20_init(params.vaultName, params.vaultSymbol);
        BaseStorage storage $ = _getStrategyVaultStorage();
        $.baseAsset = IERC20(params.baseAsset);
        $.vaultParams = config;
    }

    function _processDeposit(
        uint256 assets,
        address recipient,
        address feeCollector
    )
        internal
        returns (uint256 depositedAmount, uint256 depositFee)
    {
        BaseStorage storage $ = _getStrategyVaultStorage();

        if (assets == 0) revert Errors.ParamCannotBeZero();

        $.baseAsset.safeTransferFrom(recipient, address(this), assets);

        depositFee = 0;
        if ($.vaultParams.depositFee > ZERO) {
            depositFee = (ud(assets) * $.vaultParams.depositFee).unwrap();
            $.baseAsset.safeTransfer(feeCollector, depositFee);
        }

        depositedAmount = assets - depositFee;

        $.totalBaseDeposit += depositedAmount;
        $.baseDepositAmounts[recipient] += depositedAmount;

        if ($.vaultParams.totalDepositCap != type(uint256).max && $.totalBaseDeposit > $.vaultParams.totalDepositCap) {
            revert Errors.DepositCapExceeded();
        }

        if (
            $.vaultParams.maxDepositPerAccount != type(uint256).max
                && $.baseDepositAmounts[recipient] > $.vaultParams.maxDepositPerAccount
        ) revert Errors.MaxDepositPerAccountExceeded();
    }

    function _beforeAmountChange(address account, uint256 amount) internal virtual { }

    function _afterAmountChange(address account, uint256 amount) internal virtual {
        BaseStorage storage $ = _getStrategyVaultStorage();
        $.totalBaseDeposit = $.totalBaseDeposit.zeroFloorSub(amount);

        if (balanceOf(account) > 0) {
            $.baseDepositAmounts[account] = $.baseDepositAmounts[account].zeroFloorSub(amount);
        } else {
            $.baseDepositAmounts[account] = 0;
        }
    }
}
