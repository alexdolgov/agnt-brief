// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.8.17;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract MultiTransfers {
    /// @dev Ethers are sent together to multiple destinations
    function transfersEther(
        address payable[] calldata _recipients,
        uint256[] calldata _values
    ) public payable {
        bool success;
        uint256 length = _recipients.length;
        for (uint256 i; i < length; ) {
            (success, ) = _recipients[i].call{value: _values[i]}("");
            require(success, "Failed to send Ether");
            unchecked {
                ++i;
            }
        }
        uint256 balance = address(this).balance;
        if (balance > 0) {
            (success, ) = payable(msg.sender).call{value: balance}("");
            require(success, "Failed to send Ether");
        }
    }

    /// @dev Multiple ERC20 Tokens are transferred to multiple destinations
    function transfersERC20Token(
        address[] calldata _tokens,
        address[] calldata _recipients,
        uint256[] calldata _amounts
    ) public {
        require(
            _tokens.length == _recipients.length &&
                _recipients.length == _amounts.length,
            "Length mismatch"
        );

        uint256 length = _tokens.length;
        for (uint256 i; i < length; ) {
            require(
                IERC20(_tokens[i]).transferFrom(
                    msg.sender,
                    _recipients[i],
                    _amounts[i]
                ),
                "ERC20 transfer failed"
            );
            unchecked {
                ++i;
            }
        }
    }

    /// @dev Ethers and multiple ERC20 Tokens are transferred together to multiple destinations
    function transfersEtherAndERC20Token(
        address payable[] calldata _etherRecipients,
        uint256[] calldata _etherValues,
        address[] calldata _tokens,
        address[] calldata _tokenRecipients,
        uint256[] calldata _tokenAmounts
    ) public payable {
        transfersEther(_etherRecipients, _etherValues);
        transfersERC20Token(_tokens, _tokenRecipients, _tokenAmounts);
    }
}
