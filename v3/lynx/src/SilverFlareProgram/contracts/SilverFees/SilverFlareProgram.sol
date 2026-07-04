// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";

/// @title SilverFlareProgram
/// @author github.com/SifexPro
/// @notice This contract take care of the rewards for a future program
contract SilverFlareProgram is Ownable2Step {
    string public name;

	event WithdrawnToken(address indexed token, address indexed to, uint256 amount);

    constructor() Ownable(msg.sender) {
        name = "SilverSwap Flare Rewards Contract";
    }

	/**
	 * @dev Withdraws tokens from the contract (for future program)
	 */
	function withdrawToken(address _token, address _to) public onlyOwner {
		IERC20 token = IERC20(_token);
		uint256 balance = token.balanceOf(address(this));

		SafeERC20.safeTransfer(token, _to, balance);

		emit WithdrawnToken(_token, _to, balance);
	}
}