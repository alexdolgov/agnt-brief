//SPDX-License-Identifier: BUSL-1.1
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

pragma solidity ^0.8.9;

library Harvester {
    /// -----------------------------------------------------------------------
    /// Public functions
    /// -----------------------------------------------------------------------

    /// @notice Triggers an ETH harvest
    /// @param recipient The address for the harvested ETH
    function harvestETH(address recipient) public returns (uint256) {
        require(recipient != address(0), "recipient can not be zero address");
        uint256 bal = address(this).balance;
        (bool sent, ) = recipient.call{value: bal}("");
        require(sent, "failed harvest");

        emit harvestedETH(recipient, bal);
        return bal;
    }

    /// @notice Triggers an ERC20 rescue
    /// @param erc20Addr The token address for the rescued ERC20
    function rescueERC20(address recipient, IERC20 erc20Addr)
        public
        returns (uint256)
    {
        require(recipient != address(0), "recipient can not be zero address");
        uint256 bal = erc20Addr.balanceOf(address(this));
        erc20Addr.transfer(recipient, bal);
        emit rescuedERC20(recipient, bal);
        return bal;
    }

    /// -----------------------------------------------------------------------
    /// Events
    /// -----------------------------------------------------------------------

    /// @notice Emitted when owner has assigned a new recipient for harvested ETH
    /// @param recipient The address receiving the harvested ETH
    event assignHarvestETHRecipient(address recipient);

    /// @notice Emitted when owner has assigned a new recipient for rescued ERC20
    /// @param recipient The address receiving the ERC20
    event assignRescueERC20Recipient(address recipient);

    /// @notice Emitted when someone has triggered an ETH harvest
    /// @param recipient The address receiving the harvested ETH
    /// @param value The amount of ETH
    event harvestedETH(address recipient, uint256 value);

    /// @notice Emitted when someone has triggered an ERC20 rescue
    /// @param recipient The address receiving the rescued ERC20
    /// @param value The amount of ERC20
    event rescuedERC20(address recipient, uint256 value);
}
