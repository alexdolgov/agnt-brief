// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {ERC20BurnableUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import {ERC20PermitUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {IBurnMintERC20} from "./IBurnMintERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/**
 * @notice based upon https://github.com/smartcontractkit/ccip/blob/onchain-release/v1.1.0/contracts/src/v0.8/shared/token/ERC677/BurnMintERC677.sol
 */
contract gravETH_L2 is
    ERC20BurnableUpgradeable,
    ERC20PermitUpgradeable,
    IBurnMintERC20,
    IERC165,
    OwnableUpgradeable,
    UUPSUpgradeable
{
    using EnumerableSet for EnumerableSet.AddressSet;

    error SenderNotMinter(address sender);
    error SenderNotBurner(address sender);

    event MintAccessGranted(address indexed minter);
    event BurnAccessGranted(address indexed burner);
    event MintAccessRevoked(address indexed minter);
    event BurnAccessRevoked(address indexed burner);

    // @dev the allowed minter addresses
    EnumerableSet.AddressSet internal s_minters;
    // @dev the allowed burner addresses
    EnumerableSet.AddressSet internal s_burners;

    // ┌─────────────────────────────────────────────────────────────┐
    // | Initializer                                                 |
    // └─────────────────────────────────────────────────────────────┘

    /// @dev to prevent front-running, should be called on the same transaction as the deployment
    function initialize() external initializer {
        __ERC20Permit_init("Gravita Staked ETH");
        __ERC20_init("Gravita Staked ETH", "gravETH");
        __Ownable_init(msg.sender);
    }

    // ┌─────────────────────────────────────────────────────────────┐
    // | IERC165/introspection                                       |
    // └─────────────────────────────────────────────────────────────┘

    function supportsInterface(
        bytes4 interfaceId
    ) public pure virtual override returns (bool) {
        return
            interfaceId == type(IBurnMintERC20).interfaceId ||
            interfaceId == type(IERC20).interfaceId ||
            interfaceId == type(IERC165).interfaceId;
    }

    // ┌─────────────────────────────────────────────────────────────┐
    // | Burn/mint functions                                         |
    // └─────────────────────────────────────────────────────────────┘

    /// @inheritdoc ERC20BurnableUpgradeable
    /// @dev Uses OZ ERC20 _burn to disallow burning from address(0).
    function burn(
        uint256 amount
    ) public override(ERC20BurnableUpgradeable, IBurnMintERC20) onlyBurner {
        super.burn(amount);
    }

    /// @dev Uses burnFrom for all validation & logic.
    function burn(address account, uint256 amount) public virtual override {
        burnFrom(account, amount);
    }

    /// @inheritdoc ERC20BurnableUpgradeable
    function burnFrom(
        address account,
        uint256 amount
    ) public override(ERC20BurnableUpgradeable, IBurnMintERC20) onlyBurner {
        super.burnFrom(account, amount);
    }

    /// @dev Uses OZ ERC20 _mint to disallow minting to address(0).
    /// @dev Disallows minting to address(this)
    function mint(
        address account,
        uint256 amount
    ) external override onlyMinter validAddress(account) {
        _mint(account, amount);
    }

    // ┌─────────────────────────────────────────────────────────────┐
    // | Roles/granting                                              |
    // └─────────────────────────────────────────────────────────────┘

    /// @notice grants both mint and burn roles to `burnAndMinter`.
    /// @dev calls public functions so this function does not require
    /// access controls. This is handled in the inner functions.
    function grantMintAndBurnRoles(address burnAndMinter) external {
        grantMintRole(burnAndMinter);
        grantBurnRole(burnAndMinter);
    }

    /// @notice Grants mint role to the given address.
    /// @dev only the owner can call this function.
    function grantMintRole(address minter) public onlyOwner {
        if (s_minters.add(minter)) {
            emit MintAccessGranted(minter);
        }
    }

    /// @notice Grants burn role to the given address.
    /// @dev only the owner can call this function.
    function grantBurnRole(address burner) public onlyOwner {
        if (s_burners.add(burner)) {
            emit BurnAccessGranted(burner);
        }
    }

    /// @notice Revokes mint role for the given address.
    /// @dev only the owner can call this function.
    function revokeMintRole(address minter) public onlyOwner {
        if (s_minters.remove(minter)) {
            emit MintAccessRevoked(minter);
        }
    }

    /// @notice Revokes burn role from the given address.
    /// @dev only the owner can call this function.
    function revokeBurnRole(address burner) public onlyOwner {
        if (s_burners.remove(burner)) {
            emit BurnAccessRevoked(burner);
        }
    }

    /// @notice Returns all permissioned minters.
    function getMinters() public view returns (address[] memory) {
        return s_minters.values();
    }

    /// @notice Returns all permissioned burners.
    function getBurners() public view returns (address[] memory) {
        return s_burners.values();
    }

    // ┌─────────────────────────────────────────────────────────────┐
    // | Access control/modifiers                                    |
    // └─────────────────────────────────────────────────────────────┘

    /// @notice Checks whether a given address is a minter for this token.
    /// @return true if the address is allowed to mint.
    function isMinter(address minter) public view returns (bool) {
        return s_minters.contains(minter);
    }

    /// @notice Checks whether a given address is a burner for this token.
    /// @return true if the address is allowed to burn.
    function isBurner(address burner) public view returns (bool) {
        return s_burners.contains(burner);
    }

    /// @notice Checks whether the msg.sender is a permissioned minter for this token
    /// @dev Reverts with a SenderNotMinter if the check fails
    modifier onlyMinter() {
        if (!isMinter(msg.sender)) revert SenderNotMinter(msg.sender);
        _;
    }

    /// @notice Checks whether the msg.sender is a permissioned burner for this token
    /// @dev Reverts with a SenderNotBurner if the check fails
    modifier onlyBurner() {
        if (!isBurner(msg.sender)) revert SenderNotBurner(msg.sender);
        _;
    }

    /// @notice Check if recipient is valid (not this contract address).
    /// @param recipient the account we transfer/approve to.
    /// @dev Reverts with an empty revert to be compatible with the existing link token when
    /// the recipient is this contract address.
    modifier validAddress(address recipient) virtual {
        if (recipient == address(this)) revert();
        _;
    }

    // ┌─────────────────────────────────────────────────────────────┐
    // | Contract upgrade functions                                  |
    // └─────────────────────────────────────────────────────────────┘

    function authorizeUpgrade(address newImplementation) public {
        _authorizeUpgrade(newImplementation);
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}
}
