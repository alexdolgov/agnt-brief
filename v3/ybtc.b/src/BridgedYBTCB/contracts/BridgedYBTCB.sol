// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";


contract BridgedYBTCB is UUPSUpgradeable, Ownable2StepUpgradeable, ERC20PermitUpgradeable, ERC20BurnableUpgradeable {
    using EnumerableSet for EnumerableSet.AddressSet;

    /// @notice Addresses allowed to mint tokens
    EnumerableSet.AddressSet internal minters;

    /// @notice Addresses allowed to burn tokens
    EnumerableSet.AddressSet internal burners;

    /// @notice Event emitted when a minter is set
    event MinterSet(address account, bool enabled);

    /// @notice Event emitted when a burner is set
    event BurnerSet(address account, bool enabled);

    /**
     * @dev Modifier to restrict function access to minters.
     */
    modifier onlyMinter() {
        require(minters.contains(msg.sender), "only minter");
        _;
    }

    /**
     * @dev Modifier to restrict function access to burners.
     */
    modifier onlyBurner() {
        require(burners.contains(msg.sender), "only burner");
        _;
    }

    /**
     * @dev Constructor to initialize the YBTC token.
     */
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev initialize the YBTC token.
     * @param name_ Token name
     * @param symbol_ Token symbol
     * @param newOwner_ Address of the new owner
     */
    function initialize(
        string memory name_,
        string memory symbol_,
        address newOwner_
    ) public initializer {
        require(newOwner_ != address(0), "Invalid owner address");
        __UUPSUpgradeable_init();
        __Ownable2Step_init();
        __ERC20_init(name_, symbol_);
        __ERC20Permit_init(name_);
        __ERC20Burnable_init();
        _transferOwnership(newOwner_);
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    /**
     * @dev Grants or revokes minter role.
     * Only the contract owner can call this function.
     * @param minter Address to grant/revoke minter role
     * @param enabled True to grant, false to revoke
     */
    function setMinter(address minter, bool enabled) public onlyOwner {
        if (enabled) {
            minters.add(minter);
        } else {
            minters.remove(minter);
        }
        emit MinterSet(minter, enabled);
    }

    /**
     * @dev Grants or revokes burner role.
     * Only the contract owner can call this function.
     * @param burner Address to grant/revoke burner role
     * @param enabled True to grant, false to revoke
     */
    function setBurner(address burner, bool enabled) public onlyOwner {
        if (enabled) {
            burners.add(burner);
        } else {
            burners.remove(burner);
        }
        emit BurnerSet(burner, enabled);
    }

    /**
     * @dev Mints new tokens.
     * Can only be called by an authorized minter.
     * @param to Address to receive minted tokens
     * @param amount Amount of tokens to mint
     */
    function mint(address to, uint256 amount) public onlyMinter {
        _mint(to, amount);
    }

    /**
     * @dev Burns tokens from a given account.
     * Can only be called by an authorized burner.
     * @param account Address whose tokens will be burned
     * @param amount Amount of tokens to burn
     */
    function burn(address account, uint256 amount) public onlyBurner {
        _burn(account, amount);
    }

    /**
     * @dev Returns the list of minter addresses.
     * @return Array of addresses with minter privileges.
     */
    function getMinters() public view returns (address[] memory) {
        return minters.values();
    }

    /**
     * @dev Returns the minter address at the specified index.
     * @param index Index of the minter address to return
     * @return Address of the minter at the specified index
     */
    function getMinterByIndex(uint256 index) public view returns (address) {
        return minters.at(index);
    }

    /**
     * @dev Returns the number of minters.
     * @return Number of minters
     */
    function getMintersLength() public view returns (uint256) {
        return minters.length();
    }

    /**
     * @dev Returns the list of burner addresses.
     * @return Array of addresses with burner privileges.
     */
    function getBurners() public view returns (address[] memory) {
        return burners.values();
    }

    /**
     * @dev Returns the burner address at the specified index.
     * @param index Index of the burner address to return
     * @return Address of the burner at the specified index
     */
    function getBurnerByIndex(uint256 index) public view returns (address) {
        return burners.at(index);
    }

    /**
     * @dev Returns the number of burners.
     * @return Number of burners
     */
    function getBurnersLength() public view returns (uint256) {
        return burners.length();
    }

    /**
     * @dev Returns the number of decimal places of the token.
     */
    function decimals() public pure override returns (uint8) {
        return 8;
    }
}
