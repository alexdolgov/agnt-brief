// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import { IMintableBurnable } from "@layerzerolabs/oft-evm/contracts/interfaces/IMintableBurnable.sol";

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";


/**
 * @title BridgedUSDC
 */
contract BridgedUSDC is ERC20, IMintableBurnable, Ownable {
    address public masterMinter;
    mapping(address => bool) internal minters;

    event Mint(address indexed minter, address indexed to, uint256 amount);
    event Burn(address indexed burner, uint256 amount);
    event MinterConfigured(address indexed minter);
    event MinterRemoved(address indexed oldMinter);
    event MasterMinterChanged(address indexed newMasterMinter);


    /// @notice Constructor to initialize the ERC20 token with a name and symbol.
    constructor(string memory name, string memory symbol, address initialMasterMinter, address initialOwner) ERC20(name, symbol) Ownable(initialOwner) {
        require(
            initialMasterMinter != address(0),
            "USDC: initialMasterMinter is the zero address"
        );

        masterMinter = initialMasterMinter;
    }

    /**
     * @dev Throws if called by any account other than a minter.
     */
    modifier onlyMinters() {
        require(minters[msg.sender], "USDC: caller is not a minter");
        _;
    }

    /**
     * @dev Throws if called by any account other than the masterMinter
     */
    modifier onlyMasterMinter() {
        require(
            msg.sender == masterMinter,
            "USDC: caller is not the masterMinter"
        );
        _;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the default value returned by this function, unless
     * it's overridden.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual override returns (uint8) {
        return 6;
    }

    /**
     * @notice Checks if an account is a minter.
     * @param account The address to check.
     * @return True if the account is a minter, false if the account is not a minter.
     */
    function isMinter(address account) external view returns (bool) {
        return minters[account];
    }

    /**
     * @notice Adds or updates a new minter with a mint allowance.
     * @param minter The address of the minter.
     * @return True if the operation was successful.
     */
    function configureMinter(address minter)
        external
        onlyMasterMinter
        returns (bool)
    {
        minters[minter] = true;
        emit MinterConfigured(minter);
        return true;
    }

    /**
     * @notice Removes a minter.
     * @param minter The address of the minter to remove.
     * @return True if the operation was successful.
     */
    function removeMinter(address minter)
        external
        onlyMasterMinter
        returns (bool)
    {
        minters[minter] = false;
        emit MinterRemoved(minter);
        return true;
    }

    /**
     * @notice Updates the master minter address.
     * @param _newMasterMinter The address of the new master minter.
     */
    function updateMasterMinter(address _newMasterMinter) external onlyOwner {
        require(
            _newMasterMinter != address(0),
            "USDC: new masterMinter is the zero address"
        );
        masterMinter = _newMasterMinter;
        emit MasterMinterChanged(masterMinter);
    }

    /**
     * @notice Burns a specific amount of tokens from a given address.
     * 
     * @param _from The address from which tokens will be burned.
     * @param _amount The amount of tokens to burn.
     *
     * @return A boolean indicating the success of the burn operation.
     */
    function burn(address _from, uint256 _amount) external onlyMinters returns (bool) {
        _burn(_from, _amount);
        return true;
    }

    /**
     * @notice Mints a specific amount of tokens to a given address.
     *
     * @param _to The address to which tokens will be minted.
     * @param _amount The amount of tokens to mint.
     *
     * @return A boolean indicating the success of the mint operation.
     */
    function mint(address _to, uint256 _amount) external onlyMinters returns (bool) {
        _mint(_to, _amount);
        return true;
    }
}
