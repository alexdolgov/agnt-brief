// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/Address.sol";

contract Airdrop is AccessControl, ReentrancyGuard {
    using Address for address payable;
    using SafeERC20 for IERC20;

    /// @notice The right part is the keccak-256 hash of variable name
    bytes32 public constant GATEKEEPER = bytes32(0x20162831d2f54c3e11eebafebfeda495d4c52c67b1708251179ec91fb76dd3b2);

    event airdroppedNative(address recipient, uint256 amount);
    event airdroppedERC20(address recipient, uint256 amount, address token);

    constructor(address admin) {
        _setupRole(DEFAULT_ADMIN_ROLE, admin);
        _setupRole(GATEKEEPER, admin);
    }

    function airdropNative(address[] calldata recipients, uint256[] calldata amounts)
        external
        payable
        nonReentrant
        onlyRole(GATEKEEPER)
    {
        require(recipients.length == amounts.length, "Airdrop: Recipients and amounts length mismatch");

        uint256 receivedAmount = msg.value;
        uint256 totalAmountDistributed = 0;

        for (uint256 i = 0; i < recipients.length; i++) {
            totalAmountDistributed += amounts[i];

            emit airdroppedNative(recipients[i], amounts[i]);

            payable(recipients[i]).sendValue(amounts[i]);
        }

        require(totalAmountDistributed <= receivedAmount, "Airdrop: distributed more then required");

        if (totalAmountDistributed < receivedAmount) {
            uint256 remainingAmount = receivedAmount - totalAmountDistributed;
            payable(msg.sender).sendValue(remainingAmount);
        }
    }

    function airdropERC20(
        address token,
        address[] calldata recipients,
        uint256[] calldata amounts,
        uint256 totalAmount
    ) external nonReentrant onlyRole(GATEKEEPER) {
        require(recipients.length == amounts.length, "Airdrop: Recipients and amounts length mismatch");

        IERC20 erc20 = IERC20(token);

        uint256 totalAmountDistributed = 0;

        erc20.safeTransferFrom(msg.sender, address(this), totalAmount);

        for (uint256 i = 0; i < recipients.length; i++) {
            totalAmountDistributed += amounts[i];

            emit airdroppedERC20(recipients[i], amounts[i], token);

            erc20.safeTransfer(recipients[i], amounts[i]);
        }

        require(totalAmountDistributed <= totalAmount, "Airdrop: distributed more then required");

        if (totalAmountDistributed < totalAmount) {
            uint256 remainingAmount = totalAmount - totalAmountDistributed;

            erc20.safeTransfer(msg.sender, remainingAmount);
        }
    }

    function sweepTokens(address token, address to) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (token == address(0)) {
            // Sweep Native
            uint256 balance = address(this).balance;
            require(balance > 0, "Airdrop: No ETH to sweep");
            payable(to).sendValue(balance);
        } else {
            // Sweep ERC20
            IERC20 erc20 = IERC20(token);
            uint256 balance = erc20.balanceOf(address(this));
            require(balance > 0, "Airdrop: No ERC20 tokens to sweep");
            erc20.safeTransfer(to, balance);
        }
    }
}
