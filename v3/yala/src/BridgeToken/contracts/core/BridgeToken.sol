// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

import "@layerzerolabs/oft-evm/contracts/OFT.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "../interfaces/IBridgeToken.sol";

/**
 * @notice BridgeToken contract
 */
contract BridgeToken is IBridgeToken, OFT, AccessControl, ERC20Permit, ERC20Pausable {
	/**
	 * @notice minter role
	 */
	bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

	/**
	 * @notice max supply
	 */
	uint256 public immutable CAP;

	constructor(string memory name, string memory symbol, uint256 _cap, address _lzEndpoint, address _delegate, address _admin, address _bridge) OFT(name, symbol, _lzEndpoint, _delegate) ERC20Permit(name) {
		_grantRole(DEFAULT_ADMIN_ROLE, _admin);
		_grantRole(MINTER_ROLE, _bridge);
		if (_cap > 0) {
			CAP = _cap;
		}
	}

	/**
	 * @dev pause mint and burn, only called by admin
	 */
	function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
		_pause();
	}

	/**
	 * @dev unpause mint and burn, only called by admin
	 */
	function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
		_unpause();
	}

	function mint(address to, uint256 amount) external override whenNotPaused onlyRole(MINTER_ROLE) {
		if (CAP > 0) {
			require(totalSupply() + amount <= CAP, "cap exceeded");
		}
		_mint(to, amount);
	}

	function burn(address from, uint256 amount) external override whenNotPaused onlyRole(MINTER_ROLE) {
		_burn(from, amount);
	}

	function _beforeTokenTransfer(address from, address to, uint256 amount) internal override(ERC20, ERC20Pausable) {
		ERC20Pausable._beforeTokenTransfer(from, to, amount);
	}
}
