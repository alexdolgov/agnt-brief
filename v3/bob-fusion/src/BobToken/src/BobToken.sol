// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import "./IBurnMintERC20.sol";
import "./IGetCCIPAdmin.sol";

contract BobToken is
    Initializable,
    ERC20BurnableUpgradeable,
    OwnableUpgradeable,
    ERC20PermitUpgradeable,
    UUPSUpgradeable,
    IBurnMintERC20,
    AccessControlUpgradeable,
    IGetCCIPAdmin
{
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    function initialize(address initialOwner) public initializer {
        __ERC20_init("BOB", "BOB");
        __Ownable_init(initialOwner);
        __ERC20Permit_init("BOB");
        __UUPSUpgradeable_init();

        i_maxSupply = 10000000000 * 10 ** decimals();
        s_ccipAdmin = initialOwner;
        _grantRole(DEFAULT_ADMIN_ROLE, initialOwner);
    }

    function useNonce() external returns (uint256) {
        return _useNonce(msg.sender);
    }

    error MaxSupplyExceeded(uint256 supplyAfterMint);
    error InvalidRecipient(address recipient);

    event CCIPAdminTransferred(address indexed previousAdmin, address indexed newAdmin);

    /// @dev The maximum supply of the token, 0 if unlimited
    uint256 internal i_maxSupply;

    /// @dev the CCIPAdmin can be used to register with the CCIP token admin registry, but has no other special powers,
    /// and can only be transferred by the owner.
    address internal s_ccipAdmin;

    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

    // ================================================================
    // │                      Burning & minting                       │
    // ================================================================

    /// @inheritdoc ERC20BurnableUpgradeable
    /// @dev Uses OZ ERC20 _burn to disallow burning from address(0).
    /// @dev Decreases the total supply.
    function burn(uint256 amount) public override(IBurnMintERC20, ERC20BurnableUpgradeable) onlyRole(BURNER_ROLE) {
        super.burn(amount);
    }

    /// @inheritdoc IBurnMintERC20
    /// @dev Alias for BurnFrom for compatibility with the older naming convention.
    /// @dev Uses burnFrom for all validation & logic.
    function burn(address account, uint256 amount) public virtual override {
        burnFrom(account, amount);
    }

    /// @inheritdoc ERC20BurnableUpgradeable
    /// @dev Uses OZ ERC20 _burn to disallow burning from address(0).
    /// @dev Decreases the total supply.
    function burnFrom(address account, uint256 amount)
        public
        override(IBurnMintERC20, ERC20BurnableUpgradeable)
        onlyRole(BURNER_ROLE)
    {
        super.burnFrom(account, amount);
    }

    /// @inheritdoc IBurnMintERC20
    /// @dev Uses OZ ERC20 _mint to disallow minting to address(0).
    /// @dev Disallows minting to address(this)
    /// @dev Increases the total supply.
    function mint(address account, uint256 amount) external override onlyRole(MINTER_ROLE) {
        if (account == address(this)) revert InvalidRecipient(account);
        if (i_maxSupply != 0 && totalSupply() + amount > i_maxSupply) {
            revert MaxSupplyExceeded(totalSupply() + amount);
        }

        _mint(account, amount);
    }

    // ================================================================
    // │                            Roles                             │
    // ================================================================

    /// @notice grants both mint and burn roles to `burnAndMinter`.
    /// @dev calls public functions so this function does not require
    /// access controls. This is handled in the inner functions.
    function grantMintAndBurnRoles(address burnAndMinter) external {
        grantRole(MINTER_ROLE, burnAndMinter);
        grantRole(BURNER_ROLE, burnAndMinter);
    }

    /// @notice revokes both mint and burn roles from `burnAndMinter`.
    /// @dev calls public functions so this function does not require
    /// access controls. This is handled in the inner functions.
    function revokeMintAndBurnRoles(address burnAndMinter) external {
        revokeRole(MINTER_ROLE, burnAndMinter);
        revokeRole(BURNER_ROLE, burnAndMinter);
    }

    /// @notice Returns the current CCIPAdmin
    function getCCIPAdmin() external view returns (address) {
        return s_ccipAdmin;
    }

    /// @notice Transfers the CCIPAdmin role to a new address
    /// @dev only the owner can call this function, NOT the current ccipAdmin, and 1-step ownership transfer is used.
    /// @param newAdmin The address to transfer the CCIPAdmin role to. Setting to address(0) is a valid way to revoke
    /// the role
    function setCCIPAdmin(address newAdmin) public onlyRole(DEFAULT_ADMIN_ROLE) {
        address currentAdmin = s_ccipAdmin;

        s_ccipAdmin = newAdmin;

        emit CCIPAdminTransferred(currentAdmin, newAdmin);
    }
}
