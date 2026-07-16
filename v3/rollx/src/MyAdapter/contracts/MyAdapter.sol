// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { OFTAdapter } from "@layerzerolabs/oft-evm/contracts/OFTAdapter.sol";

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
contract MyAdapter is OFTAdapter {
    using SafeERC20 for IERC20;

    bool public bridgingEnabled;
    mapping(address => bool) public whitelist;

    event BridgingEnabled(bool enabled);
    event WhitelistUpdated(address[] accounts, bool status);
    event EmergencyWithdraw(address indexed to, uint256 amount);

    error BridgingDisabled();

    constructor(
        address _token,
        address _lzEndpoint,
        address _delegate
    ) OFTAdapter(_token, _lzEndpoint, _delegate) Ownable(_delegate) {}

    /// @notice Admin toggles the cross-chain bridge on or off.
    function setBridgingEnabled(bool _enabled) external onlyOwner {
        bridgingEnabled = _enabled;
        emit BridgingEnabled(_enabled);
    }

    /// @notice Admin sets a batch of addresses to whitelisted or not.
    function setWhitelist(address[] calldata _accounts, bool _status) external onlyOwner {
        for (uint256 i = 0; i < _accounts.length; ++i) {
            whitelist[_accounts[i]] = _status;
        }
        emit WhitelistUpdated(_accounts, _status);
    }

    /// @dev Override _debit to enforce bridging guard; whitelist addresses bypass the check.
    function _debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    ) internal virtual override returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        if (!bridgingEnabled && !whitelist[_from]) revert BridgingDisabled();
        return super._debit(_from, _amountLD, _minAmountLD, _dstEid);
    }

    /// @notice Emergency withdrawal of any ERC20 token held by this contract.
    /// @param _token  Token address to withdraw. Pass address(innerToken) to withdraw the locked OFT token.
    /// @param _to     Recipient address.
    /// @param _amount Amount to withdraw. Pass 0 to withdraw the entire balance.
    function emergencyWithdraw(address _token, address _to, uint256 _amount) external onlyOwner {
        require(_to != address(0), "MyAdapter: zero address");
        uint256 amount = _amount == 0 ? IERC20(_token).balanceOf(address(this)) : _amount;
        IERC20(_token).safeTransfer(_to, amount);
        emit EmergencyWithdraw(_to, amount);
    }
}
