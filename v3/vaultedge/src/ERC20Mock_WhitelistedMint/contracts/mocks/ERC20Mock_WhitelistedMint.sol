// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";

/// @dev NOT FOR PRODUCTION USE
contract ERC20Mock_WhitelistedMint is ERC20, AccessControlEnumerable {
    /// -----------------------------------------------------------------------
    /// Storage variables
    /// -----------------------------------------------------------------------

    /// @notice The maximum amount that can be minted per transaction in standard format
    uint256 public constant DEFAULT_MINT_AMOUNT = 1e4;

    /// @notice The role that can mint tokens
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    /// @notice The number of decimals the token uses
    uint8 private immutable __decimals;

    /// -----------------------------------------------------------------------
    /// Constructor
    /// -----------------------------------------------------------------------

    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals,
        address _admin,
        address[] memory _minters
    ) ERC20(_name, _symbol) {
        require(_decimals <= 18, "ERC20Mock_WhitelistedMint: decimals must be <= 18");
        __decimals = _decimals;
        _setRoleAdmin(DEFAULT_ADMIN_ROLE, MINTER_ROLE);
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        for (uint256 i = 0; i < _minters.length; i++) {
            _grantRole(MINTER_ROLE, _minters[i]);
        }
    }

    function decimals() public view virtual override returns (uint8) {
        return __decimals;
    }

    function _getDefaultMintAmount() internal view returns (uint256) {
        return DEFAULT_MINT_AMOUNT * 10 ** __decimals;
    }

    /// -----------------------------------------------------------------------
    /// Minting
    /// -----------------------------------------------------------------------

    /// @notice Mint the specified amount to the caller
    function mint(uint256 amount) public onlyRole(MINTER_ROLE) {
        _mint(msg.sender, amount);
    }

    /// @notice Mint the default amount to the caller
    function mintDefaultAmount() public onlyRole(MINTER_ROLE) {
        _mint(msg.sender, _getDefaultMintAmount());
    }

    /// @notice Mint the specified amount to an account
    function mintTo(address account, uint256 amount) public onlyRole(MINTER_ROLE) {
        _mint(account, amount);
    }

    /// @notice Mint the default amount to an account
    function mintDefaultAmountTo(address account) public onlyRole(MINTER_ROLE) {
        _mint(account, _getDefaultMintAmount());
    }

    /// -----------------------------------------------------------------------
    /// Burning - Open Access
    /// -----------------------------------------------------------------------

    function burn(address account, uint256 amount) public {
        _burn(account, amount);
    }
}
