// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "openzeppelin-contracts/contracts/access/Ownable.sol";
import {Pausable} from "openzeppelin-contracts/contracts/utils/Pausable.sol";
import {ReentrancyGuard} from "openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";

/**
 * @title ProtocolReserve
 * @notice Simple reserve contract that stores USDC.
 *         Only the owner can set shares and sweep reserves.
 */
contract ProtocolReserve is Ownable, Pausable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    constructor(address owner_, address usdc_) Ownable(owner_) {
        if (owner_ == address(0) || usdc_ == address(0)) revert InvalidRecipientAddress();
        usdc = IERC20(usdc_);
    }

    error LengthMismatch();
    error InvalidRecipientAddress();
    error TotalNot100();
    error NoBalance();
    error NoShares();
    error EmptyShares();

    IERC20 public usdc;

    uint256 public constant BPS = 10_000;

    struct Share {
        address recipient;
        uint256 bps; // parts-per-10_000 (basis points)
    }

    Share[] public shares;

    /// @notice Emitted when reserves are swept and distributed to recipients
    event ReservesSwept(address[] recipients, uint256[] amounts, uint256 total);
    
    /// @notice Emitted when share recipients or weights are updated
    event SharesUpdated(address[] recipients, uint256[] bps);

    function pause() external onlyOwner { _pause(); }
    function unpause() external onlyOwner { _unpause(); }

    // ============ Views ============

    /// @notice Current USDC balance of the reserve
    function usdcBalance() external view returns (uint256) {
        return usdc.balanceOf(address(this));
    }

    function getShares() external view returns (Share[] memory) {
        return shares;
    }

    // ============ Owner Functions ============

    /// @notice Return the list of shareholder addresses currently configured
    function getShareholders() external view returns (address[] memory) {
        uint256 len = shares.length;
        address[] memory addrs = new address[](len);
        for (uint256 i = 0; i < len; i++) {
            addrs[i] = shares[i].recipient;
        }
        return addrs;
    }

    function setShares(address[] calldata recipients, uint256[] calldata bps) external onlyOwner whenNotPaused {
        if (recipients.length != bps.length) revert LengthMismatch();
        if (recipients.length == 0) revert EmptyShares();
        delete shares;
        uint256 total = 0;
        for (uint256 i = 0; i < recipients.length; i++) {
            if (recipients[i] == address(0)) revert InvalidRecipientAddress();
            shares.push(Share({ recipient: recipients[i], bps: bps[i] }));
            total += bps[i];
        }
        if (total != BPS) revert TotalNot100();
        // Emit event for off-chain monitoring of share changes
        address[] memory addrs = new address[](recipients.length);
        for (uint256 i = 0; i < recipients.length; ++i) addrs[i] = recipients[i];
        emit SharesUpdated(addrs, bps);
    }

    // ============ Public Functions ============

    function sweepReserves() external onlyOwner whenNotPaused nonReentrant {
        uint256 bal = usdc.balanceOf(address(this));
        if (bal == 0) revert NoBalance();
        if (shares.length == 0) revert NoShares();

        uint256 len = shares.length;
        uint256[] memory amounts = new uint256[](len);
        uint256 totalDistributed = 0;

        for (uint256 i = 0; i < len; i++) {
            // amount = floor(bal * bps / BPS)
            uint256 amt = (bal * shares[i].bps) / BPS;
            amounts[i] = amt;
            if (amt > 0) {
                usdc.safeTransfer(shares[i].recipient, amt);
            }
            totalDistributed += amt;
        }

        // Distribute any remaining dust evenly by giving +1 unit to the first `remainder` recipients.
        // This is simple, deterministic, and avoids leaving any balance in the contract.
        uint256 remainder = bal - totalDistributed;
        if (remainder > 0) {
            for (uint256 i = 0; i < len && remainder > 0; ++i) {
                amounts[i] += 1;
                usdc.safeTransfer(shares[i].recipient, 1);
                totalDistributed += 1;
                remainder -= 1;
            }
        }
        address[] memory recipients = new address[](len);
        for (uint256 i = 0; i < len; i++) recipients[i] = shares[i].recipient;

        emit ReservesSwept(recipients, amounts, totalDistributed);
    }
}
