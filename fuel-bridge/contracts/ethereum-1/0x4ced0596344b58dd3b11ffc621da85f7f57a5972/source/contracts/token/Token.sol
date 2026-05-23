// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.24;

import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20VotesUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "./ERC1363Upgradeable.sol";

contract Token is
	Initializable,
	ERC20PermitUpgradeable,
	ERC20VotesUpgradeable,
	ERC1363Upgradeable,
	AccessControlUpgradeable,
	UUPSUpgradeable
{
	bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

	/// @custom:oz-upgrades-unsafe-allow constructor
	constructor() {
		_disableInitializers();
	}

	function initialize(
		string memory name,
		string memory symbol
	) external initializer {
		// ERC20VotesUpgradeable does not need initialisation
		// ERC1363Upgradeable does not need initialisation
		// AccessControlUpgradeable does not need initialisation

		__ERC20_init(name, symbol);
		__ERC20Permit_init(name);

		_grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
		_grantRole(MINTER_ROLE, _msgSender());
	}

	function mint(
		address to,
		uint256 value
	) external virtual onlyRole(MINTER_ROLE) {
		_mint(to, value);
	}

	function burn(uint value) public virtual {
		_burn(_msgSender(), value);
	}

	function decimals() public pure override returns(uint8) {
		return 9;
	}

	/**
	 * @dev needed to stablish the correct inheritance graph from this contract
	 * to ERC1363Upgradeable, AccessControlUpgradeable. The applied logic is
	 * that the contract supports an interface if it is implemented in either
	 * ERC1363 or AccessControl
	 * @inheritdoc IERC165
	 */
	function supportsInterface(
		bytes4 interfaceId
	)
		public
		view
		virtual
		override(ERC1363Upgradeable, AccessControlUpgradeable)
		returns (bool)
	{
		return
			ERC1363Upgradeable.supportsInterface(interfaceId) ||
			AccessControlUpgradeable.supportsInterface(interfaceId);
	}

	/**
	 * @dev needed to stablish the correct inheritance graph from this
	 * contract to ERC20PermitUpgradeable, NoncesUpgradeable
	 * `ERC20PermitUpgradeable` applies the vanilla
	 * `NoncesUpgradeable.nonces` logic and no other
	 * contract is performing custom logic
	 * over this function. ERC20PermitUpgradeable only overrides
	 * this function as part of its implementation of `IERC20Permit`.
	 * Thus the criteria here is to just use `NoncesUpgradeable.nonces` for the whole contract context.
	 * @inheritdoc NoncesUpgradeable
	 */
	function nonces(
		address owner
	)
		public
		view
		virtual
		override(ERC20PermitUpgradeable, NoncesUpgradeable)
		returns (uint256)
	{
		return NoncesUpgradeable.nonces(owner);
	}

	/**
	 * @dev needed to stablish the correct inheritance graph
	 * from this contract to ERC20VotesUpgradeable, ERC20Upgradeable
	 * `ERC20VotesUpgradeable._update` applies custom logic here and ends up
	 * calling `ERC20Upgradeable._update`. Should another implementation of
	 * `_update` be added to this contract through inheritance, it
	 * must be reviewed to make sure that it correctly executes
	 * `ERC20VotesUpgradeable._update` and
	 * `ERC20Upgradeable._update` accordingly.
	 * @inheritdoc ERC20VotesUpgradeable
	 */
	function _update(
		address from,
		address to,
		uint256 value
	) internal virtual override(ERC20VotesUpgradeable, ERC20Upgradeable) {
		ERC20VotesUpgradeable._update(from, to, value);
	}

	function _authorizeUpgrade(
		address newImplementation
	) internal virtual override onlyRole(DEFAULT_ADMIN_ROLE) {}

	uint256[50] __gap;
}
