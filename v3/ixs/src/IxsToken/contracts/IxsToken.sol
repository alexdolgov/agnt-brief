// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {ERC20BurnableUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import {ERC20PermitUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {ERC20PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PausableUpgradeable.sol";
import {IIxsTokenBurnable} from "./interfaces/IIxsTokenBurnable.sol";

address constant DEAD_ADDRESS = 0x000000000000000000000000000000000000dEaD;

contract IxsToken is
    IIxsTokenBurnable,
    Initializable,
    OwnableUpgradeable,
    AccessControlUpgradeable,
    ERC20Upgradeable,
    ERC20BurnableUpgradeable,
    ERC20PermitUpgradeable,
    ERC20PausableUpgradeable
{
    /// @dev keccak256("ADMIN_ROLE")
    bytes32 public constant ADMIN_ROLE = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775;

    /// @dev Error thrown when an invalid admin address is provided.
    error IxsTokenInvalidAdmin(address admin);

    /// @dev Error thrown when an unauthorized party attempts to access a function.
    error IxsTokenOnlyAuthorized(address caller);

    /// @notice Modifier to check if the caller is authorized to perform an action.
    /// @dev This modifier checks if the current caller is either the token contract owner or is an admin.
    modifier onlyAuthorized() {
        address caller = _msgSender();
        if (caller != owner() && !hasRole(ADMIN_ROLE, caller)) revert IxsTokenOnlyAuthorized(caller);
        _;
    }

    /**
     * This ensures that the contract is automatically locked when deployed,
     * preventing its use before initialization and safeguarding against unauthorized takeovers.
     */
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @dev Initialization function for configuring the logic and establishing initial values for state variables.
    /// @param name_ The name of the token.
    /// @param symbol_ The token symbol.
    /// @param owner_ The address of the token's owner wallet.
    /// @param admins The wallet addresses to be added as admins.
    function initialize(
        string memory name_,
        string memory symbol_,
        address owner_,
        address[] memory admins
    ) public initializer {
        // owner_ != address(0) check is done in OwnableUpgradeable
        if (owner_ == DEAD_ADDRESS) revert OwnableInvalidOwner(DEAD_ADDRESS);

        __Ownable_init(owner_);
        __AccessControl_init();
        __ERC20_init(name_, symbol_);
        __ERC20Permit_init(name_);
        __ERC20Pausable_init();
        __ERC20Burnable_init();

        _grantRole(DEFAULT_ADMIN_ROLE, owner_);

        uint256 length = admins.length;
        for (uint256 i = 0; i < length; ) {
            if (admins[i] == address(0) || admins[i] == DEAD_ADDRESS) revert IxsTokenInvalidAdmin(admins[i]);

            _grantRole(ADMIN_ROLE, admins[i]);
            unchecked {
                ++i;
            }
        }
    }

    /// @dev Triggers the pause state.
    function pause() external onlyOwner {
        _pause();
    }

    /// @dev Returns to the normal state.
    function unpause() external onlyOwner {
        _unpause();
    }

    /// @inheritdoc IIxsTokenBurnable
    function mint(address to, uint256 amount) public onlyAuthorized {
        _mint(to, amount);
    }

    /// @inheritdoc IIxsTokenBurnable
    function burn(address to, uint256 amount) public onlyAuthorized {
        _burn(to, amount);
    }

    /// @inheritdoc ERC20Upgradeable
    function _update(
        address _from,
        address _to,
        uint256 _value
    ) internal virtual override(ERC20Upgradeable, ERC20PausableUpgradeable) {
        super._update(_from, _to, _value);
    }
}
