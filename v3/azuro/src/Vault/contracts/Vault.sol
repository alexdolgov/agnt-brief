// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.28;

import "./interface/IOwnable.sol";
import "./interface/IVault.sol";
import "./utils/LiquidityTree.sol";
import "@uniswap/lib/contracts/libraries/TransferHelper.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";

/// @title Azuro Liquidity Vault
contract Vault is
    LiquidityTree,
    OwnableUpgradeable,
    ERC721EnumerableUpgradeable,
    IVault
{
    address public admin;
    address public override token;
    uint128 public lockedLiquidity;

    /**
     * @notice Throw if caller is not the Admin.
     */
    modifier onlyAdmin() {
        if (msg.sender != admin) revert OnlyAdmin();
        _;
    }

    /**
     * @notice Initializes the contract with the provided admin and token addresses.
     * @param token_ The address of the token used in the liquidity pool.
     */
    function initialize(address token_) external virtual override initializer {
        __Ownable_init_unchained(msg.sender);
        __ERC721_init("Azuro Liquidity Deposit", "LP-AZR");
        __liquidityTree_init();
        token = token_;
    }

    /**
     * @notice Owner: Changes the admin address.
     * @notice It is only allowed if liquidity is not locked.
     * @param newAdmin The new admin address.
     */
    function changeAdmin(address newAdmin) external onlyOwner {
        if (lockedLiquidity > 0) revert LiquidityIsLocked();
        admin = newAdmin;

        emit AdminChanged(newAdmin);
    }

    /**
     * @notice Add a private deposit to `depositor` ownership.
     * @notice Emits deposit token to `depositor`.
     * @param  depositor The deposit owner.
     * @param  amount The token's amount to deposit.
     * @return depositId The deposit ID.
     */
    function addDeposit(
        address depositor,
        uint128 amount
    ) external onlyAdmin returns (uint48 depositId) {
        if (amount == 0) revert IncorrectDeposit();

        _deposit(msg.sender, amount);

        depositId = _nodeAddLiquidity(amount);
        _mint(depositor, depositId);
    }

    /**
     * @notice Shares liquidity between liquidity deposits.
     * @param  amount The amount of liquidity to share between deposits.
     * @param  depositId The ID of the last deposit that shares the donation.
     */
    function addLiquidity(uint128 amount, uint48 depositId) external onlyAdmin {
        if (depositId >= nextNode) revert DepositDoesNotExist();
        if (amount == 0) return;

        _deposit(msg.sender, amount);
        _addLimit(amount, depositId);
    }

    /**
     * @notice Locks liquidity for a specified amount.
     * @param amount The amount of liquidity to lock.
     */
    function lockLiquidity(uint128 amount) external onlyAdmin {
        lockedLiquidity += amount;
        if (lockedLiquidity > getReserve()) revert NotEnoughLiquidity();
    }

    /**
     * @notice Unlocks previously locked liquidity for a specified amount.
     * @param amount The amount of liquidity to unlock.
     */
    function unlockLiquidity(uint128 amount) external onlyAdmin {
        uint128 lockedLiquidity_ = lockedLiquidity;
        if (amount > lockedLiquidity_) revert NotEnoughLockedLiquidity();

        lockedLiquidity = lockedLiquidity_ - amount;
    }

    /**
     * @notice Withdraws payout for a liquidity deposit.
     * @param depositId The ID of the liquidity deposit.
     * @param percent The payout share to withdraw, where `FixedMath.ONE` is 100% of the deposit balance.
     * @return withdrawnAmount The amount of withdrawn liquidity.
     */
    function withdrawDeposit(
        uint48 depositId,
        uint40 percent
    ) external onlyAdmin returns (uint128 withdrawnAmount) {
        address depositOwner = ownerOf(depositId);

        uint128 topNodeAmount = getReserve();
        uint128 balance = nodeWithdrawView(depositId);
        withdrawnAmount = _nodeWithdrawPercent(depositId, percent);

        // burn the token if the deposit is fully withdrawn
        if (withdrawnAmount == balance) _burn(depositId);

        if (withdrawnAmount > 0) {
            // check withdrawAmount allowed in ("node #1" - "active condition reinforcements")
            if (withdrawnAmount > (topNodeAmount - lockedLiquidity))
                revert LiquidityIsLocked();

            _withdraw(depositOwner, withdrawnAmount);
        }
    }

    /**
     * @notice Withdraws liquidity from the contract.
     * @param  to destination address of transfer liquidity
     * @param  depositId The ID of the last deposit that shares the loss of liquidity.
     * @param  amount The amount of liquidity to withdraw.
     */
    function withdrawLiquidityFor(
        address to,
        uint128 amount,
        uint48 depositId
    ) external onlyAdmin {
        if (amount == 0) return;

        _removeLimit(amount, depositId);
        _withdraw(to, amount);
    }

    /**
     * @notice Get the ID of the most recently made deposit.
     */
    function getLastDepositId()
        external
        view
        override
        returns (uint48 depositId)
    {
        return (nextNode - 1);
    }

    /**
     * @notice Gets the total amount of liquidity in the Pool.
     * @return reserve The total liquidity in the pool.
     */
    function getReserve() public view returns (uint128 reserve) {
        return treeNode[1].amount;
    }

    /**
     * @notice Checks if the deposit token exists (not burned).
     */
    function isDepositExists(
        uint256 depositId
    ) external view override returns (bool) {
        return _ownerOf(depositId) != address(0);
    }

    /**
     * @notice Deposits `amount` of `token` tokens from `from` balance to the contract.
     * @param from address to get liquidity from
     * @param amount The amount of tokens to deposit.
     */
    function _deposit(address from, uint128 amount) internal {
        TransferHelper.safeTransferFrom(token, from, address(this), amount);
    }

    /**
     * @notice Withdraws `amount` of tokens to `to` balance.
     * @param to The recipient of the withdrawn tokens.
     * @param amount The amount of tokens to withdraw.
     */
    function _withdraw(address to, uint128 amount) internal {
        TransferHelper.safeTransfer(token, to, amount);
    }
}
