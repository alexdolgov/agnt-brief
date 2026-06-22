// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { OFT } from "@layerzerolabs/oft-evm/contracts/OFT.sol";
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { ERC20Burnable } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import { ERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import { ERC20Votes } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { Pausable } from "@openzeppelin/contracts/utils/Pausable.sol";
import { Nonces } from "@openzeppelin/contracts/utils/Nonces.sol";

/**
 * █████╗  ███╗   ███╗ ██████╗  ███████╗ ██████╗ 
 * ██╔══██╗ ████╗ ████║ ██╔══██╗ ██╔════╝ ██╔══██╗
 * ███████║ ██╔████╔██║ ██████╔╝ █████╗   ██║  ██║
 * ██╔══██║ ██║╚██╔╝██║ ██╔═══╝  ██╔══╝   ██║  ██║
 * ██║  ██║ ██║ ╚═╝ ██║ ██║      ███████╗ ██████╔╝
 * ╚═╝  ╚═╝ ╚═╝     ╚═╝ ╚═╝      ╚══════╝ ╚═════╝ 
 * 
 * @title AmpedOFT
 * @dev OFT implementation for Amped Finance on remote chains with governance capabilities
 * No initial supply - tokens are bridged from the main chain
 * Implements ERC20Votes for governance delegation and ERC20Permit for gasless approvals
 */
contract AmpedOFT is OFT, ERC20Burnable, ERC20Permit, ERC20Votes, Pausable {
    
    /**
     * @dev Constructor to initialize the AMPED token on remote chains
     * @param _lzEndpoint LayerZero endpoint address
     * @param _delegate Address that can configure OApp settings
     */
    constructor(
        address _lzEndpoint,
        address _delegate
    ) 
        OFT("Amped Finance", "AMPED", _lzEndpoint, _delegate) 
        ERC20Permit("Amped Finance")
        Ownable(_delegate)
    {
        // No initial mint - tokens will be bridged from main chain
    }

    /**
     * @dev Pause token transfers (only owner)
     */
    function pause() external onlyOwner {
        _pause();
    }

    /**
     * @dev Unpause token transfers (only owner)
     */
    function unpause() external onlyOwner {
        _unpause();
    }

    // ============ Overrides ============

    /**
     * @dev Override _update for pausable and votes functionality
     */
    function _update(address from, address to, uint256 value) 
        internal 
        override(ERC20, ERC20Votes) 
        whenNotPaused 
    {
        super._update(from, to, value);
    }

    /**
     * @dev Override nonces for ERC20Permit
     */
    function nonces(address owner) 
        public 
        view 
        override(ERC20Permit, Nonces) 
        returns (uint256) 
    {
        return super.nonces(owner);
    }

    /**
     * @dev Override _debit for OFT functionality
     */
    function _debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 /*_dstEid*/
    ) internal override returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        if (_amountLD < _minAmountLD) {
            revert("Insufficient amount");
        }

        amountSentLD = _amountLD;
        amountReceivedLD = _amountLD;

        // Burn tokens for cross-chain transfer
        _burn(_from, amountSentLD);
    }

    /**
     * @dev Override _credit for OFT functionality
     */
    function _credit(
        address _to,
        uint256 _amountLD,
        uint32 /*_srcEid*/
    ) internal override returns (uint256 amountReceivedLD) {
        // Mint tokens from cross-chain transfer
        _mint(_to, _amountLD);
        return _amountLD;
    }
}