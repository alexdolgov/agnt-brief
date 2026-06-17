// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IAccessManager} from "../interfaces/IAccessManager.sol";
import {IMuToken} from "../interfaces/IMuToken.sol";
import {Errors} from "../commons/Errors.sol";

/**
 * @title MuBOND
 * @author Mu Digital
 * @notice The MuBOND token contract with minting and burning capabilities
 */
contract MuBOND is ERC20, IMuToken {
    /**
     * @notice Address of the access manager contract for role-based access control
     */
    address public accessManager;

    /**
     * @notice Address of the primary market contract - the only contract authorized to burn tokens
     */
    address public immutable PRIMARY_MARKET;

    /**
     * @notice Constructor that sets the access manager and primary market addresses
     * @param manager The address of the access manager
     * @param primaryMarket The address of the primary market contract
     * @param name The name of the token
     * @param symbol The symbol of the token
     */
    constructor(address manager, address primaryMarket, string memory name, string memory symbol) ERC20(name, symbol) {
        if (manager == address(0)) revert Errors.ZeroAddress();
        if (primaryMarket == address(0)) revert Errors.ZeroAddress();
        accessManager = manager;
        PRIMARY_MARKET = primaryMarket;
    }

    /**
     * @dev Modifier to restrict access to certain functions to the admin(MANAGER_MUBOND) role.
     **/
    modifier onlyAdmin() {
        if (!IAccessManager(accessManager).hasRole(keccak256("MANAGER_MUBOND"), _msgSender()))
            revert Errors.NotAuthorized();
        _;
    }

    /**
     * @dev Modifier to restrict access to certain functions to the minter role.
     **/
    modifier onlyMinter() {
        if (!IAccessManager(accessManager).hasRole(keccak256("TOKEN_MINTER_ROLE"), _msgSender()))
            revert Errors.NotMinter();
        _;
    }

    /**
     * @dev Modifier to restrict access to certain functions to the burner role.
     **/
    modifier onlyBurner() {
        if (_msgSender() != PRIMARY_MARKET) revert Errors.NotBurner();
        _;
    }

    /**
     * @notice Update the access manager address
     * @param manager The new access manager address
     */
    function setAccessManager(address manager) external onlyAdmin {
        if (manager == address(0)) revert Errors.ZeroAddress();
        accessManager = manager;

        emit AccessManagerUpdated(manager);
    }

    /**
     * @notice Mint function restricted to PrimaryMarket contract
     * @param receiver Address to receive the minted tokens
     * @param amount Amount of tokens to mint
     */
    function mint(address receiver, uint256 amount) external onlyMinter {
        _mint(receiver, amount);
    }

    /**
     * @notice Burn function restricted to PrimaryMarket contract
     * @param owner Address from which tokens will be burned
     * @param amount Amount of tokens to burn
     */
    function burn(address owner, uint256 amount) external onlyBurner {
        _burn(owner, amount);
    }
}
