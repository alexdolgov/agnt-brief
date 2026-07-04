// SPDX-License-Identifier: BUSL-1.1
// Licensor: Flashstake DAO
// Licensed Works: (this contract, source below)
// Change Date: The earlier of 2026-12-01 or a date specified by Flashstake DAO publicly
// Change License: GNU General Public License v2.0 or later
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract FTokenAccumulator is Ownable {
    using SafeERC20 for IERC20;

    address public exchangeTokenAddress;
    uint256 public constantExchangeAmount;

    address[] public disperseAddresses;
    uint256[] public dispersePercentages;
    uint256 public recipientAddressesCount;

    event ExchangeDetailsSet(address _exchangeTokenAddress, uint256 _constantExchangeAmount);
    event RecipientDetailsSet(address[] _disperseAddresses, uint256[] _dispersePercentages);

    constructor() {}

    /// @notice Allows anyone to purchase all of a single asset for a constant exchange amount
    /// @dev This can be called by anyone
    function accumulate(
        address[] calldata _tokenAddresses,
        address[] calldata _recipientAddresses,
        uint256[] calldata _minimumReceived
    ) external {
        require(_tokenAddresses.length == _recipientAddresses.length, "ARRAY LENGTH MISMATCH");
        require(_minimumReceived.length == _recipientAddresses.length, "ARRAY LENGTH MISMATCH");

        // Keep track of how many exchangeTokens the user needs to send
        uint256 exchangeTokenAmount = 0;

        // Iterate for each ERC20 token being accumulated
        for (uint256 i = 0; i < _tokenAddresses.length; i++) {
            require(_tokenAddresses[i] != exchangeTokenAddress, "INVALID TOKEN ADDRESS");

            // Determine how many tokens to send (and ensure minimum is met)
            uint256 totalBalance = IERC20(_tokenAddresses[i]).balanceOf(address(this));
            require(totalBalance >= _minimumReceived[i] && totalBalance > 0, "MINIMUM NOT MET");

            exchangeTokenAmount = exchangeTokenAmount + constantExchangeAmount;

            // Transfer the ERC20 to the destination address
            IERC20(_tokenAddresses[i]).safeTransfer(_recipientAddresses[i], totalBalance);
        }

        // Transfer the constant exchange amount per token (all in one go)
        IERC20(exchangeTokenAddress).safeTransferFrom(msg.sender, address(this), exchangeTokenAmount);

        disperse();
    }

    /// @notice Allows owner to withdraw any ERC20 token to a _recipient address - used for migrations
    /// @dev This can be called by the Owner only
    function withdrawERC20(address[] calldata _tokenAddresses, address _recipient) external onlyOwner {
        for (uint256 i = 0; i < _tokenAddresses.length; i++) {
            // Transfer all the tokens to the caller
            uint256 totalBalance = IERC20(_tokenAddresses[i]).balanceOf(address(this));
            IERC20(_tokenAddresses[i]).safeTransfer(_recipient, totalBalance);
        }
    }

    /// @notice Allows owner to update exchange details
    /// @dev This can be called by the Owner only
    function setExchangeDetails(address _exchangeTokenAddress, uint256 _constantExchangeAmount) external onlyOwner {
        exchangeTokenAddress = _exchangeTokenAddress;
        constantExchangeAmount = _constantExchangeAmount;

        emit ExchangeDetailsSet(_exchangeTokenAddress, _constantExchangeAmount);
    }

    /// @notice Allows owner to update exchange recipient addresses
    /// @dev This can be called by the Owner only
    function setDisperseInformation(address[] calldata _disperseAddresses, uint256[] calldata _dispersePercentages)
        external
        onlyOwner
    {
        require(_disperseAddresses.length == _dispersePercentages.length, "ARRAY LENGTH MISMATCH");

        // Sanity check to ensure percentages equal 10,000
        uint256 total;
        for (uint256 i = 0; i < _dispersePercentages.length; i++) {
            total = total + _dispersePercentages[i];
        }
        require(total == 10000, "INVALID INPUT PERCENTAGES");

        disperseAddresses = _disperseAddresses;
        dispersePercentages = _dispersePercentages;
        recipientAddressesCount = _disperseAddresses.length;

        emit RecipientDetailsSet(disperseAddresses, dispersePercentages);
    }

    /// @notice Disperses entire exchange token balance to recipientAddresses
    /// @dev This can only be called within this contract (by this contract)
    function disperse() private {
        if (disperseAddresses.length == 0) {
            return;
        }

        uint256 totalDispersalAmount = IERC20(exchangeTokenAddress).balanceOf(address(this));

        for (uint256 i = 0; i < disperseAddresses.length; i++) {
            uint256 disperseAmount = (totalDispersalAmount * dispersePercentages[i]) / 10000;

            IERC20(exchangeTokenAddress).transfer(disperseAddresses[i], disperseAmount);
        }
    }
}
