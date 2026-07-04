pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract ERC20BulkSender {
    using SafeERC20 for IERC20;

    function bulkTransfer(address token, address[] memory users, uint256[] memory amounts) external {
        if (users.length != amounts.length) revert ("array length mismatched");

        for(uint256 i = 0; i < users.length; ++i) {
            address user = users[i];
            uint256 amount = amounts[i];
            IERC20(token).safeTransferFrom(msg.sender, user, amount);
        }
    }
}