// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import "@openzeppelin/ReentrancyGuard.sol";
import "@openzeppelin/SafeERC20.sol";
import "./dependencies/balancer/IFlashLoanRecipient.sol";
import "./Executor.sol";
import "src/v2/interfaces/IHooks.sol";
import "src/v2/interfaces/IVault.sol";

/// @notice Interface that is tied to the current default hooks implementation.
interface IHooksExtended is IHooks {
    /// @notice Verify if Target and SigHash are permitted.
    function targetSighashAllowed(
        address target,
        bytes4 selector
    ) external view returns (bool);
}

/// @notice Execution details for a flash loan operation.
/// @param operations Operations[] for operations to execute with flashloaned assets.
/// @param sweepTokens List of asset to sweep to owner after repaying flashloan with remaining funds.
struct FlashLoanUserData {
    Operation[] operations;
    address[] sweepTokens;
}

/// @title AeraFlashLoanRecipient.
/// @notice Aera peripheral contract to allow the vault to use Balancer Flash Loans.
contract AeraFlashLoanRecipient is
    IFlashLoanRecipient,
    ReentrancyGuard,
    Executor
{
    using SafeERC20 for IERC20;

    /// @notice Balancer Vault address.
    address private constant _BVAULT_ADDR =
        address(0xBA12222222228d8Ba445958a75a0704d566BF2C8);

    /// STORAGE ///

    /// @notice Aera Vault Address.
    IVault public immutable vault;

    /// @notice Contract lock.
    uint256 private _lock;

    /// EVENTS ///

    /// @notice Emitted when flash loan recipient is created.
    /// @param vault Address of vault.
    event FlashLoanRecipientCreated(address indexed vault);

    /// @notice Emitted when token is swept after repaying flash loan.
    /// @param asset Address of asset swept.
    /// @param amount uint256 of asset swept.
    /// @param owner Address of owner.
    event TokenSwept(
        address indexed asset, uint256 amount, address indexed owner
    );

    /// ERRORS ///

    error AeraPeriphery__CallIsNotAllowed(address target, bytes4 selector);
    error AeraPeriphery__FlashLoanRecipientCallerIsNotBVault();
    error AeraPeriphery__FlashLoanExecutionFailed(uint256 index, bytes result);
    error AeraPeriphery__UnableToRepayLoan(
        address token, uint256 loanAmount, uint256 balanceAfter
    );
    error AeraPeriphery__ExecuteTargetIsHooksAddress();
    error AeraPeriphery__ExecuteTargetIsThisContract();
    error AeraPeriphery__CallerIsNotVault();
    error AeraPeriphery__ContractIsLocked();
    error AeraPeriphery__VaultIsZeroAddress();

    /// MODIFIERS ///

    /// @dev Throws if called by any account other than the Balancer vault.
    modifier onlyBVault() {
        if (msg.sender != _BVAULT_ADDR) {
            revert AeraPeriphery__FlashLoanRecipientCallerIsNotBVault();
        }
        _;
    }

    modifier onlyVault() {
        if (msg.sender != address(vault)) {
            revert AeraPeriphery__CallerIsNotVault();
        }
        _;
    }

    modifier whenUnlocked() {
        if (_lock != block.number) {
            revert AeraPeriphery__ContractIsLocked();
        }
        _;
    }

    /// FUNCTIONS ///

    constructor(address vault_) ReentrancyGuard() {
        if (vault_ == address(0)) {
            revert AeraPeriphery__VaultIsZeroAddress();
        }
        // Effects: initialize state variables.
        vault = IVault(vault_);

        // Log the creation of the flash loan recipient contract.
        emit FlashLoanRecipientCreated(vault_);
    }

    /// @notice Unlock the contract for flash loan.
    function unlockReceiveFlashLoan() external onlyVault {
        // Effects: unlocks contract for current block.
        _lock = block.number;
    }

    /// @inheritdoc IFlashLoanRecipient
    function receiveFlashLoan(
        IERC20[] calldata tokens,
        uint256[] calldata amounts,
        uint256[] calldata feeAmounts,
        bytes calldata userData
    ) external override nonReentrant onlyBVault whenUnlocked {
        // Effects: reset lock.
        _lock = 0;

        FlashLoanUserData memory flashLoanUserData =
            abi.decode(userData, (FlashLoanUserData));

        // Requiremements, interactions and invariants: execute operations.
        _executeOperations(flashLoanUserData);

        // NOTE: due to some wierd bug in IR optimizer we cannot pass `amounts` and `feeAmounts`
        // arrays directly to `_doRepayment` function, so we need to sum them up.
        uint256 numTokens = tokens.length;
        uint256[] memory repayAmounts = new uint256[](numTokens);
        for (uint256 i = 0; i < numTokens;) {
            repayAmounts[i] = amounts[i] + feeAmounts[i];
            unchecked {
                i++;
            } // gas savings
        }
        _doRepayment(tokens, repayAmounts);

        // Interactions: return leftover tokens.
        _sweepTokens(flashLoanUserData.sweepTokens);
    }

    /// @dev Executes operations encoded in the userData.
    function _executeOperations(FlashLoanUserData memory flashLoanUserData)
        internal
    {
        IHooksExtended hooks = IHooksExtended(address(vault.hooks()));
        uint256 numOperations = flashLoanUserData.operations.length;
        bytes4 selector;
        bool success;
        bytes memory result;
        for (uint256 i = 0; i < numOperations;) {
            Operation memory operation = flashLoanUserData.operations[i];

            selector = bytes4(operation.data);

            // Requirements: validate that the target sighash combination is allowed.
            if (!hooks.targetSighashAllowed(operation.target, selector)) {
                revert AeraPeriphery__CallIsNotAllowed(
                    operation.target, selector
                );
            }
            // Interactions: execute operation.
            // slither-disable-next-line arbitrary-send-eth
            (success, result) =
                operation.target.call{value: operation.value}(operation.data);

            // Invariants: confirm that operation succeeded.
            if (!success) {
                revert AeraPeriphery__FlashLoanExecutionFailed(i, result);
            }

            unchecked {
                i++;
            } // gas savings
        }
    }

    /// @dev Performs flash loan repayment if possible.
    function _doRepayment(
        IERC20[] calldata tokens,
        uint256[] memory amounts
    ) internal {
        // Invariants: check there is enough token for repayment.
        uint256 n = tokens.length;
        for (uint256 i = 0; i < n;) {
            uint256 paybackAmount = amounts[i];
            IERC20 token = tokens[i];
            uint256 balance = token.balanceOf(address(this));
            if (balance < paybackAmount) {
                revert AeraPeriphery__UnableToRepayLoan(
                    address(token), amounts[i], balance
                );
            }
            // Interactions: repay given token.
            token.safeTransfer(_BVAULT_ADDR, paybackAmount);
            unchecked {
                i++;
            } // gas savings
        }
    }

    /// @notice Sweep remaining tokens to the vault.
    function _sweepTokens(address[] memory tokens) internal {
        uint256 numSweepTokens = tokens.length;
        uint256 sweepAmount;
        for (uint256 i = 0; i < numSweepTokens;) {
            IERC20 token = IERC20(tokens[i]);
            sweepAmount = token.balanceOf(address(this));
            if (sweepAmount > 0) {
                // Interactions: return token.
                token.safeTransfer(address(vault), sweepAmount);

                // Log that a token was returned.
                emit TokenSwept(address(token), sweepAmount, address(vault));
            }
            unchecked {
                i++;
            } // gas savings
        }
    }

    /// @inheritdoc Executor
    function _checkOperations(Operation[] calldata operations)
        internal
        view
        override
        onlyVault
    {}

    /// @inheritdoc Executor
    function _checkOperation(Operation calldata operation)
        internal
        view
        override
    {
        // Requirements: check that the target contract is not this contract.
        if (operation.target == address(this)) {
            revert AeraPeriphery__ExecuteTargetIsThisContract();
        }
    }
}
