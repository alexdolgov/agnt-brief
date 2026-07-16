//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import "./libraries/SafeToken.sol";
import "./interfaces/IClaimable.sol";

contract RewardHolder is IClaimable, OwnableUpgradeable {
    using SafeToken for address;

    struct Reward {
        uint256 addTime;
        uint256 amount;
    }

    event RecipientUpdate(address oldRecipient, address newRecipient);

    // guy who can claim
    address public recipient;

    mapping(address => Reward) public lastRewards;

    function initialize() public initializer {
        __Ownable_init();
    }

    /** Admin Functions */
    function _setRecipient(address newRecipient) public onlyOwner {
        require(
            newRecipient != address(0),
            "RewardHolder: recipient cannot be zero"
        );

        address oldRecipient = recipient;
        recipient = newRecipient;
        emit RecipientUpdate(oldRecipient, newRecipient);
    }

    function claim(address token) public returns (uint256 amount) {
        require(
            _msgSender() == recipient,
            "RewardHolder: only recipient can claim"
        );

        amount = token.balanceOf(address(this));
        if (amount > 0) {
            token.safeTransfer(_msgSender(), amount);
            emit Claim(token, _msgSender(), amount);
        }
    }

    function addRewards(uint256 amount, address token) public onlyOwner {
        if (amount > 0) {
            if (amount == type(uint256).max) {
                amount = token.balanceOf(msg.sender);
            }

            token.safeTransferFrom(msg.sender, address(this), amount);
            lastRewards[address(token)].amount += amount;
            lastRewards[address(token)].addTime = block.timestamp;

        }
    }
}
