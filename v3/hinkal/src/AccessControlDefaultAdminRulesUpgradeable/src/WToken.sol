// SPDX-License-Identifier: Apache 2
pragma solidity >=0.8.8 <0.9.0;

import {AccessControlDefaultAdminRulesUpgradeable} from
    "openzeppelin-contracts-upgradeable/contracts/access/extensions/AccessControlDefaultAdminRulesUpgradeable.sol";
import {ERC20Upgradeable} from
    "openzeppelin-contracts-upgradeable/contracts/token/ERC20/ERC20Upgradeable.sol";
import {ERC20BurnableUpgradeable} from
    "openzeppelin-contracts-upgradeable/contracts/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import {ERC20PermitUpgradeable} from
    "openzeppelin-contracts-upgradeable/contracts/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {ERC20VotesUpgradeable} from
    "openzeppelin-contracts-upgradeable/contracts/token/ERC20/extensions/ERC20VotesUpgradeable.sol";
import {NoncesUpgradeable} from
    "openzeppelin-contracts-upgradeable/contracts/utils/NoncesUpgradeable.sol";
import {VotesUpgradeable} from
    "openzeppelin-contracts-upgradeable/contracts/governance/utils/VotesUpgradeable.sol";
import {Time} from "@openzeppelin/contracts/utils/types/Time.sol";
import "src/INTTToken.sol";
import {UUPSUpgradeable} from
    "openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";

