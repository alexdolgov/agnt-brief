// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ITopaz} from "./interfaces/ITopaz.sol";
import {IVotingEscrow} from "./interfaces/IVotingEscrow.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IBonusLockedDistributor} from "./interfaces/IBonusLockedDistributor.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract BonusLockedDistributor is IBonusLockedDistributor, Ownable {
    using SafeERC20 for ITopaz;

    /// @inheritdoc IBonusLockedDistributor
    ITopaz public immutable override topaz;
    /// @inheritdoc IBonusLockedDistributor
    IVotingEscrow public immutable override ve;

    constructor(address _ve) {
        ve = IVotingEscrow(_ve);
        topaz = ITopaz(IVotingEscrow(_ve).token());
    }

    /// @inheritdoc IBonusLockedDistributor
    function distributeTokens(address[] memory _wallets, uint256[] memory _amounts) external override onlyOwner {
        uint256 _len = _wallets.length;
        if (_len != _amounts.length) revert InvalidParams();

        uint256 _sum;
        for (uint256 i = 0; i < _len; i++) {
            _sum += _amounts[i];
        }

        if (_sum > topaz.balanceOf(address(this))) revert InsufficientBalance();

        topaz.safeIncreaseAllowance(address(ve), _sum);

        address _wallet;
        uint256 _amount;
        uint256 _tokenId;

        for (uint256 i = 0; i < _len; i++) {
            _wallet = _wallets[i];
            _amount = _amounts[i];
            _tokenId = ve.createLock(_amount, 1 weeks);
            ve.lockPermanent(_tokenId);
            ve.safeTransferFrom(address(this), _wallet, _tokenId);
            emit BonusDistributed(_wallet, _amount, _tokenId);
        }
    }

    /// @inheritdoc IBonusLockedDistributor
    function withdrawTopaz(address _recipient, uint256 _amount) external override onlyOwner {
        if (_recipient == address(0)) revert InvalidRecipient();
        topaz.safeTransfer(_recipient, _amount);
        emit Withdraw(_recipient, _amount);
    }
}
