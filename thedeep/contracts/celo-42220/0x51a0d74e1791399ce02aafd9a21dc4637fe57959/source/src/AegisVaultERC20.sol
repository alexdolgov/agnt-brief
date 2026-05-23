// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.7.6;
pragma abicoder v2;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { IQuoter } from "@uniswap/v3-periphery/contracts/interfaces/IQuoter.sol";

import { SymbolLib } from "./lib/SymbolLib.sol";
import { ERC20Initializable } from "./base/ERC20Initializable.sol";
import { AegisVaultCore } from "./base/AegisVaultCore.sol";

import { IICHIVault } from "./interfaces/external/ichi/IICHIVault.sol";

import "./interfaces/IAegisVault.sol";

/// @title AegisVaultERC20
/// @notice Aegis Vault Contract manages the transition of a single (deposit) token
/// into a diversified two-token position using two ICHI vaults (Deposit Vault and Target Vault)
/// The two vaults are managed by the same ICHI Vault Factory, and share the same token0 and token1.
/// The difference is that the Deposit Vault accepts only the deposit token
/// while the Target Vault accepts only the target token
///
/// This is the ERC20 version of the AegisVault.
/// The user receives ERC20 tokens that represent their shares in the vault.
contract AegisVaultERC20 is AegisVaultCore, ERC20Initializable {
    /// @dev Prevents implementation from being initialized later
    constructor() initializer { }

    /// @inheritdoc IAegisVault
    function initialize(
        IQuoter _quoter,
        IERC20 _depositToken,
        IERC20 _targetToken,
        IICHIVault _depositVault,
        IICHIVault _targetVault,
        address __owner,
        uint256 _vaultIndex
    )
        external
        override
        initializer
    {
        string memory symbol = SymbolLib.computeIDVsymbol(address(_depositToken), address(_targetToken), _vaultIndex);
        __ERC20_init("Solo Aegis Vault", symbol);
        __AegisVaultCore_init(_quoter, _depositToken, _targetToken, _depositVault, _targetVault, __owner, _vaultIndex);
    }

    /// @inheritdoc IAegisVaultConstants
    function isERC20() external pure override returns (bool) {
        return true;
    }

    /// @inheritdoc IAegisVaultDerivedState
    function getUserBalance(address account) external view override returns (uint256 shares, uint256 depositAmount, uint256 targetAmount) {
        return _getUserBalance(totalSupply(), balanceOf(account));
    }

    /// @inheritdoc IAegisVaultDerivedState
    function getTotalAmounts() public view override returns (uint256 totalShares, uint256 depositTotal, uint256 targetTotal) {
        totalShares = totalSupply();
        (depositTotal, targetTotal) = _getTotalAmounts();
    }

    /// @inheritdoc IAegisVaultActions
    function deposit(
        uint256 amount,
        uint256 minimumAegisShares,
        address to,
        bool doDepositIchiShares
    )
        external
        override
        nonReentrant
        whenNotPaused
        returns (uint256 aegisShares)
    {
        aegisShares = _deposit(amount, minimumAegisShares, to, doDepositIchiShares, totalSupply());
        _mint(to, aegisShares);
    }

    /// @inheritdoc IAegisVaultActions
    function withdraw(
        uint256 aegisShares,
        address to,
        WithdrawSlippageData memory minSlippage,
        WithdrawType withdrawType
    )
        external
        override
        nonReentrant
        returns (WithdrawSlippageData memory actualSlippage)
    {
        uint256 aegisSharesWithdrawn;
        (actualSlippage, aegisSharesWithdrawn) = _withdraw(aegisShares, totalSupply(), to, minSlippage, withdrawType);
        // NOTE: even though it would make sense to do a balance check at the start and revert early if aegisShares exceeds balance
        // thus saving gas in such a case we instead choose to revert later to reduce code and save bytecode size
        _burn(msg.sender, aegisSharesWithdrawn); // will revert if burn amount exceeds balance
    }
}
