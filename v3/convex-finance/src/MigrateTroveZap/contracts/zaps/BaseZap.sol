// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;
import "contracts/utils/Address.sol";
import { Ownable } from "contracts/access/Ownable.sol";
import { Pausable } from "contracts/security/Pausable.sol";
import "contracts/token/ERC20/IERC20.sol";
import "contracts/token/ERC20/utils/SafeERC20.sol";

/**
    @title Base Zap
    @notice Abstract contract with common functions for Prisma Zaps
            for the same collateral.
 */
abstract contract BaseZap is Ownable, Pausable {
    using SafeERC20 for IERC20;
    using Address for address;

    event EmergencyEtherRecovered(uint256 amount);
    event EmergencyERC20Recovered(address tokenAddress, uint256 tokenAmount);

    // Admin routines ---------------------------------------------------------------------------------------------------

    /// @notice For emergencies if something gets stuck
    function recoverEther(uint256 amount) external onlyOwner {
        (bool success, ) = owner().call{ value: amount }("");
        require(success, "Invalid transfer");

        emit EmergencyEtherRecovered(amount);
    }

    /// @notice For emergencies if someone accidentally sent some ERC20 tokens here
    function recoverERC20(address tokenAddress, uint256 tokenAmount) external onlyOwner {
        IERC20(tokenAddress).safeTransfer(msg.sender, tokenAmount);

        emit EmergencyERC20Recovered(tokenAddress, tokenAmount);
    }

    function pause() external virtual whenNotPaused onlyOwner {
        _pause();
    }

    function unpause() external virtual whenPaused onlyOwner {
        _unpause();
    }

    receive() external payable {}
}
