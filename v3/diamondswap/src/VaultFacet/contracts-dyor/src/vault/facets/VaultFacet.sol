// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { ReentrancyGuardTransient } from "@common/contracts/ReentrancyGuardTransient.sol";
import { Authorizable } from "@auth/Authorizable.sol";
import { Facet } from "@internal/eip2535/Facet.sol";

import { VaultLayout, VaultStorage, VaultAccount, VaultWithdrawal } from "../storage/VaultStorage.sol";

import { EIP712 } from "@signatures/EIP712.sol";

import { SignatureVerification } from "@signatures/libraries/SignatureVerification.sol";
import { WithdrawalHash } from "../signatures/WithdrawalHash.sol";

contract VaultFacet is Authorizable, Facet, EIP712, ReentrancyGuardTransient {
    using SignatureVerification for bytes;
    using WithdrawalHash for VaultWithdrawal;

    IERC20 immutable usdc;
    address immutable depositAddress;

    constructor(address usdcAddress, address _depositAddress) payable EIP712("VaultFacet", "1") {
        usdc = IERC20(usdcAddress);
        depositAddress = _depositAddress;
    }

    error InvalidAmount();
    error InvalidNonce();

    event Deposit(address indexed to, uint256 tokenAmount);
    event Withdrawal(address indexed to, uint256 tokenAmount);
    event Debit(address indexed account, address indexed to, uint256 tokenAmount);

    function deposit(uint256 amount) external nonreentrant {
        SafeERC20.safeTransferFrom(usdc, msg.sender, address(this), amount);
        VaultAccount storage account = VaultStorage.layout().accounts[msg.sender];
        account.nonce++;
        account.balance += amount;
        emit Deposit(msg.sender, amount);
    }

    function getVaultAccount(address account) external view returns (VaultAccount memory) {
        return VaultStorage.layout().accounts[account];
    }

    function debitAccount(address account, uint256 amount) external nonreentrant requiresAuthorization {
        VaultStorage.layout().accounts[account].balance -= amount;
        SafeERC20.safeTransfer(usdc, depositAddress, amount);
        emit Debit(account, depositAddress, amount);
    }

    function withdraw(VaultWithdrawal calldata withdrawal, bytes calldata signature)
        external
        nonreentrant
        requiresAuthorization
    {
        address to = withdrawal.to;
        signature.verify(_hashTypedData(withdrawal.hash()), to);
        uint256 nonce = withdrawal.nonce;
        VaultAccount storage account = VaultStorage.layout().accounts[to];
        if (account.nonce != nonce) {
            revert InvalidNonce();
        }
        uint256 tokenAmount = withdrawal.tokenAmount;
        uint256 accountBalance = account.balance;
        if (accountBalance < tokenAmount) {
            revert InvalidAmount();
        }
        account.nonce++;
        account.balance = accountBalance - tokenAmount;
        SafeERC20.safeTransfer(usdc, to, tokenAmount);
        emit Withdrawal(to, tokenAmount);
    }
}