/// @title WToken
/// @notice A UUPS upgradeable governance token with access controlled minting and burning.
contract WToken is
    INTTToken,
    UUPSUpgradeable,
    ERC20Upgradeable,
    ERC20PermitUpgradeable,
    ERC20VotesUpgradeable,
    ERC20BurnableUpgradeable,
    AccessControlDefaultAdminRulesUpgradeable
{
    /// @notice The max supply allowed on a specific chain.
    uint256 public constant MAX_SUPPLY = 10_000_000_000e18;

    /// @notice The unique identifier constant used to represent the minter role.
    /// An address that has this role may call the `mint` method, creating new tokens and assigning them
    /// to a specified address. This role may be granted or revoked by the DEFAULT_ADMIN_ROLE.
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    /// @notice The unique identifier constant used to represent burner role.
    /// An address that has this role may call the `burn` method to burn tokens held by the address. This role may
    /// be granted or revoked by the DEFAULT_ADMIN_ROLE.
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

    /// @notice The unique identifier constant used to represent set delegate role.
    /// An address that has this role may call the `setDelegate` method, to delegate tokens held by a smart contract
    /// to a specified address for voting. This role may be granted or revoked by the DEFAULT_ADMIN_ROLE.
    bytes32 public constant SET_DELEGATE_ROLE = keccak256("SET_DELEGATE_ROLE");

    bytes32 public constant MINTER_AND_BURNER_ADMIN = keccak256("MINTER_AND_BURNER_ADMIN");

    /// @dev An error thrown when a method is not implemented.
    error UnimplementedMethod();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice A one-time configuration method meant to be called immediately upon the deployment of `WToken`. It sets
    /// up the token's name, symbol, initial access roles, and admin change delay.
    function initialize(
        string memory _name,
        string memory _symbol,
        address _minterAndBurnerAdmin,
        address _owner,
        uint48 _adminChangeDelay
    ) external initializer {
        // OpenZeppelin upgradeable contracts documentation says:
        //
        // "Use with multiple inheritance requires special care. Initializer
        // functions are not linearized by the compiler like constructors.
        // Because of this, each __{ContractName}_init function embeds the
        // linearized calls to all parent initializers. As a consequence,
        // calling two of these init functions can potentially initialize the
        // same contract twice."
        //
        // Note that ERC20 extensions do not linearize calls to ERC20Upgradeable
        // initializer so we call all extension initializers individually. At
        // the same time, ERC20PermitUpgradeable does linearize the call to
        // EIP712Upgradeable so we are not using the unchained initializer
        // versions.
        __ERC20_init(_name, _symbol);
        __ERC20Permit_init(_name);
        __AccessControlDefaultAdminRules_init(_adminChangeDelay, _owner);

        // These initializers don't do anything, so we won't call them
        // __Nonces_init();
        // __ERC20Burnable_init();
        // __ERC20Votes_init();

        _grantRole(MINTER_AND_BURNER_ADMIN, _minterAndBurnerAdmin);
        _grantRole(SET_DELEGATE_ROLE, _owner);
    }

    /// @notice A function to grant both the minter and burner role at the same time.
    /// @param _minterAndBurner The address to add as both a minter and burner.
    function grantMinterAndBurner(address _minterAndBurner) external {
        _checkRole(MINTER_AND_BURNER_ADMIN);
        _grantRole(MINTER_ROLE, _minterAndBurner);
        _grantRole(BURNER_ROLE, _minterAndBurner);
    }

    /// @inheritdoc VotesUpgradeable
    /// @dev Overriding this function to use a timestamp based clock.
    function clock() public view virtual override returns (uint48) {
        return Time.timestamp();
    }

    /// @inheritdoc VotesUpgradeable
    /// @dev Overriding this function to use a timestamp based clock mode.
    function CLOCK_MODE() public view virtual override returns (string memory) {
        // Check that the clock was not modified
        if (clock() != Time.timestamp()) {
            revert VotesUpgradeable.ERC6372InconsistentClock();
        }
        return "mode=timestamp";
    }

    /// @notice A function that will burn tokens held by the `msg.sender`.
    /// @param _value The amount of tokens to be burned.
    function burn(uint256 _value) public override(INTTToken, ERC20BurnableUpgradeable) {
        _checkRole(BURNER_ROLE);
        ERC20BurnableUpgradeable.burn(_value);
    }

    /// @notice This method is not implemented and should not be called.
    function burnFrom(address, uint256) public pure override {
        revert UnimplementedMethod();
    }

    /// @notice A function that mints new tokens to a specific account. If the account does not
    /// currently have a delegate then the account will delegate to itself.
    /// @param _account The address where new tokens will be minted.
    /// @param _amount The amount of new tokens that will be minted.
    function mint(address _account, uint256 _amount) external {
        _checkRole(MINTER_ROLE);
        _mint(_account, _amount);
        // Enable auto-delegation to recipient on token mint if no delegate is set
        if (delegates(_account) == address(0)) {
            _delegate(_account, _account);
        }
    }

    /// @notice A function that allows an address with the `SET_DELEGATE_ROLE` to change an account's delegate.
    /// This function provides governance with the option to delegate tokens that are locked in smart contracts
    /// @param _account The account for which to set the delegate.
    /// @param _delegatee The address of the new delegate.
    function setDelegate(address _account, address _delegatee) external {
        _checkRole(SET_DELEGATE_ROLE);
        _delegate(_account, _delegatee);
    }

    /// @inheritdoc ERC20VotesUpgradeable
    /// @dev Overriding this function to set a new maximum possible token supply on a chain.
    function _maxSupply() internal pure override returns (uint256) {
        return MAX_SUPPLY;
    }

    /// @inheritdoc ERC20PermitUpgradeable
    /// @dev Overriding this function to resolve ambiguity in the inheritance hierarchy.
    function nonces(address _owner)
        public
        view
        override(ERC20PermitUpgradeable, NoncesUpgradeable)
        returns (uint256)
    {
        // The ERC20PermitUpgradeable and NoncesUpgradeable nonces methods are effectively the same, so we can call either one.
        return NoncesUpgradeable.nonces(_owner);
    }

    /// @inheritdoc ERC20VotesUpgradeable
    /// @dev Overriding this function to resolve ambiguity in the inheritance hierarchy.
    function _update(
        address _from,
        address _to,
        uint256 _value
    ) internal override(ERC20Upgradeable, ERC20VotesUpgradeable) {
        // The ERC20VotesUpgradeable _update method wraps the ERC20Upgradeable _update with a supply check and vote weight transfer.
        ERC20VotesUpgradeable._update(_from, _to, _value);
    }

    function _authorizeUpgrade(address /* newImplementation */ ) internal view override {
        _checkRole(DEFAULT_ADMIN_ROLE);
    }
}
