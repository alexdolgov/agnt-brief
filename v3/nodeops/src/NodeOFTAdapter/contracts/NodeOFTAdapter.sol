// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { OFTAdapterUpgradeable } from "@layerzerolabs/oft-evm-upgradeable/contracts/oft/OFTAdapterUpgradeable.sol";
import { Errors } from "./libraries/Errors.sol";

/**
 * @title OFTAdapter Contract
 * @dev OFTAdapter is a contract that adapts an ERC-20 token to the OFT functionality.
 *
 * @dev For existing ERC20 tokens, this can be used to convert the token to crosschain compatibility.
 * @dev WARNING: ONLY 1 of these should exist for a given global mesh,
 * unless you make a NON-default implementation of OFT and needs to be done very carefully.
 * @dev WARNING: The default OFTAdapter implementation assumes LOSSLESS transfers, ie. 1 token in, 1 token out.
 * IF the 'innerToken' applies something like a transfer fee, the default will NOT work...
 * a pre/post balance check will need to be done to calculate the amountSentLD/amountReceivedLD.
 */
contract NodeOFTAdapter is OFTAdapterUpgradeable {
    using SafeERC20 for IERC20;

    /// @notice Fee per transaction in wei
    uint256 public feePerTx;
    
    /// @notice Transfer allowed timestamp for anti-sniping
    uint256 public transferAllowedTimestamp;
    
    /// @notice Whitelist mapping for early transfers
    mapping(address => bool) public whitelist;
    
    /// @notice Storage gap for future upgrades
    uint256[22] private __gap;

    /// @notice Events
    event TransferFeeUpdated(uint256 oldFee, uint256 newFee);
    event NewTransferAllowedTimestamp(uint256 newTimestamp);
    event WhitelistAdded(address user);
    event WhitelistRemoved(address user);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(address _token, address _lzEndpoint) 
        OFTAdapterUpgradeable(_token, _lzEndpoint) 
    {
        _disableInitializers();
    }

    /**
     * @notice Initialize the contract
     * @param _delegate Contract delegate address
     * @param _transferAllowedTimestamp Timestamp when transfers are allowed
     */
    function initialize(address _delegate, uint256 _transferAllowedTimestamp) public initializer {
        __OFTAdapter_init(_delegate);
        __Ownable_init(_delegate);
        
        // Set initial fee to 5 NODE tokens (5 * 10^18 wei)
        feePerTx = 5 ether;
        
        // Set transfer restrictions
        transferAllowedTimestamp = _transferAllowedTimestamp;
        whitelist[_delegate] = true;
    }

    /**
     * @notice Set the fee per transaction (only owner)
     * @param _newFee New fee amount in wei
     */
    function setFeePerTx(uint256 _newFee) external onlyOwner {
        uint256 oldFee = feePerTx;
        feePerTx = _newFee;
        emit TransferFeeUpdated(oldFee, _newFee);
    }

    /**
     * @notice Set transfer allowed timestamp (only owner)
     * @param _timestamp New timestamp
     */
    function setTransferAllowedTimestamp(uint256 _timestamp) external onlyOwner {
        transferAllowedTimestamp = _timestamp;
        emit NewTransferAllowedTimestamp(_timestamp);
    }

    /**
     * @notice Add address to whitelist (only owner)
     * @param _user Address to whitelist
     */
    function addToWhitelist(address _user) external onlyOwner {
        whitelist[_user] = true;
        emit WhitelistAdded(_user);
    }

    /**
     * @notice Remove address from whitelist (only owner)
     * @param _user Address to remove from whitelist
     */
    function removeFromWhitelist(address _user) external onlyOwner {
        whitelist[_user] = false;
        emit WhitelistRemoved(_user);
    }

    /**
     * @notice Override _debit to implement transfer fee
     * @param _from Address to debit tokens from
     * @param _amountLD Amount to debit in local decimals
     * @param _minAmountLD Minimum amount to debit
     * @param _dstEid Destination endpoint ID
     * @return amountSentLD Amount actually debited
     * @return amountReceivedLD Amount that will be received on destination
     */
    function _debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    ) internal override returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        // Check if amount is greater than fee
        if (_amountLD <= feePerTx) {
            revert Errors.AmountTooSmall();
        }

        // Calculate amount after fee deduction
        uint256 amountAfterFee = _amountLD - feePerTx;
        
        // Check minimum amount requirements upfront
        if (amountAfterFee < _minAmountLD) {
            revert Errors.CannotProcessMinAmount();
        }

        // Take the flat fee first
        innerToken.safeTransferFrom(_from, address(this), feePerTx);

        // Call parent logic to lock the remaining amount cross-chain
        (amountSentLD, amountReceivedLD) = super._debit(_from, amountAfterFee, _minAmountLD, _dstEid);

        return (amountSentLD, amountReceivedLD);
    }

    /**
     * @notice Override _credit to implement transfer restrictions on destination
     * @param _to Address to credit tokens to
     * @param _amountLD Amount to credit in local decimals
     * @param _srcEid Source endpoint ID
     * @return amountReceivedLD Amount actually received
     */
    function _credit(
        address _to,
        uint256 _amountLD,
        uint32 _srcEid
    ) internal override returns (uint256 amountReceivedLD) {
        // Apply transfer restrictions before crediting tokens
        if (block.timestamp < transferAllowedTimestamp) {
            if (!whitelist[_to]) {
                revert Errors.Unauthorized(); 
            }
        }
        
        // Call parent logic to transfer tokens
        return super._credit(_to, _amountLD, _srcEid);
    }

    /**
     * @notice Withdraw accumulated fees (only owner)
     * @param _to Address to send fees to
     */
    function withdrawFees(address _to) external onlyOwner {
        uint256 contractBalance = innerToken.balanceOf(address(this));
        if (contractBalance > 0) {
            innerToken.safeTransfer(_to, contractBalance);
        }
    }
}
