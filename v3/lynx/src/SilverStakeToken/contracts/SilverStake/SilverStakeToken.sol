// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";

interface SilverStakeTransfer {
	function notifyTokenTransfer(address from, address to, uint256 amount) external;
}

/**
 * @title SilverStakeToken
 * @author github.com/SifexPro
 * @notice A contract for the $AGS token, used for staking and governance
 * @dev This token is minted when users stake native tokens and burned when they unstake
 */
contract SilverStakeToken is ERC20, Ownable2Step {
	// ============ Events ============
	event TokensMinted(address indexed to, uint256 amount);
	event TokensBurned(address indexed from, uint256 amount);

	// ============ Constructor ============
	constructor() ERC20("SilverSonic", "agS") Ownable(msg.sender) {}

	/**
	 * @notice Mint $AGS tokens
	 * @dev Only callable by the owner (SilverStake contract)
	 * @param _amount The amount of $AGS to mint
	 */
	function mint(uint256 _amount) public onlyOwner {
		_mint(owner(), _amount);
		emit TokensMinted(owner(), _amount);
	}

	/**
	 * @notice Burn $AGS tokens
	 * @dev Only callable by the owner (SilverStake contract)
	 * @param _amount The amount of $AGS to burn
	 */
	function burn(uint256 _amount) public onlyOwner {
		_burn(owner(), _amount);
		emit TokensBurned(owner(), _amount);
	}
	
	/**
	 * @notice Override _update to track token transfers and maintain vesting info
	 * @dev Called on every transfer(), transferFrom(), mint(), and burn()
	 * @param from The sender address
	 * @param to The recipient address
	 * @param amount The amount of tokens transferred
	 */
	function _update(
		address from,
		address to,
		uint256 amount
	) internal override {
		super._update(from, to, amount);
		
		// if not a mint or a burn
		if (from != address(0) && to != address(0)) {
			SilverStakeTransfer(owner()).notifyTokenTransfer(from, to, amount);
		}
	}
}