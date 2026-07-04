// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {VaultBase} from "./interfaces/VaultBase.sol";
import {Initializable} from "@openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import {Address} from "@openzeppelin/utils/Address.sol";
import {Strings} from "@openzeppelin/utils/Strings.sol";

interface ISplitVaultFactory {
    function maxGasLimitPerUser() external view returns (uint256);
}

contract SplitVault is VaultBase, Initializable {
    using Address for address payable;
    using Strings for uint256;
    using Strings for address;

    struct Recipient {
        address recipient; // recipient address
        uint16 bps; // basis points
    }

    struct UserBalance {
        uint128 accumulated; // total BNB credited to the user
        uint128 claimed; // total BNB claimed by the user
    }

    struct RecipientInfo {
        address recipient;
        uint16 bps;
        uint128 accumulated;
        uint128 claimed;
    }

    /* ========== STATE VARIABLES ========== */

    Recipient[] public recipients;
    mapping(address => UserBalance) public userBalances;
    address public taxToken;
    address public factory;

    uint256 public constant TOTAL_BPS = 10000;

    /* ========== ERRORS ========== */

    error TooManyRecipients();
    error InvalidBpsSum();
    error ZeroRecipient();
    error NoRecipients();
    error DuplicateRecipient();

    /* ========== EVENTS ========== */

    event FlapSplitVaultDistributed(uint256 amount);
    event FlapSplitVaultDispatched(address recipient, uint256 amount);
    event FlapSplitVaultClaimed(address user, uint256 amount);

    /* ========== INITIALIZATION ========== */

    function initialize(address _taxToken, Recipient[] calldata _recipients) external initializer {
        if (_recipients.length == 0) revert NoRecipients();
        if (_recipients.length > 10) revert TooManyRecipients();

        uint256 totalBps;
        for (uint256 i = 0; i < _recipients.length; i++) {
            if (_recipients[i].recipient == address(0)) revert ZeroRecipient();

            // Check for duplicate recipients
            for (uint256 j = 0; j < i; j++) {
                if (_recipients[i].recipient == _recipients[j].recipient) {
                    revert DuplicateRecipient();
                }
            }

            totalBps += _recipients[i].bps;
            recipients.push(_recipients[i]);
        }
        if (totalBps != TOTAL_BPS) revert InvalidBpsSum();

        taxToken = _taxToken;
        factory = msg.sender;
    }

    /* ========== MAIN LOGIC ========== */

    receive() external payable {
        if (msg.value > 0) {
            uint256 amount = msg.value;
            uint256 distributed;

            // Accounting
            // Use unchecked for loop variable to save gas, though solidity 0.8 checks arithmetic
            for (uint256 i = 0; i < recipients.length - 1; i++) {
                uint256 share = (amount * recipients[i].bps) / TOTAL_BPS;
                userBalances[recipients[i].recipient].accumulated += uint128(share);
                distributed += share;
            }
            // Handle dust for the last recipient
            userBalances[recipients[recipients.length - 1].recipient].accumulated += uint128(amount - distributed);

            emit FlapSplitVaultDistributed(amount);

            // Auto-Distribution
            uint256 maxGasPerUser = ISplitVaultFactory(factory).maxGasLimitPerUser();
            uint256 totalGas = recipients.length * maxGasPerUser;

            // Try to dispatch with remaining gas.
            // Even if we don't have enough gas (gasleft < totalGas), EIP-150 ensures
            // the call proceeds with 63/64 of remaining gas, potentially allowing partial
            // execution or simply failing inside the try-catch block without reverting the main transaction.
            try this.dispatch{gas: totalGas}() {
                // Success
            } catch {
                // Fail silently, funds remain in accumulated
            }
        }
    }

    function dispatch() external {
        for (uint256 i = 0; i < recipients.length; i++) {
            address recipient = recipients[i].recipient;
            UserBalance storage balance = userBalances[recipient];
            uint256 claimable = balance.accumulated - balance.claimed;

            if (claimable > 0) {
                // Determine update prior to transfer to prevent re-entrancy (though we use sendValue which is safe-ish, checks-effects-interactions is best)
                balance.claimed += uint128(claimable);

                // If transfer fails, the entire transaction reverts
                payable(recipient).sendValue(claimable);

                emit FlapSplitVaultDispatched(recipient, claimable);
            }
        }
    }

    function claim(address user) external {
        UserBalance storage balance = userBalances[user];
        uint256 claimable = balance.accumulated - balance.claimed;
        require(claimable > 0, "No funds to claim");

        balance.claimed += uint128(claimable);
        payable(user).sendValue(claimable);

        emit FlapSplitVaultClaimed(user, claimable);
    }

    /* ========== VIEW FUNCTIONS ========== */

    /**
     * @notice Returns detailed information for all recipients
     * @return info Array of RecipientInfo structs containing recipient address, bps, and balance details
     */
    function getRecipientsInfo() external view returns (RecipientInfo[] memory) {
        RecipientInfo[] memory info = new RecipientInfo[](recipients.length);
        for (uint256 i = 0; i < recipients.length; i++) {
            Recipient memory r = recipients[i];
            UserBalance memory b = userBalances[r.recipient];
            info[i] =
                RecipientInfo({recipient: r.recipient, bps: r.bps, accumulated: b.accumulated, claimed: b.claimed});
        }
        return info;
    }

    function _formatAmount(uint256 amount) private pure returns (string memory) {
        if (amount == 0) {
            return "0";
        }
        if (amount < 1e14) {
            return "< 0.0001";
        }

        uint256 integerPart = amount / 1e18;
        uint256 decimalPart = (amount % 1e18) / 1e14;

        string memory decimalStr = decimalPart.toString();

        if (decimalPart < 10) {
            decimalStr = string(abi.encodePacked("000", decimalStr));
        } else if (decimalPart < 100) {
            decimalStr = string(abi.encodePacked("00", decimalStr));
        } else if (decimalPart < 1000) {
            decimalStr = string(abi.encodePacked("0", decimalStr));
        }

        return string(abi.encodePacked(integerPart.toString(), ".", decimalStr));
    }

    function _formatPercentage(uint256 bps) private pure returns (string memory) {
        uint256 integerPart = bps / 100;
        uint256 decimalPart = bps % 100;

        if (decimalPart == 0) {
            return string(abi.encodePacked(integerPart.toString(), "%"));
        }

        if (decimalPart % 10 == 0) {
            return string(abi.encodePacked(integerPart.toString(), ".", (decimalPart / 10).toString(), "%"));
        }

        string memory decimalStr = decimalPart.toString();
        if (decimalPart < 10) {
            decimalStr = string(abi.encodePacked("0", decimalStr));
        }

        return string(abi.encodePacked(integerPart.toString(), ".", decimalStr, "%"));
    }

    function description() public view override returns (string memory) {
        // "Split Vault for [Token]"
        string memory desc = string(abi.encodePacked("Split Vault for ", taxToken.toHexString()));

        desc = string(abi.encodePacked(desc, " distributing to ", recipients.length.toString(), " recipients: "));

        for (uint256 i = 0; i < recipients.length; i++) {
            desc = string(
                abi.encodePacked(
                    desc,
                    "\n- ",
                    recipients[i].recipient.toHexString(),
                    ": ",
                    _formatPercentage(recipients[i].bps),
                    ". Acc: ",
                    _formatAmount(userBalances[recipients[i].recipient].accumulated),
                    " Claimed: ",
                    _formatAmount(userBalances[recipients[i].recipient].claimed)
                )
            );
        }

        return desc;
    }
}
