// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@layerzerolabs/solidity-examples/contracts/token/oft/v2/OFTV2.sol";

import "./utils/SafeMath.sol";
import "./interfaces/IPCT.sol";

/**
 * @title Wrapped version PCT for Anzen protocol. (DeFi Version)
 */

contract wPCT is OFTV2, Pausable {
    using SafeERC20 for ERC20;
    using SafeMath for uint256;

    ERC20 public pct;

    constructor(address _endpoint, ERC20 _pct) OFTV2("Wrapped PCT", "wPCT", 8, _endpoint) {
        pct = _pct;
    }

    /**
     * @notice Pause the contract. Revert if already paused.
     */
    function pause() external onlyOwner {
        _pause();
    }

    /**
     * @notice Unpause the contract. Revert if already unpaused.
     */
    function unpause() external onlyOwner {
        _unpause();
    }

    function _debitFrom(address _from, uint16 _dstChainId, bytes32 _toAddress, uint256 _amount)
        internal
        override
        whenNotPaused
        returns (uint256)
    {
        return super._debitFrom(_from, _dstChainId, _toAddress, _amount);
    }

    function _creditTo(uint16 _srcChainId, address _toAddress, uint256 _amount)
        internal
        override
        whenNotPaused
        returns (uint256)
    {
        return super._creditTo(_srcChainId, _toAddress, _amount);
    }

    /**
     * @notice Exchange rate.
     */
    function exchangeRate() external view returns (uint256) {
        return IPCT(address(pct)).getPooledSPCTByShares(1 ether);
    }

    /**
     * @notice Wrap PCT to wPCT.
     */
    function wrap(uint256 amount) external {
        uint256 wrapShares = IPCT(address(pct)).getSharesByPooledSPCT(amount);
        require(wrapShares > 0, "WRAP_SHARES_IS_ZERO");
        pct.safeTransferFrom(msg.sender, address(this), amount);
        _mint(msg.sender, wrapShares);
    }

    /**
     * @notice Unwrap wPCT to PCT.
     */
    function unwrap(uint256 share) external {
        uint256 unwrapAmount = IPCT(address(pct)).getPooledSPCTByShares(share);
        require(unwrapAmount > 0, "UNWRAP_AMOUNT_IS_ZERO");
        _burn(msg.sender, share);
        pct.safeTransfer(msg.sender, unwrapAmount);
    }

    /**
     * @notice Unwrap all wPCT
     */
    function unwrapAll() external {
        uint256 amount = balanceOf(msg.sender);
        uint256 unwrapAmount = IPCT(address(pct)).getPooledSPCTByShares(amount);
        require(unwrapAmount > 0, "UNWRAP_AMOUNT_IS_ZERO");
        _burn(msg.sender, amount);
        pct.safeTransfer(msg.sender, unwrapAmount);
    }

    /**
     * @notice Rescue ERC20 tokens locked up in this contract.
     * @param token ERC20 token contract address.
     * @param to recipient address.
     * @param amount amount to withdraw.
     */
    function rescueERC20(ERC20 token, address to, uint256 amount) external onlyOwner {
        // If is SPCT, check reserve usd amount first.
        if (address(token) == address(pct)) {
            require(amount <= totalSupply().sub(balanceOf(address(this))), "PCT_RESCUE_AMOUNT_EXCEED_DEBIT");
        }
        token.safeTransfer(to, amount);
    }
}
