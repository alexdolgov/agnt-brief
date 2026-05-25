// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {MintBurnOFTAdapter} from "@layerzerolabs/oft-evm/contracts/MintBurnOFTAdapter.sol";
import {Fee} from "@layerzerolabs/oft-evm/contracts/Fee.sol";
import {IMintableBurnable} from "@layerzerolabs/oft-evm/contracts/interfaces/IMintableBurnable.sol";

/**
 * @title FiaBTCOFTAdapter
 * @notice LayerZero OFT Adapter with fee collection for FiaBTC token
 * @dev This adapter enables cross-chain transfers with configurable fees that are collected by the contract owner
 * @custom:security-contact security@fiammalabs.io
 */
contract FiaBTCOFTAdapter is MintBurnOFTAdapter, Fee {
    using SafeERC20 for IERC20;

    /// @notice Emitted when fees are withdrawn by the owner
    event FeeWithdrawn(address indexed to, uint256 amount);

    /// @notice Error thrown when there are no fees to withdraw
    error NoFeesToWithdraw();

    /**
     * @notice Constructor for the FiaBTCOFTAdapter
     * @param _token Address of the FiaBTC token contract
     * @param _lzEndpoint Address of the LayerZero endpoint on this chain
     * @param _delegate Address that will have administrative control over the adapter
     * @dev The adapter will need MINTER_ROLE and BURNER_ROLE on the token contract
     */
    constructor(address _token, address _lzEndpoint, address _delegate)
        MintBurnOFTAdapter(_token, IMintableBurnable(_token), _lzEndpoint, _delegate)
        Ownable(_delegate)
    {}

    /**
     * @notice Calculates the amount to be sent and received after applying fees
     * @param _amountLD The amount of tokens to send in local decimals
     * @param _minAmountLD The minimum amount to send in local decimals
     * @param _dstEid The destination chain ID
     * @return amountSentLD The amount sent in local decimals
     * @return amountReceivedLD The amount received in local decimals on the remote (after fee deduction)
     */
    function _debitView(uint256 _amountLD, uint256 _minAmountLD, uint32 _dstEid)
        internal
        view
        virtual
        override
        returns (uint256 amountSentLD, uint256 amountReceivedLD)
    {
        amountSentLD = _amountLD;

        // Calculate and deduct fee
        uint256 fee = getFee(_dstEid, _amountLD);
        amountReceivedLD = _removeDust(_amountLD - fee);

        // Check for slippage
        if (amountReceivedLD < _minAmountLD) {
            revert SlippageExceeded(amountReceivedLD, _minAmountLD);
        }
    }

    /**
     * @notice Burns tokens from sender and handles fee collection
     * @param _from The address to debit tokens from
     * @param _amountLD The amount of tokens to send in local decimals
     * @param _minAmountLD The minimum amount to send in local decimals
     * @param _dstEid The destination chain ID
     * @return amountSentLD The amount sent in local decimals
     * @return amountReceivedLD The amount received in local decimals on the remote
     */
    function _debit(address _from, uint256 _amountLD, uint256 _minAmountLD, uint32 _dstEid)
        internal
        virtual
        override
        returns (uint256 amountSentLD, uint256 amountReceivedLD)
    {
        // Calculate fee and amounts
        (amountSentLD, amountReceivedLD) = _debitView(_amountLD, _minAmountLD, _dstEid);

        // Burn the full amount from sender
        minterBurner.burn(_from, amountSentLD);

        // Mint the fee amount to this contract for later withdrawal
        uint256 fee = amountSentLD - amountReceivedLD;
        if (fee > 0) {
            minterBurner.mint(address(this), fee);
        }
    }

    /**
     * @notice Mints tokens to the specified address upon receiving cross-chain transfer
     * @param _to The address to credit tokens to
     * @param _amountLD The amount of tokens to credit in local decimals
     * @return amountReceivedLD The amount of tokens actually received in local decimals
     */
    function _credit(address _to, uint256 _amountLD, uint32 /* _srcEid */ )
        internal
        virtual
        override
        returns (uint256 amountReceivedLD)
    {
        if (_to == address(0x0)) _to = address(0xdead);

        // Mint tokens directly to the recipient
        minterBurner.mint(_to, _amountLD);
        return _amountLD;
    }

    /**
     * @notice Withdraws accumulated fees to a specified address
     * @param _to The address to send the fees to
     * @dev Only callable by the contract owner
     */
    function withdrawFees(address _to) external onlyOwner {
        require(_to != address(0), "Invalid recipient address");

        uint256 balance = IERC20(token()).balanceOf(address(this));
        if (balance == 0) revert NoFeesToWithdraw();

        IERC20(token()).safeTransfer(_to, balance);
        emit FeeWithdrawn(_to, balance);
    }

    /**
     * @notice Gets the current fee balance accumulated in the contract
     * @return The amount of fees available for withdrawal
     */
    function getFeeBalance() external view returns (uint256) {
        return IERC20(token()).balanceOf(address(this));
    }
}
