// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.7.6;
pragma abicoder v2;

import { SafeMath } from "@openzeppelin/contracts/math/SafeMath.sol";
import { Initializable } from "@openzeppelin/contracts/proxy/Initializable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { IQuoter } from "@uniswap/v3-periphery/contracts/interfaces/IQuoter.sol";

import { SymbolLib } from "./lib/SymbolLib.sol";
import { AegisVaultCore } from "./base/AegisVaultCore.sol";

import { IICHIVault } from "./interfaces/external/ichi/IICHIVault.sol";

import "./interfaces/IAegisVault.sol";

/// @title AegisVault
/// @notice Manages the transition of a single deposit token into a diversified two-token position
/// using two ICHI vaults (Deposit Vault and Target Vault).
/// The two vaults are managed by the same ICHI Vault Factory, and share the same token0 and token1.
/// The differences is that the Deposit Vault accepts only the deposit token
/// while the Target Vault accepts only the target token
/// @dev This is a non-ERC20 version of the AegisVault. The contract keeps an internal ledger of user balances.
///
/// Error Codes:
///     SEB - Shares exceed balance
contract AegisVault is AegisVaultCore, Initializable {
    using SafeMath for uint256;

    /// @dev Mapping of user addresses to their balance of Aegis shares
    mapping(address => uint256) private _balances;

    /// @dev Total supply of Aegis shares
    uint256 private _totalSupply;

    /// @dev Name of the Aegis vault
    string private _name;

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
        _name = SymbolLib.computeIDVsymbol(address(_depositToken), address(_targetToken), _vaultIndex);
        __AegisVaultCore_init(_quoter, _depositToken, _targetToken, _depositVault, _targetVault, __owner, _vaultIndex);
    }

    /// @inheritdoc IAegisVaultConstants
    function isERC20() external pure override returns (bool) {
        return false;
    }

    /// @notice Returns the name of the vault
    function name() external view returns (string memory) {
        return _name;
    }

    /// @inheritdoc IAegisVaultDerivedState
    function getUserBalance(address account) external view override returns (uint256 shares, uint256 depositAmount, uint256 targetAmount) {
        return _getUserBalance(_totalSupply, _balances[account]);
    }

    /// @inheritdoc IAegisVaultDerivedState
    function getTotalAmounts() public view override returns (uint256 totalShares, uint256 depositTotal, uint256 targetTotal) {
        totalShares = _totalSupply;
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
        aegisShares = _deposit(amount, minimumAegisShares, to, doDepositIchiShares, _totalSupply);
        _totalSupply = _totalSupply.add(aegisShares);
        _balances[to] = _balances[to].add(aegisShares);
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
        (actualSlippage, aegisSharesWithdrawn) = _withdraw(aegisShares, _totalSupply, to, minSlippage, withdrawType);
        // NOTE: even though it would make sense to do a balance check at the start and revert early if aegisShares exceeds balance
        // thus saving gas in such a case we instead choose to revert later to reduce code and save bytecode size
        _balances[msg.sender] = _balances[msg.sender].sub(aegisSharesWithdrawn, "SEB"); // will revert if burn amount exceeds balance
        _totalSupply = _totalSupply.sub(aegisSharesWithdrawn);
    }
}
